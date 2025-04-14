import "package:solvro_translator_core/solvro_translator_core.dart";

import "database.dart";

/// Local data source for translations.
///
/// This interface defines the methods for accessing and manipulating translations in the local database.
abstract interface class TranslationsLocalDataSource {
  /// Creates a new [TranslationsLocalDataSource].
  factory TranslationsLocalDataSource(String name) = TranslationsDatabase;

  /// Gets a translation from the local database.
  ///
  /// The [hash] parameter is the hash of the original text.
  /// The [translatedLangCode] parameter is the language code of the translated text.
  Future<Translation?> getTranslation(String md5Hash, SolvroLocale translatedLangCode);

  /// Adds a translation to the local database.
  Future<int> addTranslation(Translation translation);

  /// Deletes old translations from the local database.
  ///
  /// The [duration] parameter is the duration of the old translations.
  Future<int> deleteOldTranslations(Duration duration);

  /// Clears all translations from the local database.
  Future<int> clearTranslations();
}
