import "package:freezed_annotation/freezed_annotation.dart";

part "translation_batch_response.freezed.dart";
part "translation_batch_response.g.dart";

/// A single translation result within a batch response.
@freezed
abstract class BatchTranslationResult with _$BatchTranslationResult {
  /// Creates a new [BatchTranslationResult].
  ///
  /// The [originalText] parameter is the original text that was translated.
  /// The [translation] parameter contains the translation details if successful.
  /// The [success] parameter indicates whether the translation succeeded.
  /// The [error] parameter contains error message if the translation failed.
  const factory BatchTranslationResult({
    required String originalText,
    required BatchTranslationItem? translation,
    required bool success,
    String? error,
  }) = _BatchTranslationResult;

  /// Creates a new [BatchTranslationResult] from a JSON object.
  factory BatchTranslationResult.fromJson(Map<String, dynamic> json) => _$BatchTranslationResultFromJson(json);
}

/// A single translation item returned in a batch response.
@freezed
abstract class BatchTranslationItem with _$BatchTranslationItem {
  /// Creates a new [BatchTranslationItem].
  ///
  /// The [hash] parameter is the unique hash of the original text.
  /// The [originalText] parameter is the original text.
  /// The [translatedText] parameter is the translated text.
  /// The [originalLanguageCode] parameter is the language code of the original text.
  /// The [translatedLanguageCode] parameter is the language code of the translation.
  /// The [isApproved] parameter indicates if the translation is approved.
  /// The [createdAt] parameter is when the translation was created.
  /// The [updatedAt] parameter is when the translation was last updated.
  const factory BatchTranslationItem({
    required String hash,
    required String originalText,
    required String translatedText,
    required String originalLanguageCode,
    required String translatedLanguageCode,
    required bool isApproved,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _BatchTranslationItem;

  /// Creates a new [BatchTranslationItem] from a JSON object.
  factory BatchTranslationItem.fromJson(Map<String, dynamic> json) => _$BatchTranslationItemFromJson(json);
}

/// A response model for batch translation services.
///
/// Contains individual translation results along with summary statistics.
@freezed
abstract class TranslationBatchResponse with _$TranslationBatchResponse {
  /// Creates a new [TranslationBatchResponse].
  ///
  /// The [translations] parameter contains individual translation results.
  /// The [total] parameter is the total number of texts requested.
  /// The [successful] parameter is the count of successful translations.
  /// The [failed] parameter is the count of failed translations.
  const factory TranslationBatchResponse({
    required List<BatchTranslationResult> translations,
    required int total,
    required int successful,
    required int failed,
  }) = _TranslationBatchResponse;

  /// Creates a new [TranslationBatchResponse] from a JSON object.
  ///
  /// The [json] parameter is a map of key-value pairs representing the batch translation response.
  factory TranslationBatchResponse.fromJson(Map<String, dynamic> json) => _$TranslationBatchResponseFromJson(json);
}
