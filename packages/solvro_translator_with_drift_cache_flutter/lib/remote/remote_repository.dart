import "package:dio/dio.dart";
import "package:solvro_translator_core/solvro_translator_core.dart" show RemoteTranslatableManager, SolvroLocale;

import "translation_request.dart";
import "translation_response.dart";

/// Remote repository for translations.
///
/// This repository is responsible for fetching translations from the remote API.
/// It uses the [Dio] package to make HTTP requests.
/// It also uses the [TranslationRequest] and [RemoteTranslationResponse] models to serialize and deserialize the data.
class RemoteTranslationsRepository extends RemoteTranslatableManager<RemoteTranslationResponse> {
  final Dio _dio;

  /// Creates a new [RemoteTranslationsRepository].
  ///
  /// The [_dio] parameter is the Dio instance to use for HTTP requests.
  const RemoteTranslationsRepository(this._dio);

  @override
  Future<RemoteTranslationResponse> translate(String originalText, SolvroLocale from, SolvroLocale to) async {
    final request = TranslationRequest(
      originalText: originalText,
      originalLanguageCode: from.name,
      translatedLanguageCode: to.name,
    );
    final response = await _dio.post<Map<String, dynamic>>("/translations/openAI", data: request.toJson());
    return RemoteTranslationResponse.fromJson(response.data!);
  }
}
