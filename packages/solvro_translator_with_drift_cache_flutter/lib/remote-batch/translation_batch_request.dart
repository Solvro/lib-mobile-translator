import "package:freezed_annotation/freezed_annotation.dart";

part "translation_batch_request.freezed.dart";
part "translation_batch_request.g.dart";

/// A batch request model for translation services.
///
/// Contains multiple texts to be translated along with language codes
/// for both the original and target languages.
@freezed
abstract class TranslationBatchRequest with _$TranslationBatchRequest {
  /// Creates a new [TranslationBatchRequest].
  ///
  /// The [texts] parameter is the list of texts to be translated.
  /// The [originalLanguageCode] parameter is the language code of the original text.
  /// The [translatedLanguageCode] parameter is the language code of the desired translation.
  const factory TranslationBatchRequest({
    required List<String> texts,
    required String originalLanguageCode,
    required String translatedLanguageCode,
  }) = _TranslationBatchRequest;

  /// Creates a new [TranslationBatchRequest] from a JSON object.
  ///
  /// The [json] parameter is a map of key-value pairs representing the batch translation request.
  factory TranslationBatchRequest.fromJson(Map<String, dynamic> json) => _$TranslationBatchRequestFromJson(json);
}
