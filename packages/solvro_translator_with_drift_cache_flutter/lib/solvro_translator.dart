import "package:dio/dio.dart";
import "package:solvro_translator_core/solvro_translator_core.dart";

import "local/local_data_source.dart";
import "local/local_repository.dart";
import "remote/remote_repository.dart";

/// Arguments for the [SolvroTranslatorImplementation] constructor.
typedef SolvroTranslatorArgs = ({Dio dio, ValidityCheck validityCheck, SolvroLocale sourceLocale, String databaseName});

/// Implementation of the [SolvroTranslator] class.
///
/// This class is responsible for translating text using the Solvro API.
/// It uses the [LocalTranslationsRepository] and [RemoteTranslationsRepository] to get translations from the local and remote databases.
/// It also uses the [ValidityCheck] to check the validity of the translations.
class SolvroTranslatorImplementation extends SolvroTranslator {
  /// Creates a new [SolvroTranslatorImplementation].
  SolvroTranslatorImplementation(SolvroTranslatorArgs args)
    : super.init(
        localTranslatableManager: LocalTranslationsRepository(TranslationsLocalDataSource(args.databaseName)),
        remoteTranslatableManager: RemoteTranslationsRepository(args.dio),
        validityCheck: args.validityCheck,
        sourceLocale: args.sourceLocale,
      );
}
