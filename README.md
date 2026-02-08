# Solvro Translator

A Dart/Flutter monorepo for internationalization and translation utilities, made by [the Solvro Team](https://solvro.pwr.edu.pl/)

## Packages

This repository contains the following packages:

| Package | Description | Location |
|---------|-------------|----------|
| `solvro_translator_core` | Core package containing annotations, types, and pure business logic | [`packages/solvro_translator_core`](packages/solvro_translator_core) |
| `solvro_translator_generator` | Code generator for creating translation code from annotated Dart classes | [`packages/solvro_translator_generator`](packages/solvro_translator_generator) |
| `solvro_translator_with_drift_cache_flutter` | Flutter-specific implementation with Drift local database caching and integrated with our [backend opensource project](https://github.com/Solvro/backend-translator) that you can selfhost and use with this package | [`packages/solvro_translator_with_drift_cache_flutter`](packages/solvro_translator_with_drift_cache_flutter) |

## Project Structure

```
packages/
├── solvro_translator_core/           # Core annotations and types
├── solvro_translator_generator/      # Code generation tools
└── solvro_translator_with_drift_cache_flutter/  # Flutter + Drift implementation
```

## Publish
```
melos publish --no-dry-run
```

## License

See [LICENSE](LICENSE) file.
