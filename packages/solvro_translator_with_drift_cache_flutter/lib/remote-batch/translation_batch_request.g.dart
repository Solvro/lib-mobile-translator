// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_batch_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TranslationBatchRequest _$TranslationBatchRequestFromJson(Map<String, dynamic> json) => _TranslationBatchRequest(
  texts: (json['texts'] as List<dynamic>).map((e) => e as String).toList(),
  originalLanguageCode: json['originalLanguageCode'] as String,
  translatedLanguageCode: json['translatedLanguageCode'] as String,
);

Map<String, dynamic> _$TranslationBatchRequestToJson(_TranslationBatchRequest instance) => <String, dynamic>{
  'texts': instance.texts,
  'originalLanguageCode': instance.originalLanguageCode,
  'translatedLanguageCode': instance.translatedLanguageCode,
};
