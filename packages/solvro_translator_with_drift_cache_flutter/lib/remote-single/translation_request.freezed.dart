// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [TranslationRequest].
extension TranslationRequestPatterns on TranslationRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranslationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranslationRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranslationRequest value)  $default,){
final _that = this;
switch (_that) {
case _TranslationRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranslationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TranslationRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String originalText,  String originalLanguageCode,  String translatedLanguageCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranslationRequest() when $default != null:
return $default(_that.originalText,_that.originalLanguageCode,_that.translatedLanguageCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String originalText,  String originalLanguageCode,  String translatedLanguageCode)  $default,) {final _that = this;
switch (_that) {
case _TranslationRequest():
return $default(_that.originalText,_that.originalLanguageCode,_that.translatedLanguageCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String originalText,  String originalLanguageCode,  String translatedLanguageCode)?  $default,) {final _that = this;
switch (_that) {
case _TranslationRequest() when $default != null:
return $default(_that.originalText,_that.originalLanguageCode,_that.translatedLanguageCode);case _:
  return null;

}
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
