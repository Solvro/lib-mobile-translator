# Solvro Translator with Drift Cache for Flutter

A Flutter package that provides translation capabilities with local caching using [Drift](https://drift.simonbinder.eu/). This package allows you to translate text between different languages and store the translations locally for efficient access.

Connects to our open source API: https://github.com/Solvro/backend-translator to fetch translations. You can self host your own instance.

## Features

- Translate text between multiple languages
- Local caching of translations using Drift database
- Support for marking models as translatable
- Code generation for easily implementing translatable interfaces
- Built-in validity checking for cached translations
- Seamless integration with Flutter applications
- Freezed models support

## Limitations

- Currently supports only freezed models with json serializable

## Getting started

### Installation

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  solvro_translator_with_drift_cache_flutter: ^0.3.0
  freezed_annotation: ^3.0.0
  json_annotation: ^4.9.0

dev_dependencies:
  build_runner: ^2.4.15
  freezed: ^3.0.2
  json_serializable: ^6.9.4
  solvro_translator_generator: ^0.3.0
```

## Usage

### Initialize the Translator

First, initialize the translator in your Flutter application:

```dart
import 'package:solvro_translator_core/solvro_translator_core.dart';
import 'package:solvro_translator_with_drift_cache_flutter/solvro_translator.dart';

void main() {
  // Initialize the translator. Best to use dependency injection like `get_it` or `riverpod`
  final translator = SolvroTranslatorImplementation((
    dio: Dio(
        // TODO: add base url and authentication here
    ),
    sourceLocale: SolvroLocale.pl,
    databaseName: 'translations.db',
  ));
  runApp(
    /// ...
  )
}
```

### Create Translatable Models

Define your models using the `@Translatable` annotation from `solvro_translator_core`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solvro_translator_core/solvro_translator_core.dart';

part 'product.freezed.dart';
part 'product.g.dart';
part 'product.translatable.dart'; // Generated file for translatable interface

@freezed
@Translatable(makeFieldsTranslatableByDefault: true)
class Product with _$Product, _$ProductTranslatable {
  factory Product({
    required String name,
    required String description,
    @NonTranslatableField int? price,
    @TranslatableField List<String>? tags,
  }) = _Product;
  
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
```

### Generate Code

Run the build_runner to generate the necessary code:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

This will generate:
- `.freezed.dart` files from the freezed package
- `.g.dart` files from json_serializable
- `.translatable.dart` files for the translatable interfaces

### Translate Text

```dart
import 'package:solvro_translator_core/solvro_translator_core.dart';
import 'product.dart';

Future<void> translateExample(SolvroTranslator translator) async {
  // Translate a simple string
  final translated = await translator.translate('Hello world', SolvroLocale.es);
  print(translated); // "Hola mundo"
  
  // Translate a model
  final product = Product(
    name: 'Smartphone',
    description: 'A latest generation smartphone with advanced features',
    price: 999,
    tags: ['electronics', 'mobile', 'tech'],
  );
  
  // Translate to Spanish
  final spanishProduct = await product.translate(translator, SolvroLocale.es);
  
  print(spanishProduct.name); // "Teléfono inteligente"
  print(spanishProduct.description); // "Un teléfono inteligente de última generación con características avanzadas"
  print(spanishProduct.price); // 999 (not translated as marked with @NonTranslatableField)
  print(spanishProduct.tags); // ["electrónica", "móvil", "tecnología"]
}
```

### Advanced Usage: Nested Translatable Models

You can also define and translate models with nested translatable fields:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solvro_translator_core/solvro_translator_core.dart';
import 'product.dart';

part 'catalog.freezed.dart';
part 'catalog.g.dart';
part 'catalog.translatable.dart';

@freezed
@translatable
class Catalog with _$Catalog, _$CatalogTranslatable {
  factory Catalog({
    required String title,
    required String description,
    required List<Product> products,
  }) = _Catalog;
  
  factory Catalog.fromJson(Map<String, dynamic> json) => _$CatalogFromJson(json);

}

  @freezed
  class Product with _$Product, _$ProductTranslatable {
  factory Product({
    @NonTranslatableField required String name,
    required String description,
    int? price,
    List<String>? tags,
  }) = _Product;
  
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

// Usage
Future<void> translateCatalog(SolvroTranslator translator) async {
  final catalog = Catalog(
    title: 'Electronics Catalog',
    description: 'Browse our latest electronic products',
    products: [
      Product(name: 'Smartphone', description: 'A latest model', price: 999),
      Product(name: 'Laptop', description: 'Powerful computer', price: 1299),
    ],
  );
  
  // Translate the entire catalog including nested products
  final spanishCatalog = await catalog.translate(translator, SolvroLocale.es);
}
```

## Additional information

### How it works

1. When you request a translation, the package first checks the local Drift database for a cached version
2. If a valid translation exists locally, it's returned immediately
3. If no valid translation is found, the package queries the remote translation service
4. Remote translations are automatically cached in the Drift database for future use

### Dependencies

- `solvro_translator_core` - Core translation functionality
- `freezed` - For immutable models
- `json_serializable` - For JSON serialization/deserialization
- `drift` - For local database storage
- `dio` - For HTTP requests to translation services

### Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### License

This package is available under the MIT License.
