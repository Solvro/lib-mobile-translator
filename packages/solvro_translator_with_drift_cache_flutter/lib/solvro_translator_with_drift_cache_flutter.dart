import "package:dio/dio.dart";
import "package:solvro_translator_core/solvro_translator_core.dart";

import "local/local_data_source.dart";
import "local/local_model.dart";
import "local/local_repository.dart";
import "remote/remote_repository.dart";
import "remote/translation_response.dart";
export "solvro_translation_offline_exception.dart";

/// Arguments for the [SolvroTranslatorWithDriftCache] constructor.
typedef SolvroTranslatorArgs = ({Dio dio, SolvroLocale sourceLocale, String databaseName});

/// Implementation of the [SolvroTranslator] class.
///
/// This class is responsible for translating text using the Solvro API.
/// It uses the [LocalTranslationsRepository] and [RemoteTranslationsRepository] to get translations from the local and remote databases.
/// It also uses the [ValidityCheck] to check the validity of the translations.
class SolvroTranslatorWithDriftCache
    extends SolvroTranslator<LocalTranslationWithInterface, RemoteTranslationResponse> {
  /// Creates a new [SolvroTranslatorWithDriftCache].
  SolvroTranslatorWithDriftCache(SolvroTranslatorArgs args)
    : super.init(
        localTranslatableManager: LocalTranslationsRepository(TranslationsLocalDataSource(args.databaseName)),
        remoteTranslatableManager: RemoteTranslationsRepository(args.dio),
        validityCheck: (translation) => translation.isApproved,
        sourceLocale: args.sourceLocale,
      );

  /// Flushes the old data from the local database.
  Future<void> flushOldData(Duration duration) async {
    await localTranslatableManager.deleteOldTranslations(duration);
  }
}
