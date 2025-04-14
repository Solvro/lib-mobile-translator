import "package:build/build.dart";
import "package:source_gen/source_gen.dart";

import "src/generator.dart";

/// A builder that generates a translatable mixin.
Builder translatableBuilder(BuilderOptions options) =>
    LibraryBuilder(TranslatableGenerator(), generatedExtension: ".translatable.g.dart");
