import "locale.dart" show SolvroLocale;
import "solvro_translator.dart" show TranslationResults;

/// A manager that handles remote translation operations.
///
/// Responsible for translating text between different languages using remote services.
/// Type parameter [T] defines the specific implementation of [TranslationResults]
/// that will be returned by this manager.
abstract class RemoteTranslatableManager<T extends TranslationResults> {
  /// Creates a new instance of [RemoteTranslatableManager].
  const RemoteTranslatableManager();

  /// Translates the given [text] from one language to another.
  ///
  /// Uses remote translation services to translate from [from] locale to [to] locale.
  /// Returns a Future containing translation results of type [T].
  Future<T> translate(String text, SolvroLocale from, SolvroLocale to);
}

/// A manager that handles local storage and retrieval of translations.
///
/// Responsible for caching translations locally to reduce unnecessary network requests.
/// Type parameter [Local] defines the local storage implementation of [TranslationResults].
/// Type parameter [Remote] defines the remote service implementation of [TranslationResults].
abstract class LocalTranslatableManager<Local extends TranslationResults, Remote extends TranslationResults> {
  /// Creates a new instance of [LocalTranslatableManager].
  const LocalTranslatableManager();

  /// Retrieves a translation from local storage based on [hash] and [locale].
  ///
  /// Returns a Future containing the translation results if found, otherwise null.
  Future<Local?> getTranslation(String md5Hash, SolvroLocale locale);

  /// Saves a remote translation to local storage.
  ///
  /// Takes a [translation] of type [Remote] and persists it locally for future use.
  Future<void> saveTranslation(Remote translation);
}
