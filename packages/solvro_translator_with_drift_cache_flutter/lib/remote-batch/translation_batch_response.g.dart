// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_batch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BatchTranslationResult _$BatchTranslationResultFromJson(
  Map<String, dynamic> json,
) => _BatchTranslationResult(
  originalText: json['originalText'] as String,
  translation: json['translation'] == null
      ? null
      : BatchTranslationItem.fromJson(
          json['translation'] as Map<String, dynamic>,
        ),
  success: json['success'] as bool,
  error: json['error'] as String?,
);

Map<String, dynamic> _$BatchTranslationResultToJson(
  _BatchTranslationResult instance,
) => <String, dynamic>{
  'originalText': instance.originalText,
  'translation': instance.translation,
  'success': instance.success,
  'error': instance.error,
};

_BatchTranslationItem _$BatchTranslationItemFromJson(
  Map<String, dynamic> json,
) => _BatchTranslationItem(
  hash: json['hash'] as String,
  originalText: json['originalText'] as String,
  translatedText: json['translatedText'] as String,
  originalLanguageCode: json['originalLanguageCode'] as String,
  translatedLanguageCode: json['translatedLanguageCode'] as String,
  isApproved: json['isApproved'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$BatchTranslationItemToJson(
  _BatchTranslationItem instance,
) => <String, dynamic>{
  'hash': instance.hash,
  'originalText': instance.originalText,
  'translatedText': instance.translatedText,
  'originalLanguageCode': instance.originalLanguageCode,
  'translatedLanguageCode': instance.translatedLanguageCode,
  'isApproved': instance.isApproved,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

_TranslationBatchResponse _$TranslationBatchResponseFromJson(
  Map<String, dynamic> json,
) => _TranslationBatchResponse(
  translations: (json['translations'] as List<dynamic>)
      .map((e) => BatchTranslationResult.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  successful: (json['successful'] as num).toInt(),
  failed: (json['failed'] as num).toInt(),
);

Map<String, dynamic> _$TranslationBatchResponseToJson(
  _TranslationBatchResponse instance,
) => <String, dynamic>{
  'translations': instance.translations,
  'total': instance.total,
  'successful': instance.successful,
  'failed': instance.failed,
};
