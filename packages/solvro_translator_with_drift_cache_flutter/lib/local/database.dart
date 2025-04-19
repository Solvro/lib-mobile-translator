import "package:drift/drift.dart";
import "package:drift_flutter/drift_flutter.dart";
import "package:path_provider/path_provider.dart" show getApplicationSupportDirectory;
import "package:solvro_translator_core/solvro_translator_core.dart";

import "local_data_source.dart";
import "local_model.dart";

part "database.g.dart";

@DriftDatabase(tables: [Translations])
/// Database for translations.
class TranslationsDatabase extends _$TranslationsDatabase implements TranslationsLocalDataSource {
  /// Creates a new [TranslationsDatabase].
  TranslationsDatabase(String name)
    : super(
        driftDatabase(
          name: name,
          native: const DriftNativeOptions(databaseDirectory: getApplicationSupportDirectory),
          web: DriftWebOptions(sqlite3Wasm: Uri.parse("sqlite3.wasm"), driftWorker: Uri.parse("drift_worker.js")),
        ),
      );

  @override
  int get schemaVersion => 1;

  @override
  Future<Translation?> getTranslation(String md5Hash, SolvroLocale translatedLangCode) async {
    return (select(translations)..where(
      (t) => t.originalTextHash.equals(md5Hash) & t.translatedLanguageCode.equals(translatedLangCode.index),
    )).getSingleOrNull();
  }

  @override
  Future<int> addTranslation(Translation translation) async {
    return into(translations).insert(translation, mode: InsertMode.insertOrReplace);
  }

  @override
  Future<int> deleteOldTranslations(Duration duration) async {
    final DateTime thresholdDate = DateTime.now().subtract(duration);
    return (delete(translations)..where((t) => t.createdAt.isSmallerThanValue(thresholdDate))).go();
  }

  @override
  Future<int> clearTranslations() async {
    return delete(translations).go();
  }
}
