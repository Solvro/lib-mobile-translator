// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $TranslationsTable extends Translations
    with TableInfo<$TranslationsTable, Translation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TranslationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _originalTextHashMeta = const VerificationMeta(
    'originalTextHash',
  );
  @override
  late final GeneratedColumn<String> originalTextHash = GeneratedColumn<String>(
    'original_text_hash',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _translatedTextMeta = const VerificationMeta(
    'translatedText',
  );
  @override
  late final GeneratedColumn<String> translatedText = GeneratedColumn<String>(
    'translated_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<SolvroLocale, int>
  originalLanguageCode = GeneratedColumn<int>(
    'original_language_code',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: Constant(SolvroLocale.pl.index),
  ).withConverter<SolvroLocale>(
    $TranslationsTable.$converteroriginalLanguageCode,
  );
  @override
  late final GeneratedColumnWithTypeConverter<SolvroLocale, int>
  translatedLanguageCode = GeneratedColumn<int>(
    'translated_language_code',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  ).withConverter<SolvroLocale>(
    $TranslationsTable.$convertertranslatedLanguageCode,
  );
  static const VerificationMeta _isApprovedMeta = const VerificationMeta(
    'isApproved',
  );
  @override
  late final GeneratedColumn<bool> isApproved = GeneratedColumn<bool>(
    'is_approved',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_approved" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    clientDefault: DateTime.now,
  );
  @override
  List<GeneratedColumn> get $columns => [
    originalTextHash,
    translatedText,
    originalLanguageCode,
    translatedLanguageCode,
    isApproved,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'translations';
  @override
  VerificationContext validateIntegrity(
    Insertable<Translation> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('original_text_hash')) {
      context.handle(
        _originalTextHashMeta,
        originalTextHash.isAcceptableOrUnknown(
          data['original_text_hash']!,
          _originalTextHashMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_originalTextHashMeta);
    }
    if (data.containsKey('translated_text')) {
      context.handle(
        _translatedTextMeta,
        translatedText.isAcceptableOrUnknown(
          data['translated_text']!,
          _translatedTextMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_translatedTextMeta);
    }
    if (data.containsKey('is_approved')) {
      context.handle(
        _isApprovedMeta,
        isApproved.isAcceptableOrUnknown(data['is_approved']!, _isApprovedMeta),
      );
    } else if (isInserting) {
      context.missing(_isApprovedMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {
    originalTextHash,
    translatedLanguageCode,
  };
  @override
  Translation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Translation(
      originalTextHash:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}original_text_hash'],
          )!,
      translatedText:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}translated_text'],
          )!,
      originalLanguageCode: $TranslationsTable.$converteroriginalLanguageCode
          .fromSql(
            attachedDatabase.typeMapping.read(
              DriftSqlType.int,
              data['${effectivePrefix}original_language_code'],
            )!,
          ),
      translatedLanguageCode: $TranslationsTable
          .$convertertranslatedLanguageCode
          .fromSql(
            attachedDatabase.typeMapping.read(
              DriftSqlType.int,
              data['${effectivePrefix}translated_language_code'],
            )!,
          ),
      isApproved:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_approved'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $TranslationsTable createAlias(String alias) {
    return $TranslationsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<SolvroLocale, int, int>
  $converteroriginalLanguageCode = const EnumIndexConverter<SolvroLocale>(
    SolvroLocale.values,
  );
  static JsonTypeConverter2<SolvroLocale, int, int>
  $convertertranslatedLanguageCode = const EnumIndexConverter<SolvroLocale>(
    SolvroLocale.values,
  );
}

class Translation extends DataClass implements Insertable<Translation> {
  /// The hash of the original text.
  final String originalTextHash;

  /// The translated text.
  final String translatedText;

  /// The language code of the original text.
  final SolvroLocale originalLanguageCode;

  /// The language code of the translated text.
  final SolvroLocale translatedLanguageCode;

  /// Whether the translation is approved.
  final bool isApproved;

  /// The date and time the translation was created.
  final DateTime createdAt;
  const Translation({
    required this.originalTextHash,
    required this.translatedText,
    required this.originalLanguageCode,
    required this.translatedLanguageCode,
    required this.isApproved,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['original_text_hash'] = Variable<String>(originalTextHash);
    map['translated_text'] = Variable<String>(translatedText);
    {
      map['original_language_code'] = Variable<int>(
        $TranslationsTable.$converteroriginalLanguageCode.toSql(
          originalLanguageCode,
        ),
      );
    }
    {
      map['translated_language_code'] = Variable<int>(
        $TranslationsTable.$convertertranslatedLanguageCode.toSql(
          translatedLanguageCode,
        ),
      );
    }
    map['is_approved'] = Variable<bool>(isApproved);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  TranslationsCompanion toCompanion(bool nullToAbsent) {
    return TranslationsCompanion(
      originalTextHash: Value(originalTextHash),
      translatedText: Value(translatedText),
      originalLanguageCode: Value(originalLanguageCode),
      translatedLanguageCode: Value(translatedLanguageCode),
      isApproved: Value(isApproved),
      createdAt: Value(createdAt),
    );
  }

  factory Translation.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Translation(
      originalTextHash: serializer.fromJson<String>(json['originalTextHash']),
      translatedText: serializer.fromJson<String>(json['translatedText']),
      originalLanguageCode: $TranslationsTable.$converteroriginalLanguageCode
          .fromJson(serializer.fromJson<int>(json['originalLanguageCode'])),
      translatedLanguageCode: $TranslationsTable
          .$convertertranslatedLanguageCode
          .fromJson(serializer.fromJson<int>(json['translatedLanguageCode'])),
      isApproved: serializer.fromJson<bool>(json['isApproved']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'originalTextHash': serializer.toJson<String>(originalTextHash),
      'translatedText': serializer.toJson<String>(translatedText),
      'originalLanguageCode': serializer.toJson<int>(
        $TranslationsTable.$converteroriginalLanguageCode.toJson(
          originalLanguageCode,
        ),
      ),
      'translatedLanguageCode': serializer.toJson<int>(
        $TranslationsTable.$convertertranslatedLanguageCode.toJson(
          translatedLanguageCode,
        ),
      ),
      'isApproved': serializer.toJson<bool>(isApproved),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Translation copyWith({
    String? originalTextHash,
    String? translatedText,
    SolvroLocale? originalLanguageCode,
    SolvroLocale? translatedLanguageCode,
    bool? isApproved,
    DateTime? createdAt,
  }) => Translation(
    originalTextHash: originalTextHash ?? this.originalTextHash,
    translatedText: translatedText ?? this.translatedText,
    originalLanguageCode: originalLanguageCode ?? this.originalLanguageCode,
    translatedLanguageCode:
        translatedLanguageCode ?? this.translatedLanguageCode,
    isApproved: isApproved ?? this.isApproved,
    createdAt: createdAt ?? this.createdAt,
  );
  Translation copyWithCompanion(TranslationsCompanion data) {
    return Translation(
      originalTextHash:
          data.originalTextHash.present
              ? data.originalTextHash.value
              : this.originalTextHash,
      translatedText:
          data.translatedText.present
              ? data.translatedText.value
              : this.translatedText,
      originalLanguageCode:
          data.originalLanguageCode.present
              ? data.originalLanguageCode.value
              : this.originalLanguageCode,
      translatedLanguageCode:
          data.translatedLanguageCode.present
              ? data.translatedLanguageCode.value
              : this.translatedLanguageCode,
      isApproved:
          data.isApproved.present ? data.isApproved.value : this.isApproved,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Translation(')
          ..write('originalTextHash: $originalTextHash, ')
          ..write('translatedText: $translatedText, ')
          ..write('originalLanguageCode: $originalLanguageCode, ')
          ..write('translatedLanguageCode: $translatedLanguageCode, ')
          ..write('isApproved: $isApproved, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    originalTextHash,
    translatedText,
    originalLanguageCode,
    translatedLanguageCode,
    isApproved,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Translation &&
          other.originalTextHash == this.originalTextHash &&
          other.translatedText == this.translatedText &&
          other.originalLanguageCode == this.originalLanguageCode &&
          other.translatedLanguageCode == this.translatedLanguageCode &&
          other.isApproved == this.isApproved &&
          other.createdAt == this.createdAt);
}

class TranslationsCompanion extends UpdateCompanion<Translation> {
  final Value<String> originalTextHash;
  final Value<String> translatedText;
  final Value<SolvroLocale> originalLanguageCode;
  final Value<SolvroLocale> translatedLanguageCode;
  final Value<bool> isApproved;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const TranslationsCompanion({
    this.originalTextHash = const Value.absent(),
    this.translatedText = const Value.absent(),
    this.originalLanguageCode = const Value.absent(),
    this.translatedLanguageCode = const Value.absent(),
    this.isApproved = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TranslationsCompanion.insert({
    required String originalTextHash,
    required String translatedText,
    this.originalLanguageCode = const Value.absent(),
    required SolvroLocale translatedLanguageCode,
    required bool isApproved,
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : originalTextHash = Value(originalTextHash),
       translatedText = Value(translatedText),
       translatedLanguageCode = Value(translatedLanguageCode),
       isApproved = Value(isApproved);
  static Insertable<Translation> custom({
    Expression<String>? originalTextHash,
    Expression<String>? translatedText,
    Expression<int>? originalLanguageCode,
    Expression<int>? translatedLanguageCode,
    Expression<bool>? isApproved,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (originalTextHash != null) 'original_text_hash': originalTextHash,
      if (translatedText != null) 'translated_text': translatedText,
      if (originalLanguageCode != null)
        'original_language_code': originalLanguageCode,
      if (translatedLanguageCode != null)
        'translated_language_code': translatedLanguageCode,
      if (isApproved != null) 'is_approved': isApproved,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TranslationsCompanion copyWith({
    Value<String>? originalTextHash,
    Value<String>? translatedText,
    Value<SolvroLocale>? originalLanguageCode,
    Value<SolvroLocale>? translatedLanguageCode,
    Value<bool>? isApproved,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return TranslationsCompanion(
      originalTextHash: originalTextHash ?? this.originalTextHash,
      translatedText: translatedText ?? this.translatedText,
      originalLanguageCode: originalLanguageCode ?? this.originalLanguageCode,
      translatedLanguageCode:
          translatedLanguageCode ?? this.translatedLanguageCode,
      isApproved: isApproved ?? this.isApproved,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (originalTextHash.present) {
      map['original_text_hash'] = Variable<String>(originalTextHash.value);
    }
    if (translatedText.present) {
      map['translated_text'] = Variable<String>(translatedText.value);
    }
    if (originalLanguageCode.present) {
      map['original_language_code'] = Variable<int>(
        $TranslationsTable.$converteroriginalLanguageCode.toSql(
          originalLanguageCode.value,
        ),
      );
    }
    if (translatedLanguageCode.present) {
      map['translated_language_code'] = Variable<int>(
        $TranslationsTable.$convertertranslatedLanguageCode.toSql(
          translatedLanguageCode.value,
        ),
      );
    }
    if (isApproved.present) {
      map['is_approved'] = Variable<bool>(isApproved.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TranslationsCompanion(')
          ..write('originalTextHash: $originalTextHash, ')
          ..write('translatedText: $translatedText, ')
          ..write('originalLanguageCode: $originalLanguageCode, ')
          ..write('translatedLanguageCode: $translatedLanguageCode, ')
          ..write('isApproved: $isApproved, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$TranslationsDatabase extends GeneratedDatabase {
  _$TranslationsDatabase(QueryExecutor e) : super(e);
  $TranslationsDatabaseManager get managers =>
      $TranslationsDatabaseManager(this);
  late final $TranslationsTable translations = $TranslationsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [translations];
}

typedef $$TranslationsTableCreateCompanionBuilder =
    TranslationsCompanion Function({
      required String originalTextHash,
      required String translatedText,
      Value<SolvroLocale> originalLanguageCode,
      required SolvroLocale translatedLanguageCode,
      required bool isApproved,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$TranslationsTableUpdateCompanionBuilder =
    TranslationsCompanion Function({
      Value<String> originalTextHash,
      Value<String> translatedText,
      Value<SolvroLocale> originalLanguageCode,
      Value<SolvroLocale> translatedLanguageCode,
      Value<bool> isApproved,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$TranslationsTableFilterComposer
    extends Composer<_$TranslationsDatabase, $TranslationsTable> {
  $$TranslationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get originalTextHash => $composableBuilder(
    column: $table.originalTextHash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translatedText => $composableBuilder(
    column: $table.translatedText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<SolvroLocale, SolvroLocale, int>
  get originalLanguageCode => $composableBuilder(
    column: $table.originalLanguageCode,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<SolvroLocale, SolvroLocale, int>
  get translatedLanguageCode => $composableBuilder(
    column: $table.translatedLanguageCode,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<bool> get isApproved => $composableBuilder(
    column: $table.isApproved,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TranslationsTableOrderingComposer
    extends Composer<_$TranslationsDatabase, $TranslationsTable> {
  $$TranslationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get originalTextHash => $composableBuilder(
    column: $table.originalTextHash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translatedText => $composableBuilder(
    column: $table.translatedText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get originalLanguageCode => $composableBuilder(
    column: $table.originalLanguageCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get translatedLanguageCode => $composableBuilder(
    column: $table.translatedLanguageCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isApproved => $composableBuilder(
    column: $table.isApproved,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TranslationsTableAnnotationComposer
    extends Composer<_$TranslationsDatabase, $TranslationsTable> {
  $$TranslationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get originalTextHash => $composableBuilder(
    column: $table.originalTextHash,
    builder: (column) => column,
  );

  GeneratedColumn<String> get translatedText => $composableBuilder(
    column: $table.translatedText,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<SolvroLocale, int>
  get originalLanguageCode => $composableBuilder(
    column: $table.originalLanguageCode,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<SolvroLocale, int>
  get translatedLanguageCode => $composableBuilder(
    column: $table.translatedLanguageCode,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isApproved => $composableBuilder(
    column: $table.isApproved,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$TranslationsTableTableManager
    extends
        RootTableManager<
          _$TranslationsDatabase,
          $TranslationsTable,
          Translation,
          $$TranslationsTableFilterComposer,
          $$TranslationsTableOrderingComposer,
          $$TranslationsTableAnnotationComposer,
          $$TranslationsTableCreateCompanionBuilder,
          $$TranslationsTableUpdateCompanionBuilder,
          (
            Translation,
            BaseReferences<
              _$TranslationsDatabase,
              $TranslationsTable,
              Translation
            >,
          ),
          Translation,
          PrefetchHooks Function()
        > {
  $$TranslationsTableTableManager(
    _$TranslationsDatabase db,
    $TranslationsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$TranslationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$TranslationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () =>
                  $$TranslationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> originalTextHash = const Value.absent(),
                Value<String> translatedText = const Value.absent(),
                Value<SolvroLocale> originalLanguageCode = const Value.absent(),
                Value<SolvroLocale> translatedLanguageCode =
                    const Value.absent(),
                Value<bool> isApproved = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TranslationsCompanion(
                originalTextHash: originalTextHash,
                translatedText: translatedText,
                originalLanguageCode: originalLanguageCode,
                translatedLanguageCode: translatedLanguageCode,
                isApproved: isApproved,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String originalTextHash,
                required String translatedText,
                Value<SolvroLocale> originalLanguageCode = const Value.absent(),
                required SolvroLocale translatedLanguageCode,
                required bool isApproved,
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TranslationsCompanion.insert(
                originalTextHash: originalTextHash,
                translatedText: translatedText,
                originalLanguageCode: originalLanguageCode,
                translatedLanguageCode: translatedLanguageCode,
                isApproved: isApproved,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TranslationsTableProcessedTableManager =
    ProcessedTableManager<
      _$TranslationsDatabase,
      $TranslationsTable,
      Translation,
      $$TranslationsTableFilterComposer,
      $$TranslationsTableOrderingComposer,
      $$TranslationsTableAnnotationComposer,
      $$TranslationsTableCreateCompanionBuilder,
      $$TranslationsTableUpdateCompanionBuilder,
      (
        Translation,
        BaseReferences<_$TranslationsDatabase, $TranslationsTable, Translation>,
      ),
      Translation,
      PrefetchHooks Function()
    >;

class $TranslationsDatabaseManager {
  final _$TranslationsDatabase _db;
  $TranslationsDatabaseManager(this._db);
  $$TranslationsTableTableManager get translations =>
      $$TranslationsTableTableManager(_db, _db.translations);
}
