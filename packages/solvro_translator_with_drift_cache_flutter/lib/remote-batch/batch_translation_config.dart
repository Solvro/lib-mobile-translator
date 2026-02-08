/// Configuration for batch translation behavior.
///
/// Allows customization of debounce timing, maximum batch size,
/// and whether batching is enabled.
class BatchTranslationConfig {
  /// Duration to wait before sending a batch request.
  ///
  /// Defaults to 100 milliseconds.
  final Duration debounceDuration;

  /// Maximum number of texts to include in a single batch.
  ///
  /// Defaults to 100. When this limit is reached,
  /// the batch is sent immediately regardless of debounce.
  final int maxBatchSize;

  /// Whether batch translation is enabled.
  ///
  /// When false, translations are sent individually.
  /// Defaults to true.
  final bool enabled;

  /// Creates a new [BatchTranslationConfig].
  const BatchTranslationConfig({
    this.debounceDuration = const Duration(milliseconds: 100),
    this.maxBatchSize = 100,
    this.enabled = true,
  });

  /// Default configuration with standard settings.
  static const defaultConfig = BatchTranslationConfig();

  /// Configuration with batching disabled.
  static const disabled = BatchTranslationConfig(enabled: false);

  /// Creates a copy with modified fields.
  BatchTranslationConfig copyWith({Duration? debounceDuration, int? maxBatchSize, bool? enabled}) {
    return BatchTranslationConfig(
      debounceDuration: debounceDuration ?? this.debounceDuration,
      maxBatchSize: maxBatchSize ?? this.maxBatchSize,
      enabled: enabled ?? this.enabled,
    );
  }
}
