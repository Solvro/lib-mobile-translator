// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_batch_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TranslationBatchRequest {

 List<String> get texts; String get originalLanguageCode; String get translatedLanguageCode;
/// Create a copy of TranslationBatchRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranslationBatchRequestCopyWith<TranslationBatchRequest> get copyWith => _$TranslationBatchRequestCopyWithImpl<TranslationBatchRequest>(this as TranslationBatchRequest, _$identity);

  /// Serializes this TranslationBatchRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranslationBatchRequest&&const DeepCollectionEquality().equals(other.texts, texts)&&(identical(other.originalLanguageCode, originalLanguageCode) || other.originalLanguageCode == originalLanguageCode)&&(identical(other.translatedLanguageCode, translatedLanguageCode) || other.translatedLanguageCode == translatedLanguageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(texts),originalLanguageCode,translatedLanguageCode);

@override
String toString() {
  return 'TranslationBatchRequest(texts: $texts, originalLanguageCode: $originalLanguageCode, translatedLanguageCode: $translatedLanguageCode)';
}


}

/// @nodoc
abstract mixin class $TranslationBatchRequestCopyWith<$Res>  {
  factory $TranslationBatchRequestCopyWith(TranslationBatchRequest value, $Res Function(TranslationBatchRequest) _then) = _$TranslationBatchRequestCopyWithImpl;
@useResult
$Res call({
 List<String> texts, String originalLanguageCode, String translatedLanguageCode
});




}
/// @nodoc
class _$TranslationBatchRequestCopyWithImpl<$Res>
    implements $TranslationBatchRequestCopyWith<$Res> {
  _$TranslationBatchRequestCopyWithImpl(this._self, this._then);

  final TranslationBatchRequest _self;
  final $Res Function(TranslationBatchRequest) _then;

/// Create a copy of TranslationBatchRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? texts = null,Object? originalLanguageCode = null,Object? translatedLanguageCode = null,}) {
  return _then(_self.copyWith(
texts: null == texts ? _self.texts : texts // ignore: cast_nullable_to_non_nullable
as List<String>,originalLanguageCode: null == originalLanguageCode ? _self.originalLanguageCode : originalLanguageCode // ignore: cast_nullable_to_non_nullable
as String,translatedLanguageCode: null == translatedLanguageCode ? _self.translatedLanguageCode : translatedLanguageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TranslationBatchRequest].
extension TranslationBatchRequestPatterns on TranslationBatchRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranslationBatchRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranslationBatchRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranslationBatchRequest value)  $default,){
final _that = this;
switch (_that) {
case _TranslationBatchRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranslationBatchRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TranslationBatchRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> texts,  String originalLanguageCode,  String translatedLanguageCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranslationBatchRequest() when $default != null:
return $default(_that.texts,_that.originalLanguageCode,_that.translatedLanguageCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> texts,  String originalLanguageCode,  String translatedLanguageCode)  $default,) {final _that = this;
switch (_that) {
case _TranslationBatchRequest():
return $default(_that.texts,_that.originalLanguageCode,_that.translatedLanguageCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> texts,  String originalLanguageCode,  String translatedLanguageCode)?  $default,) {final _that = this;
switch (_that) {
case _TranslationBatchRequest() when $default != null:
return $default(_that.texts,_that.originalLanguageCode,_that.translatedLanguageCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TranslationBatchRequest implements TranslationBatchRequest {
  const _TranslationBatchRequest({required final  List<String> texts, required this.originalLanguageCode, required this.translatedLanguageCode}): _texts = texts;
  factory _TranslationBatchRequest.fromJson(Map<String, dynamic> json) => _$TranslationBatchRequestFromJson(json);

 final  List<String> _texts;
@override List<String> get texts {
  if (_texts is EqualUnmodifiableListView) return _texts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_texts);
}

@override final  String originalLanguageCode;
@override final  String translatedLanguageCode;

/// Create a copy of TranslationBatchRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationBatchRequestCopyWith<_TranslationBatchRequest> get copyWith => __$TranslationBatchRequestCopyWithImpl<_TranslationBatchRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslationBatchRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranslationBatchRequest&&const DeepCollectionEquality().equals(other._texts, _texts)&&(identical(other.originalLanguageCode, originalLanguageCode) || other.originalLanguageCode == originalLanguageCode)&&(identical(other.translatedLanguageCode, translatedLanguageCode) || other.translatedLanguageCode == translatedLanguageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_texts),originalLanguageCode,translatedLanguageCode);

@override
String toString() {
  return 'TranslationBatchRequest(texts: $texts, originalLanguageCode: $originalLanguageCode, translatedLanguageCode: $translatedLanguageCode)';
}


}

/// @nodoc
abstract mixin class _$TranslationBatchRequestCopyWith<$Res> implements $TranslationBatchRequestCopyWith<$Res> {
  factory _$TranslationBatchRequestCopyWith(_TranslationBatchRequest value, $Res Function(_TranslationBatchRequest) _then) = __$TranslationBatchRequestCopyWithImpl;
@override @useResult
$Res call({
 List<String> texts, String originalLanguageCode, String translatedLanguageCode
});




}
/// @nodoc
class __$TranslationBatchRequestCopyWithImpl<$Res>
    implements _$TranslationBatchRequestCopyWith<$Res> {
  __$TranslationBatchRequestCopyWithImpl(this._self, this._then);

  final _TranslationBatchRequest _self;
  final $Res Function(_TranslationBatchRequest) _then;

/// Create a copy of TranslationBatchRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? texts = null,Object? originalLanguageCode = null,Object? translatedLanguageCode = null,}) {
  return _then(_TranslationBatchRequest(
texts: null == texts ? _self._texts : texts // ignore: cast_nullable_to_non_nullable
as List<String>,originalLanguageCode: null == originalLanguageCode ? _self.originalLanguageCode : originalLanguageCode // ignore: cast_nullable_to_non_nullable
as String,translatedLanguageCode: null == translatedLanguageCode ? _self.translatedLanguageCode : translatedLanguageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
