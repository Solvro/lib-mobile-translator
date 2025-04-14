// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
RemoteTranslationResponse _$RemoteTranslationResponseFromJson(
  Map<String, dynamic> json
) {
    return _TranslationResponse.fromJson(
      json
    );
}

/// @nodoc
mixin _$RemoteTranslationResponse {

 String get hash; String get originalText; String get translatedText; String get originalLanguageCode; String get translatedLanguageCode; bool get isApproved; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of RemoteTranslationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteTranslationResponseCopyWith<RemoteTranslationResponse> get copyWith => _$RemoteTranslationResponseCopyWithImpl<RemoteTranslationResponse>(this as RemoteTranslationResponse, _$identity);

  /// Serializes this RemoteTranslationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteTranslationResponse&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.originalText, originalText) || other.originalText == originalText)&&(identical(other.translatedText, translatedText) || other.translatedText == translatedText)&&(identical(other.originalLanguageCode, originalLanguageCode) || other.originalLanguageCode == originalLanguageCode)&&(identical(other.translatedLanguageCode, translatedLanguageCode) || other.translatedLanguageCode == translatedLanguageCode)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash,originalText,translatedText,originalLanguageCode,translatedLanguageCode,isApproved,createdAt,updatedAt);

@override
String toString() {
  return 'RemoteTranslationResponse(hash: $hash, originalText: $originalText, translatedText: $translatedText, originalLanguageCode: $originalLanguageCode, translatedLanguageCode: $translatedLanguageCode, isApproved: $isApproved, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RemoteTranslationResponseCopyWith<$Res>  {
  factory $RemoteTranslationResponseCopyWith(RemoteTranslationResponse value, $Res Function(RemoteTranslationResponse) _then) = _$RemoteTranslationResponseCopyWithImpl;
@useResult
$Res call({
 String hash, String originalText, String translatedText, String originalLanguageCode, String translatedLanguageCode, bool isApproved, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$RemoteTranslationResponseCopyWithImpl<$Res>
    implements $RemoteTranslationResponseCopyWith<$Res> {
  _$RemoteTranslationResponseCopyWithImpl(this._self, this._then);

  final RemoteTranslationResponse _self;
  final $Res Function(RemoteTranslationResponse) _then;

/// Create a copy of RemoteTranslationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hash = null,Object? originalText = null,Object? translatedText = null,Object? originalLanguageCode = null,Object? translatedLanguageCode = null,Object? isApproved = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,originalText: null == originalText ? _self.originalText : originalText // ignore: cast_nullable_to_non_nullable
as String,translatedText: null == translatedText ? _self.translatedText : translatedText // ignore: cast_nullable_to_non_nullable
as String,originalLanguageCode: null == originalLanguageCode ? _self.originalLanguageCode : originalLanguageCode // ignore: cast_nullable_to_non_nullable
as String,translatedLanguageCode: null == translatedLanguageCode ? _self.translatedLanguageCode : translatedLanguageCode // ignore: cast_nullable_to_non_nullable
as String,isApproved: null == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TranslationResponse extends RemoteTranslationResponse {
   _TranslationResponse({required this.hash, required this.originalText, required this.translatedText, required this.originalLanguageCode, required this.translatedLanguageCode, required this.isApproved, required this.createdAt, required this.updatedAt}): super._();
  factory _TranslationResponse.fromJson(Map<String, dynamic> json) => _$TranslationResponseFromJson(json);

@override final  String hash;
@override final  String originalText;
@override final  String translatedText;
@override final  String originalLanguageCode;
@override final  String translatedLanguageCode;
@override final  bool isApproved;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of RemoteTranslationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationResponseCopyWith<_TranslationResponse> get copyWith => __$TranslationResponseCopyWithImpl<_TranslationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranslationResponse&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.originalText, originalText) || other.originalText == originalText)&&(identical(other.translatedText, translatedText) || other.translatedText == translatedText)&&(identical(other.originalLanguageCode, originalLanguageCode) || other.originalLanguageCode == originalLanguageCode)&&(identical(other.translatedLanguageCode, translatedLanguageCode) || other.translatedLanguageCode == translatedLanguageCode)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash,originalText,translatedText,originalLanguageCode,translatedLanguageCode,isApproved,createdAt,updatedAt);

@override
String toString() {
  return 'RemoteTranslationResponse(hash: $hash, originalText: $originalText, translatedText: $translatedText, originalLanguageCode: $originalLanguageCode, translatedLanguageCode: $translatedLanguageCode, isApproved: $isApproved, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TranslationResponseCopyWith<$Res> implements $RemoteTranslationResponseCopyWith<$Res> {
  factory _$TranslationResponseCopyWith(_TranslationResponse value, $Res Function(_TranslationResponse) _then) = __$TranslationResponseCopyWithImpl;
@override @useResult
$Res call({
 String hash, String originalText, String translatedText, String originalLanguageCode, String translatedLanguageCode, bool isApproved, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$TranslationResponseCopyWithImpl<$Res>
    implements _$TranslationResponseCopyWith<$Res> {
  __$TranslationResponseCopyWithImpl(this._self, this._then);

  final _TranslationResponse _self;
  final $Res Function(_TranslationResponse) _then;

/// Create a copy of RemoteTranslationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hash = null,Object? originalText = null,Object? translatedText = null,Object? originalLanguageCode = null,Object? translatedLanguageCode = null,Object? isApproved = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_TranslationResponse(
hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,originalText: null == originalText ? _self.originalText : originalText // ignore: cast_nullable_to_non_nullable
as String,translatedText: null == translatedText ? _self.translatedText : translatedText // ignore: cast_nullable_to_non_nullable
as String,originalLanguageCode: null == originalLanguageCode ? _self.originalLanguageCode : originalLanguageCode // ignore: cast_nullable_to_non_nullable
as String,translatedLanguageCode: null == translatedLanguageCode ? _self.translatedLanguageCode : translatedLanguageCode // ignore: cast_nullable_to_non_nullable
as String,isApproved: null == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
