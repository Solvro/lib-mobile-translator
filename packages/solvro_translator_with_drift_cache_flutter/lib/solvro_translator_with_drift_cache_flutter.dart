import "package:dio/dio.dart";
import "package:solvro_translator_core/solvro_translator_core.dart";

import "local/local_data_source.dart";
import "local/local_model.dart";
import "local/local_repository.dart";
import "remote-batch/batch_translation_config.dart";
import "remote-batch/batched_remote_repository.dart";
import "remote-batch/batched_remote_service.dart";
import "remote-single/remote_repository.dart";
import "remote-single/translation_response.dart";

export "remote-batch/batch_translation_config.dart";
export "remote-batch/batched_remote_repository.dart";
export "remote-batch/batched_remote_service.dart";
export "solvro_translation_offline_exception.dart";

/// Arguments for the [SolvroTranslatorWithDriftCache] constructor.
typedef SolvroTranslatorArgs = ({
  Dio dio,
  SolvroLocale sourceLocale,
  String databaseName,
  BatchTranslationConfig batchConfig,
});

/// Implementation of the [SolvroTranslator] class.
///
/// This class is responsible for translating text using the Solvro API.
/// It uses the [LocalTranslationsRepository] and [RemoteTranslationsRepository] to get translations from the local and remote databases.
/// It also uses the [ValidityCheck] to check the validity of the translations.
///
/// By default, this implementation uses smart batching to optimize network requests.
/// Multiple translation calls made within a short time window (100ms by default) are
/// automatically batched into a single API request. This is fully transparent to the caller.
///
/// To customize batching behavior, pass a [BatchTranslationConfig]:
/// ```dart
/// final translator = SolvroTranslatorWithDriftCache((
///   dio: dio,
///   sourceLocale: SolvroLocale.en,
///   databaseName: "translations",
///   batchConfig: BatchTranslationConfig(
///     debounceDuration: Duration(milliseconds: 150),
///     maxBatchSize: 50,
///   ),
/// ));
/// ```
///
/// To disable batching:
/// ```dart
/// batchConfig: BatchTranslationConfig.disabled
/// ```
class SolvroTranslatorWithDriftCache
    extends SolvroTranslator<LocalTranslationWithInterface, RemoteTranslationResponse> {
  final BatchedRemoteTranslationsService? _batchedService;

  /// Creates a new [SolvroTranslatorWithDriftCache].
  ///
  /// The `batchConfig` parameter controls batching behavior. Defaults to
  /// [BatchTranslationConfig.defaultConfig] if not specified.
  SolvroTranslatorWithDriftCache(SolvroTranslatorArgs args)
    : _batchedService = (args.batchConfig.enabled)
          ? BatchedRemoteTranslationsService(BatchedRemoteTranslationsRepository(args.dio), config: args.batchConfig)
          : null,
      super.init(
        localTranslatableManager: LocalTranslationsRepository(TranslationsLocalDataSource(args.databaseName)),
        remoteTranslatableManager: (args.batchConfig.enabled)
            ? BatchedRemoteTranslationsService(BatchedRemoteTranslationsRepository(args.dio), config: args.batchConfig)
            : RemoteTranslationsRepository(args.dio),
        validityCheck: (translation) => translation.isApproved,
        sourceLocale: args.sourceLocale,
      );

  /// Flushes the old data from the local database.
  Future<void> flushOldData(Duration duration) async {
    await localTranslatableManager.deleteOldTranslations(duration);
  }

  /// Forces an immediate flush of any pending batched translations.
  ///
  /// This is useful to call when the app is being paused or closed
  /// to ensure no translations are lost.
  Future<void> flushPendingTranslations() async {
    await _batchedService?.flush();
  }

  /// Disposes the translator and releases any resources.
  ///
  /// This cancels any pending debounce timers.
  void dispose() {
    _batchedService?.dispose();
  }
}
