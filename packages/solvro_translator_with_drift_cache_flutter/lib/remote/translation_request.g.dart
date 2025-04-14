// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TranslationRequest _$TranslationRequestFromJson(Map<String, dynamic> json) =>
    _TranslationRequest(
      originalText: json['originalText'] as String,
      originalLanguageCode: json['originalLanguageCode'] as String,
      translatedLanguageCode: json['translatedLanguageCode'] as String,
    );

Map<String, dynamic> _$TranslationRequestToJson(_TranslationRequest instance) =>
    <String, dynamic>{
      'originalText': instance.originalText,
      'originalLanguageCode': instance.originalLanguageCode,
      'translatedLanguageCode': instance.translatedLanguageCode,
    };
