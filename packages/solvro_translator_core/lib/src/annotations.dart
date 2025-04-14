/// Annotation used to mark a class as translatable.
///
/// When applied to a class, its fields will be processed for translation.
/// Control whether fields should be translatable by default with
/// [makeFieldsTranslatableByDefault].
/// Also generates a _${className}Translatable mixin that need to be extended
/// by the class to be translatable.
class Translatable {
  /// Whether class fields should be translatable by default.
  ///
  /// If true, all fields will be treated as translatable unless marked with
  /// [NonTranslatableField]. If false, only fields explicitly marked with
  /// [TranslatableField] will be translatable.
  final bool makeFieldsTranslatableByDefault;

  /// Creates a new [Translatable] annotation.
  const Translatable({this.makeFieldsTranslatableByDefault = true});
}

/// Annotation used to explicitly mark a field as translatable.
///
/// This is useful when the parent class has
/// [Translatable.makeFieldsTranslatableByDefault] set to false and you want
/// to make specific fields translatable.
class TranslatableField {
  /// Creates a new [TranslatableField] annotation.
  const TranslatableField();
}

/// Annotation used to exclude a field from being translated.
///
/// This is useful when the parent class has
/// [Translatable.makeFieldsTranslatableByDefault] set to true and you want
/// to exclude specific fields from translation.
class NonTranslatableField {
  /// Creates a new [NonTranslatableField] annotation.
  const NonTranslatableField();
}

/// Annotation used to mark all fields in a class as translatable.
///
/// These overrides the [Translatable.makeFieldsTranslatableByDefault] setting.
/// After applying this annotation, all fields will be translatable in this model and all nested ones, unless stated otherwise with [NonTranslatableField].
class AllFieldsTranslatable {
  /// Creates a new [AllFieldsTranslatable] annotation.
  const AllFieldsTranslatable();
}

/// Convenience instance of [Translatable] with default settings.
const translatable = Translatable();

/// Convenience instance of [TranslatableField].
const translatableField = TranslatableField();

/// Convenience instance of [NonTranslatableField].
const nonTranslatableField = NonTranslatableField();

/// Convenience instance of [AllFieldsTranslatable].
const allFieldsTranslatable = AllFieldsTranslatable();
