import "dart:async";
import "dart:io";

import "package:dio/dio.dart";
import "package:solvro_translator_core/solvro_translator_core.dart" show SolvroLocale;

import "../solvro_translation_offline_exception.dart";
import "translation_batch_request.dart";
import "translation_batch_response.dart";

/// Repository for batch translation API calls.
///
/// Handles the HTTP communication with the translation API.
class BatchedRemoteTranslationsRepository {
  final Dio _dio;

  /// Creates a new [BatchedRemoteTranslationsRepository].
  ///
  /// The [_dio] parameter is the Dio instance to use for HTTP requests.
  BatchedRemoteTranslationsRepository(this._dio);

  /// Sends a batch translation request to the API.
  Future<TranslationBatchResponse> sendBatchRequest(List<String> texts, SolvroLocale from, SolvroLocale to) async {
    final request = TranslationBatchRequest(
      texts: texts,
      originalLanguageCode: from.name,
      translatedLanguageCode: to.name,
    );

    try {
      final response = await _dio.post<Map<String, dynamic>>("/translations/openAI/batch", data: request.toJson());
      return TranslationBatchResponse.fromJson(response.data!);
    } on DioException catch (e, st) {
      final isOffline = e.type == DioExceptionType.connectionError || e.error is SocketException;

      if (isOffline) {
        throw SolvroTranslationOfflineException(message: "Device appears to be offline.", cause: e, stackTrace: st);
      }

      rethrow;
    }
  }
}
