import "../solvro_translator_core.dart";
import "translatable.dart";

Future<List<String>> _translateList<T extends SolvroTranslator>(
  List<String> value,
  T translator,
  SolvroLocale locale,
) async {
  return Future.wait(value.map((value) => translator.translate(value, locale)));
}

Future<void> _translateProperty<T extends TranslatableInterface, Translator extends SolvroTranslator>(
  Map<String, dynamic> json,
  TranslatableJSONProperty property,
  Translator translator,
  SolvroLocale locale,
) async {
  switch (property) {
    case TranslatableJSONPropertyString(:final fieldName):
      json[fieldName] = await translator.translate(json[fieldName] as String, locale);
    case TranslatableNestedStringList(:final fieldName):
      json[fieldName] = await _translateList(json[fieldName] as List<String>, translator, locale);
    case TranslatableNestedJSONObject(:final properties, :final fieldName):
      await _translateMultProperties(json[fieldName] as Map<String, dynamic>, properties, translator, locale);
    case TranslatableNestedObjectList(:final properties, :final fieldName):
      final list = json[fieldName] as List<dynamic>;
      await Future.wait(
        list.map((item) => _translateMultProperties(item as Map<String, dynamic>, properties, translator, locale)),
      );
  }
}

Future<void> _translateMultProperties<T extends TranslatableInterface, Translator extends SolvroTranslator>(
  Map<String, dynamic> json,
  List<TranslatableJSONProperty> properties,
  Translator translator,
  SolvroLocale locale,
) async {
  await Future.wait(properties.map((property) => _translateProperty(json, property, translator, locale)));
}

/// Extension on [TranslatableInterface] that provides translation functionality.
///
/// This extension enables any class implementing [TranslatableInterface] to be
/// translated using a specified [SolvroTranslator] implementation.
extension TranslateX<T extends TranslatableInterface, Translator extends SolvroTranslator> on T {
  /// Translates this object to the specified locale.
  ///
  /// Uses the provided [translator] to translate all translatable properties
  /// defined by [translatableJSONProperties] into the target [locale].
  ///
  /// If the target locale is `sourceLocale` of the [translator], returns the original object
  /// without translation.
  ///
  /// Returns a new instance of the same type with translated content.
  Future<T> translate(Translator translator, SolvroLocale locale) async {
    if (locale == translator.sourceLocale) {
      return this;
    }

    final json = toJson();
    await _translateMultProperties(json, translatableJSONProperties, translator, locale);
    return fromJson(json) as T;
  }
}
