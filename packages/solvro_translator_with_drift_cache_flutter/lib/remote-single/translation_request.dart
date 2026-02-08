import "package:freezed_annotation/freezed_annotation.dart";

part "translation_request.freezed.dart";
part "translation_request.g.dart";

/// A request model for translation services.
///
/// Contains the original text to be translated along with language codes
/// for both the original and target languages.
@freezed
abstract class TranslationRequest with _$TranslationRequest {
  /// Creates a new [TranslationRequest].
  ///
  /// The [originalText] parameter is the text to be translated.
  /// The [originalLanguageCode] parameter is the language code of the original text.
  /// The [translatedLanguageCode] parameter is the language code of the desired translation.
  const factory TranslationRequest({
    required String originalText,
    required String originalLanguageCode,
    required String translatedLanguageCode,
  }) = _TranslationRequest;

  /// Creates a new [TranslationRequest] from a JSON object.
  ///
  /// The [json] parameter is a map of key-value pairs representing the translation request.
  factory TranslationRequest.fromJson(Map<String, dynamic> json) => _$TranslationRequestFromJson(json);
}
