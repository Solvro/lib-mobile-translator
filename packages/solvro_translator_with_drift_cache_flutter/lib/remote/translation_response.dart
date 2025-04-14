import "package:freezed_annotation/freezed_annotation.dart";
import "package:solvro_translator_core/solvro_translator_core.dart";

import "../local/database.dart";

part "translation_response.freezed.dart";
part "translation_response.g.dart";

/// A response model for translation services.
///
/// Contains the original text, translated text, language codes, approval status, and timestamps.
@freezed
abstract class RemoteTranslationResponse with _$RemoteTranslationResponse implements TranslationResults {
  /// Creates a new [RemoteTranslationResponse].
  ///
  /// The [hash] parameter is the hash of the original text.
  /// The [originalText] parameter is the original text.
  /// The [translatedText] parameter is the translated text.
  /// The [originalLanguageCode] parameter is the language code of the original text.
  /// The [translatedLanguageCode] parameter is the language code of the desired translation.
  factory RemoteTranslationResponse({
    required String hash,
    required String originalText,
    required String translatedText,
    required String originalLanguageCode,
    required String translatedLanguageCode,
    required bool isApproved,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TranslationResponse;

  RemoteTranslationResponse._();

  /// Converts the [RemoteTranslationResponse] to a [Translation] object.
  Translation toLocalTranslationModel() => Translation(
    originalTextHash: originalText.hashCode,
    translatedText: translatedText,
    originalLanguageCode: SolvroLocale.values.byName(originalLanguageCode),
    translatedLanguageCode: SolvroLocale.values.byName(translatedLanguageCode),
    isApproved: isApproved,
    createdAt: DateTime.now(),
  );

  /// Creates a new [RemoteTranslationResponse] from a JSON object.
  ///
  /// The [json] parameter is a map of key-value pairs representing the translation response.
  factory RemoteTranslationResponse.fromJson(Map<String, dynamic> json) => _$TranslationResponseFromJson(json);
}
