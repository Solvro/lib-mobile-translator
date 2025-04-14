import "package:drift/drift.dart";
import "package:solvro_translator_core/solvro_translator_core.dart";

import "database.dart";

/// A table for storing translations.
class Translations extends Table {
  /// The hash of the original text.
  IntColumn get originalTextHash => integer()();

  /// The translated text.
  TextColumn get translatedText => text()();

  /// The language code of the original text.
  IntColumn get originalLanguageCode => intEnum<SolvroLocale>().withDefault(Constant(SolvroLocale.pl.index))();

  /// The language code of the translated text.
  IntColumn get translatedLanguageCode => intEnum<SolvroLocale>()();

  /// Whether the translation is approved.
  BoolColumn get isApproved => boolean()();

  /// The date and time the translation was created.
  DateTimeColumn get createdAt => dateTime().clientDefault(DateTime.now)();

  @override
  Set<Column> get primaryKey => {originalTextHash, translatedLanguageCode};
}

/// A class that extends the [Translation] class and implements the [TranslationResults] interface.
class LocalTranslationWithInterface extends Translation implements TranslationResults {
  /// Creates a new [LocalTranslationWithInterface] from a [Translation] object.
  LocalTranslationWithInterface.fromTranslation(Translation translation)
    : super(
        originalTextHash: translation.originalTextHash,
        translatedText: translation.translatedText,
        originalLanguageCode: translation.originalLanguageCode,
        translatedLanguageCode: translation.translatedLanguageCode,
        isApproved: translation.isApproved,
        createdAt: translation.createdAt,
      );
}
