import "dart:async";

import "package:solvro_translator_core/solvro_translator_core.dart"
    show RemoteTranslatableManager, SolvroLocale, md5Hash;

import "../remote-single/translation_response.dart";
import "batch_translation_config.dart";
import "batched_remote_repository.dart";
import "translation_batch_response.dart";

/// A pending translation request with its completer.
class _PendingRequest {
  final String text;
  final SolvroLocale from;
  final SolvroLocale to;
  final Completer<RemoteTranslationResponse> completer;

  _PendingRequest({required this.text, required this.from, required this.to, required this.completer});
}

/// Service for batch translations with smart batching.
///
/// This service automatically batches translation requests to reduce
/// network overhead. It uses debouncing to collect requests within a time
/// window and sends them as a single batch to the API.
///
/// The batching is fully transparent to the caller.
///
/// Features:
/// - Debounced batching (configurable, default 100ms)
/// - Maximum batch size limit (configurable, default 100)
/// - Deduplication of identical requests
/// - Per-locale batching (separate batches per target language)
/// - Automatic fallback to individual requests if batching is disabled
class BatchedRemoteTranslationsService extends RemoteTranslatableManager<RemoteTranslationResponse> {
  final BatchedRemoteTranslationsRepository _repository;
  final BatchTranslationConfig _config;

  // Queue of pending requests per target locale
  final Map<SolvroLocale, List<_PendingRequest>> _queues = {};

  // Track in-flight requests to avoid duplicates
  final Map<String, Future<RemoteTranslationResponse>> _inFlight = {};

  // Debounce timer
  Timer? _debounceTimer;

  /// Creates a new [BatchedRemoteTranslationsService].
  ///
  /// The [_repository] parameter provides access to the batch translation API.
  /// The [config] parameter controls batching behavior.
  BatchedRemoteTranslationsService(this._repository, {BatchTranslationConfig? config})
    : _config = config ?? BatchTranslationConfig.defaultConfig;

  /// Returns a unique key for a translation request.
  String _requestKey(String text, SolvroLocale from, SolvroLocale to) {
    return md5Hash("${from.name}->${to.name}:::$text");
  }

  @override
  Future<RemoteTranslationResponse> translate(String originalText, SolvroLocale from, SolvroLocale to) async {
    // Return immediately if same locale or empty text
    if (from == to || originalText.trim().isEmpty) {
      return RemoteTranslationResponse(
        originalText: originalText,
        translatedText: originalText,
        originalLanguageCode: from.name,
        translatedLanguageCode: to.name,
        isApproved: true,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
    }

    // If batching is disabled, use the single endpoint
    if (!_config.enabled) {
      throw UnsupportedError(
        "Batching is disabled. Use the single endpoint repository instead. This should never happen.",
      );
    }

    final key = _requestKey(originalText, from, to);

    // Return existing in-flight request if available
    if (_inFlight.containsKey(key)) {
      return _inFlight[key]!;
    }

    // Create a new pending request
    final completer = Completer<RemoteTranslationResponse>();
    final pendingRequest = _PendingRequest(text: originalText, from: from, to: to, completer: completer);

    // Add to queue for the target locale
    _queues.putIfAbsent(to, () => []);
    _queues[to]!.add(pendingRequest);

    // Track as in-flight
    _inFlight[key] = completer.future;

    // Clean up in-flight tracking when complete
    unawaited(
      completer.future.whenComplete(() {
        unawaited(_inFlight.remove(key));
      }),
    );

    // Schedule batch flush
    _scheduleFlush();

    // Flush immediately if we've reached max batch size
    final queueSize = _queues[to]!.length;
    if (queueSize >= _config.maxBatchSize) {
      unawaited(_flushAll());
    }

    return completer.future;
  }

  /// Schedules a debounced flush of all queues.
  void _scheduleFlush() {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(_config.debounceDuration, _flushAll);
  }

  /// Flushes all pending queues by sending batch requests.
  Future<void> _flushAll() async {
    _debounceTimer?.cancel();
    _debounceTimer = null;

    // Process each locale queue separately
    final futures = <Future<void>>[];
    for (final entry in _queues.entries) {
      if (entry.value.isNotEmpty) {
        final queue = List<_PendingRequest>.from(entry.value);
        entry.value.clear();
        futures.add(_flushQueue(queue, entry.key));
      }
    }

    await Future.wait(futures);
  }

  /// Flushes a single locale queue.
  Future<void> _flushQueue(List<_PendingRequest> queue, SolvroLocale to) async {
    if (queue.isEmpty) return;

    // Group by source locale (should all be the same in practice)
    final bySource = <SolvroLocale, List<_PendingRequest>>{};
    for (final req in queue) {
      bySource.putIfAbsent(req.from, () => []);
      bySource[req.from]!.add(req);
    }

    // Process each source locale group
    for (final sourceEntry in bySource.entries) {
      final requests = sourceEntry.value;
      final from = sourceEntry.key;

      // Extract unique texts (deduplication within batch)
      final texts = requests.map((r) => r.text).toSet().toList();

      try {
        final response = await _repository.sendBatchRequest(texts, from, to);

        // Map results back to completers
        final resultMap = <String, BatchTranslationResult>{};
        for (final result in response.translations) {
          resultMap[result.originalText] = result;
        }

        // Complete all pending requests
        for (final req in requests) {
          final result = resultMap[req.text];

          if (result != null && result.success && result.translation != null) {
            final translation = RemoteTranslationResponse(
              originalText: result.originalText,
              translatedText: result.translation!.translatedText,
              originalLanguageCode: result.translation!.originalLanguageCode,
              translatedLanguageCode: result.translation!.translatedLanguageCode,
              isApproved: result.translation!.isApproved,
              createdAt: result.translation!.createdAt,
              updatedAt: result.translation!.updatedAt,
            );
            req.completer.complete(translation);
          } else {
            req.completer.completeError(
              result?.error ??
                  "Missing translation in batch mode response for: '${req.text.length > 100 ? '${req.text.substring(0, 100)}...' : req.text}'",
            );
          }
        }
      } on Exception catch (e) {
        for (final req in requests) {
          req.completer.completeError(e);
        }
      }
    }
  }

  /// Forces an immediate flush of all pending translations.
  ///
  /// This can be called when the app is being paused or closed
  /// to ensure no translations are lost.
  Future<void> flush() async {
    if (_debounceTimer != null || _queues.values.any((q) => q.isNotEmpty)) {
      await _flushAll();
    }
  }

  /// Disposes the service and cancels any pending timers.
  void dispose() {
    _debounceTimer?.cancel();
    _debounceTimer = null;
  }
}
