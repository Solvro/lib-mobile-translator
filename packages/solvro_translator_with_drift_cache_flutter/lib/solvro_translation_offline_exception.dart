/// Thrown when a translation cannot be fetched due to missing connectivity.
///
/// This is meant to represent a *device offline / network unavailable* scenario
/// (e.g. DNS failure, no route to host, airplane mode), not an API/server error.
class SolvroTranslationOfflineException implements Exception {
  /// Optional human-readable message.
  final String? message;

  /// The original error that triggered this offline exception (if available).
  final Object? cause;

  /// The original stack trace (if available).
  final StackTrace? stackTrace;

  /// Creates a new [SolvroTranslationOfflineException].
  const SolvroTranslationOfflineException({this.message, this.cause, this.stackTrace});

  @override
  String toString() {
    const base = "SolvroTranslationOfflineException";
    if (message == null || message!.trim().isEmpty) return base;
    return "$base: $message";
  }
}
