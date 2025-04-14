// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TranslationRequest {

 String get originalText; String get originalLanguageCode; String get translatedLanguageCode;
/// Create a copy of TranslationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranslationRequestCopyWith<TranslationRequest> get copyWith => _$TranslationRequestCopyWithImpl<TranslationRequest>(this as TranslationRequest, _$identity);

  /// Serializes this TranslationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranslationRequest&&(identical(other.originalText, originalText) || other.originalText == originalText)&&(identical(other.originalLanguageCode, originalLanguageCode) || other.originalLanguageCode == originalLanguageCode)&&(identical(other.translatedLanguageCode, translatedLanguageCode) || other.translatedLanguageCode == translatedLanguageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,originalText,originalLanguageCode,translatedLanguageCode);

@override
String toString() {
  return 'TranslationRequest(originalText: $originalText, originalLanguageCode: $originalLanguageCode, translatedLanguageCode: $translatedLanguageCode)';
}


}

/// @nodoc
abstract mixin class $TranslationRequestCopyWith<$Res>  {
  factory $TranslationRequestCopyWith(TranslationRequest value, $Res Function(TranslationRequest) _then) = _$TranslationRequestCopyWithImpl;
@useResult
$Res call({
 String originalText, String originalLanguageCode, String translatedLanguageCode
});




}
/// @nodoc
class _$TranslationRequestCopyWithImpl<$Res>
    implements $TranslationRequestCopyWith<$Res> {
  _$TranslationRequestCopyWithImpl(this._self, this._then);

  final TranslationRequest _self;
  final $Res Function(TranslationRequest) _then;

/// Create a copy of TranslationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? originalText = null,Object? originalLanguageCode = null,Object? translatedLanguageCode = null,}) {
  return _then(_self.copyWith(
originalText: null == originalText ? _self.originalText : originalText // ignore: cast_nullable_to_non_nullable
as String,originalLanguageCode: null == originalLanguageCode ? _self.originalLanguageCode : originalLanguageCode // ignore: cast_nullable_to_non_nullable
as String,translatedLanguageCode: null == translatedLanguageCode ? _self.translatedLanguageCode : translatedLanguageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TranslationRequest implements TranslationRequest {
  const _TranslationRequest({required this.originalText, required this.originalLanguageCode, required this.translatedLanguageCode});
  factory _TranslationRequest.fromJson(Map<String, dynamic> json) => _$TranslationRequestFromJson(json);

@override final  String originalText;
@override final  String originalLanguageCode;
@override final  String translatedLanguageCode;

/// Create a copy of TranslationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationRequestCopyWith<_TranslationRequest> get copyWith => __$TranslationRequestCopyWithImpl<_TranslationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranslationRequest&&(identical(other.originalText, originalText) || other.originalText == originalText)&&(identical(other.originalLanguageCode, originalLanguageCode) || other.originalLanguageCode == originalLanguageCode)&&(identical(other.translatedLanguageCode, translatedLanguageCode) || other.translatedLanguageCode == translatedLanguageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,originalText,originalLanguageCode,translatedLanguageCode);

@override
String toString() {
  return 'TranslationRequest(originalText: $originalText, originalLanguageCode: $originalLanguageCode, translatedLanguageCode: $translatedLanguageCode)';
}


}

/// @nodoc
abstract mixin class _$TranslationRequestCopyWith<$Res> implements $TranslationRequestCopyWith<$Res> {
  factory _$TranslationRequestCopyWith(_TranslationRequest value, $Res Function(_TranslationRequest) _then) = __$TranslationRequestCopyWithImpl;
@override @useResult
$Res call({
 String originalText, String originalLanguageCode, String translatedLanguageCode
});




}
/// @nodoc
class __$TranslationRequestCopyWithImpl<$Res>
    implements _$TranslationRequestCopyWith<$Res> {
  __$TranslationRequestCopyWithImpl(this._self, this._then);

  final _TranslationRequest _self;
  final $Res Function(_TranslationRequest) _then;

/// Create a copy of TranslationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? originalText = null,Object? originalLanguageCode = null,Object? translatedLanguageCode = null,}) {
  return _then(_TranslationRequest(
originalText: null == originalText ? _self.originalText : originalText // ignore: cast_nullable_to_non_nullable
as String,originalLanguageCode: null == originalLanguageCode ? _self.originalLanguageCode : originalLanguageCode // ignore: cast_nullable_to_non_nullable
as String,translatedLanguageCode: null == translatedLanguageCode ? _self.translatedLanguageCode : translatedLanguageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
