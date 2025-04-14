// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TranslationResponse _$TranslationResponseFromJson(Map<String, dynamic> json) =>
    _TranslationResponse(
      originalText: json['originalText'] as String,
      translatedText: json['translatedText'] as String,
      originalLanguageCode: json['originalLanguageCode'] as String,
      translatedLanguageCode: json['translatedLanguageCode'] as String,
      isApproved: json['isApproved'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$TranslationResponseToJson(
  _TranslationResponse instance,
) => <String, dynamic>{
  'originalText': instance.originalText,
  'translatedText': instance.translatedText,
  'originalLanguageCode': instance.originalLanguageCode,
  'translatedLanguageCode': instance.translatedLanguageCode,
  'isApproved': instance.isApproved,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
