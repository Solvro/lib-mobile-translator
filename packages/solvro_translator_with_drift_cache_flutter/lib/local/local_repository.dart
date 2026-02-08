import "package:solvro_translator_core/solvro_translator_core.dart";

import "../remote-single/translation_response.dart";
import "local_data_source.dart";
import "local_model.dart";

/// A repository for local translations.
///
/// This repository is responsible for fetching translations from the local database.
/// It also uses the [LocalTranslationWithInterface] and [RemoteTranslationResponse] models to serialize and deserialize the data.
class LocalTranslationsRepository
    extends LocalTranslatableManager<LocalTranslationWithInterface, RemoteTranslationResponse> {
  final TranslationsLocalDataSource _dataSource;

  /// Creates a new [LocalTranslationsRepository].
  const LocalTranslationsRepository(this._dataSource);

  @override
  Future<LocalTranslationWithInterface?> getTranslation(String hash, SolvroLocale locale) async {
    final translation = await _dataSource.getTranslation(hash, locale);
    if (translation == null) return null;
    return LocalTranslationWithInterface.fromTranslation(translation);
  }

  @override
  Future<void> saveTranslation(RemoteTranslationResponse translation) async {
    await _dataSource.addTranslation(translation.toLocalTranslationModel());
  }

  @override
  Future<void> deleteOldTranslations(Duration duration) async {
    await _dataSource.deleteOldTranslations(duration);
  }

  @override
  Future<void> clearTranslations() async {
    await _dataSource.clearTranslations();
  }
}
