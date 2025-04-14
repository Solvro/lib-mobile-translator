import "locale.dart" show SolvroLocale;
import "managers.dart" show LocalTranslatableManager, RemoteTranslatableManager;

/// Interface that defines the structure for translation results.
///
/// Implementations must provide access to the translated text.
abstract interface class TranslationResults {
  /// The text that has been translated.
  String get translatedText;
}

/// A function type that validates if a translation is acceptable.
///
/// Returns `true` if the translation is valid, `false` otherwise.
typedef ValidityCheck<T extends TranslationResults> = bool Function(T translation);

/// A translator that handles text translation between different locales.
///
/// Supports local caching of translations and remote translation services.
class SolvroTranslator<Local extends TranslationResults, Remote extends TranslationResults> {
  /// Manager that handles local storage and retrieval of translations.
  final LocalTranslatableManager<Local, Remote> localTranslatableManager;

  /// Manager that handles remote translation requests.
  final RemoteTranslatableManager<Remote> remoteTranslatableManager;

  /// Function to check if a local translation is still valid.
  final ValidityCheck<Local> validityCheck;

  /// The source locale from which text will be translated.
  final SolvroLocale sourceLocale;

  /// Creates a new translator with the required dependencies.
  ///
  /// * [localTranslatableManager] - Manages local translation storage and retrieval.
  /// * [remoteTranslatableManager] - Manages remote translation requests.
  /// * [validityCheck] - Validates local translations.
  /// * [sourceLocale] - The default source locale for translations.
  const SolvroTranslator.init({
    required this.localTranslatableManager,
    required this.remoteTranslatableManager,
    required this.validityCheck,
    required this.sourceLocale,
  });

  /// Translates the given text to the specified locale.
  ///
  /// First attempts to retrieve a cached translation locally. If not available
  /// or not valid, falls back to remote translation and caches the result.
  ///
  /// * [text] - The text to translate.
  /// * [to] - The target locale to translate to.
  ///
  /// Returns the translated text as a [String].
  Future<String> translate(String text, SolvroLocale to) async {
    if (sourceLocale == to || text.trim().isEmpty || !RegExp("[a-zA-Z0-9]").hasMatch(text)) {
      return text;
    }

    final localTranslation = await localTranslatableManager.getTranslation(text.hashCode, to);
    if (localTranslation != null && validityCheck(localTranslation)) {
      return localTranslation.translatedText;
    }

    final remoteTranslation = await remoteTranslatableManager.translate(text, sourceLocale, to);
    await localTranslatableManager.saveTranslation(remoteTranslation);
    return remoteTranslation.translatedText;
  }
}
