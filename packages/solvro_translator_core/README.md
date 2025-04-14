<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages). 
-->

# Solvro Translator Core

A lightweight, efficient translation framework for Dart and Flutter applications that provides a solid foundation for text localization with support for both local caching and remote translation services.

## Features

- **Dual-layer translation system** with local cache and remote service integration
- **Locale management** for handling translation between different languages
- **Efficient caching** to minimize network requests and improve performance
- **Extensible architecture** with clear interfaces for custom implementations
- **Type-safe translation results** through generic implementation
- **Validity checking** to ensure translations remain current

## Note

This is only `core` package, meaning this should rarely be used as standalone package. See [Solvro Translator With Drift Cache for full recommended usage](https://pub.dev/packages/solvro_translator_with_drift_cache)

## Custom Usage

If despite above warning, you still want to use this package as standalone, the usage would be smth like this:

Then implement the required managers and translation result classes:

1. Create a concrete implementation of `RemoteTranslatableManager` for your translation service
2. Create a concrete implementation of `LocalTranslatableManager` for your local storage solution
3. Define custom `TranslationResults` classes for both local and remote translations

## Usage

```dart
// Define your translation result implementations
class MyLocalTranslation implements TranslationResults {
  final String translatedText;
  final DateTime timestamp;
  
  const MyLocalTranslation(this.translatedText, this.timestamp);
}

class MyRemoteTranslation implements TranslationResults {
  final String translatedText;
  
  const MyRemoteTranslation(this.translatedText);
}

// Create a translator instance
final translator = SolvroTranslator<MyLocalTranslation, MyRemoteTranslation>.init(
  localTranslatableManager: MyLocalManager(),
  remoteTranslatableManager: MyRemoteManager(),
  validityCheck: (translation) => 
    DateTime.now().difference(translation.timestamp).inDays < 30,
  sourceLocale: SolvroLocale.pl,
);

// Translate text
final translated = await translator.translate(
  "Hello world",
  SolvroLocale.en,
);
```

## Additional information

For more advanced use cases and examples, check the `/example` directory in this package.

To contribute to this package or report issues, please visit the [GitHub repository](https://github.com/Solvro/lib-mobile-solvro-translator).

This package is maintained by [Solvro](https://github.com/Solvro).
