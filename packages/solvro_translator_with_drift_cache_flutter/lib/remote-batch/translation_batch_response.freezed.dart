// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_batch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BatchTranslationResult {

 String get originalText; BatchTranslationItem? get translation; bool get success; String? get error;
/// Create a copy of BatchTranslationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BatchTranslationResultCopyWith<BatchTranslationResult> get copyWith => _$BatchTranslationResultCopyWithImpl<BatchTranslationResult>(this as BatchTranslationResult, _$identity);

  /// Serializes this BatchTranslationResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BatchTranslationResult&&(identical(other.originalText, originalText) || other.originalText == originalText)&&(identical(other.translation, translation) || other.translation == translation)&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,originalText,translation,success,error);

@override
String toString() {
  return 'BatchTranslationResult(originalText: $originalText, translation: $translation, success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class $BatchTranslationResultCopyWith<$Res>  {
  factory $BatchTranslationResultCopyWith(BatchTranslationResult value, $Res Function(BatchTranslationResult) _then) = _$BatchTranslationResultCopyWithImpl;
@useResult
$Res call({
 String originalText, BatchTranslationItem? translation, bool success, String? error
});


$BatchTranslationItemCopyWith<$Res>? get translation;

}
/// @nodoc
class _$BatchTranslationResultCopyWithImpl<$Res>
    implements $BatchTranslationResultCopyWith<$Res> {
  _$BatchTranslationResultCopyWithImpl(this._self, this._then);

  final BatchTranslationResult _self;
  final $Res Function(BatchTranslationResult) _then;

/// Create a copy of BatchTranslationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? originalText = null,Object? translation = freezed,Object? success = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
originalText: null == originalText ? _self.originalText : originalText // ignore: cast_nullable_to_non_nullable
as String,translation: freezed == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as BatchTranslationItem?,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BatchTranslationResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BatchTranslationItemCopyWith<$Res>? get translation {
    if (_self.translation == null) {
    return null;
  }

  return $BatchTranslationItemCopyWith<$Res>(_self.translation!, (value) {
    return _then(_self.copyWith(translation: value));
  });
}
}


/// Adds pattern-matching-related methods to [BatchTranslationResult].
extension BatchTranslationResultPatterns on BatchTranslationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BatchTranslationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BatchTranslationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BatchTranslationResult value)  $default,){
final _that = this;
switch (_that) {
case _BatchTranslationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BatchTranslationResult value)?  $default,){
final _that = this;
switch (_that) {
case _BatchTranslationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String originalText,  BatchTranslationItem? translation,  bool success,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BatchTranslationResult() when $default != null:
return $default(_that.originalText,_that.translation,_that.success,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String originalText,  BatchTranslationItem? translation,  bool success,  String? error)  $default,) {final _that = this;
switch (_that) {
case _BatchTranslationResult():
return $default(_that.originalText,_that.translation,_that.success,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String originalText,  BatchTranslationItem? translation,  bool success,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _BatchTranslationResult() when $default != null:
return $default(_that.originalText,_that.translation,_that.success,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BatchTranslationResult implements BatchTranslationResult {
  const _BatchTranslationResult({required this.originalText, required this.translation, required this.success, this.error});
  factory _BatchTranslationResult.fromJson(Map<String, dynamic> json) => _$BatchTranslationResultFromJson(json);

@override final  String originalText;
@override final  BatchTranslationItem? translation;
@override final  bool success;
@override final  String? error;

/// Create a copy of BatchTranslationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BatchTranslationResultCopyWith<_BatchTranslationResult> get copyWith => __$BatchTranslationResultCopyWithImpl<_BatchTranslationResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BatchTranslationResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BatchTranslationResult&&(identical(other.originalText, originalText) || other.originalText == originalText)&&(identical(other.translation, translation) || other.translation == translation)&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,originalText,translation,success,error);

@override
String toString() {
  return 'BatchTranslationResult(originalText: $originalText, translation: $translation, success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class _$BatchTranslationResultCopyWith<$Res> implements $BatchTranslationResultCopyWith<$Res> {
  factory _$BatchTranslationResultCopyWith(_BatchTranslationResult value, $Res Function(_BatchTranslationResult) _then) = __$BatchTranslationResultCopyWithImpl;
@override @useResult
$Res call({
 String originalText, BatchTranslationItem? translation, bool success, String? error
});


@override $BatchTranslationItemCopyWith<$Res>? get translation;

}
/// @nodoc
class __$BatchTranslationResultCopyWithImpl<$Res>
    implements _$BatchTranslationResultCopyWith<$Res> {
  __$BatchTranslationResultCopyWithImpl(this._self, this._then);

  final _BatchTranslationResult _self;
  final $Res Function(_BatchTranslationResult) _then;

/// Create a copy of BatchTranslationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? originalText = null,Object? translation = freezed,Object? success = null,Object? error = freezed,}) {
  return _then(_BatchTranslationResult(
originalText: null == originalText ? _self.originalText : originalText // ignore: cast_nullable_to_non_nullable
as String,translation: freezed == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as BatchTranslationItem?,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BatchTranslationResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BatchTranslationItemCopyWith<$Res>? get translation {
    if (_self.translation == null) {
    return null;
  }

  return $BatchTranslationItemCopyWith<$Res>(_self.translation!, (value) {
    return _then(_self.copyWith(translation: value));
  });
}
}


/// @nodoc
mixin _$BatchTranslationItem {

 String get hash; String get originalText; String get translatedText; String get originalLanguageCode; String get translatedLanguageCode; bool get isApproved; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of BatchTranslationItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BatchTranslationItemCopyWith<BatchTranslationItem> get copyWith => _$BatchTranslationItemCopyWithImpl<BatchTranslationItem>(this as BatchTranslationItem, _$identity);

  /// Serializes this BatchTranslationItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BatchTranslationItem&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.originalText, originalText) || other.originalText == originalText)&&(identical(other.translatedText, translatedText) || other.translatedText == translatedText)&&(identical(other.originalLanguageCode, originalLanguageCode) || other.originalLanguageCode == originalLanguageCode)&&(identical(other.translatedLanguageCode, translatedLanguageCode) || other.translatedLanguageCode == translatedLanguageCode)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash,originalText,translatedText,originalLanguageCode,translatedLanguageCode,isApproved,createdAt,updatedAt);

@override
String toString() {
  return 'BatchTranslationItem(hash: $hash, originalText: $originalText, translatedText: $translatedText, originalLanguageCode: $originalLanguageCode, translatedLanguageCode: $translatedLanguageCode, isApproved: $isApproved, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BatchTranslationItemCopyWith<$Res>  {
  factory $BatchTranslationItemCopyWith(BatchTranslationItem value, $Res Function(BatchTranslationItem) _then) = _$BatchTranslationItemCopyWithImpl;
@useResult
$Res call({
 String hash, String originalText, String translatedText, String originalLanguageCode, String translatedLanguageCode, bool isApproved, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$BatchTranslationItemCopyWithImpl<$Res>
    implements $BatchTranslationItemCopyWith<$Res> {
  _$BatchTranslationItemCopyWithImpl(this._self, this._then);

  final BatchTranslationItem _self;
  final $Res Function(BatchTranslationItem) _then;

/// Create a copy of BatchTranslationItem
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


/// Adds pattern-matching-related methods to [BatchTranslationItem].
extension BatchTranslationItemPatterns on BatchTranslationItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BatchTranslationItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BatchTranslationItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BatchTranslationItem value)  $default,){
final _that = this;
switch (_that) {
case _BatchTranslationItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BatchTranslationItem value)?  $default,){
final _that = this;
switch (_that) {
case _BatchTranslationItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String hash,  String originalText,  String translatedText,  String originalLanguageCode,  String translatedLanguageCode,  bool isApproved,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BatchTranslationItem() when $default != null:
return $default(_that.hash,_that.originalText,_that.translatedText,_that.originalLanguageCode,_that.translatedLanguageCode,_that.isApproved,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String hash,  String originalText,  String translatedText,  String originalLanguageCode,  String translatedLanguageCode,  bool isApproved,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _BatchTranslationItem():
return $default(_that.hash,_that.originalText,_that.translatedText,_that.originalLanguageCode,_that.translatedLanguageCode,_that.isApproved,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String hash,  String originalText,  String translatedText,  String originalLanguageCode,  String translatedLanguageCode,  bool isApproved,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _BatchTranslationItem() when $default != null:
return $default(_that.hash,_that.originalText,_that.translatedText,_that.originalLanguageCode,_that.translatedLanguageCode,_that.isApproved,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BatchTranslationItem implements BatchTranslationItem {
  const _BatchTranslationItem({required this.hash, required this.originalText, required this.translatedText, required this.originalLanguageCode, required this.translatedLanguageCode, required this.isApproved, required this.createdAt, required this.updatedAt});
  factory _BatchTranslationItem.fromJson(Map<String, dynamic> json) => _$BatchTranslationItemFromJson(json);

@override final  String hash;
@override final  String originalText;
@override final  String translatedText;
@override final  String originalLanguageCode;
@override final  String translatedLanguageCode;
@override final  bool isApproved;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of BatchTranslationItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BatchTranslationItemCopyWith<_BatchTranslationItem> get copyWith => __$BatchTranslationItemCopyWithImpl<_BatchTranslationItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BatchTranslationItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BatchTranslationItem&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.originalText, originalText) || other.originalText == originalText)&&(identical(other.translatedText, translatedText) || other.translatedText == translatedText)&&(identical(other.originalLanguageCode, originalLanguageCode) || other.originalLanguageCode == originalLanguageCode)&&(identical(other.translatedLanguageCode, translatedLanguageCode) || other.translatedLanguageCode == translatedLanguageCode)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash,originalText,translatedText,originalLanguageCode,translatedLanguageCode,isApproved,createdAt,updatedAt);

@override
String toString() {
  return 'BatchTranslationItem(hash: $hash, originalText: $originalText, translatedText: $translatedText, originalLanguageCode: $originalLanguageCode, translatedLanguageCode: $translatedLanguageCode, isApproved: $isApproved, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BatchTranslationItemCopyWith<$Res> implements $BatchTranslationItemCopyWith<$Res> {
  factory _$BatchTranslationItemCopyWith(_BatchTranslationItem value, $Res Function(_BatchTranslationItem) _then) = __$BatchTranslationItemCopyWithImpl;
@override @useResult
$Res call({
 String hash, String originalText, String translatedText, String originalLanguageCode, String translatedLanguageCode, bool isApproved, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$BatchTranslationItemCopyWithImpl<$Res>
    implements _$BatchTranslationItemCopyWith<$Res> {
  __$BatchTranslationItemCopyWithImpl(this._self, this._then);

  final _BatchTranslationItem _self;
  final $Res Function(_BatchTranslationItem) _then;

/// Create a copy of BatchTranslationItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hash = null,Object? originalText = null,Object? translatedText = null,Object? originalLanguageCode = null,Object? translatedLanguageCode = null,Object? isApproved = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_BatchTranslationItem(
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
mixin _$TranslationBatchResponse {

 List<BatchTranslationResult> get translations; int get total; int get successful; int get failed;
/// Create a copy of TranslationBatchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranslationBatchResponseCopyWith<TranslationBatchResponse> get copyWith => _$TranslationBatchResponseCopyWithImpl<TranslationBatchResponse>(this as TranslationBatchResponse, _$identity);

  /// Serializes this TranslationBatchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranslationBatchResponse&&const DeepCollectionEquality().equals(other.translations, translations)&&(identical(other.total, total) || other.total == total)&&(identical(other.successful, successful) || other.successful == successful)&&(identical(other.failed, failed) || other.failed == failed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(translations),total,successful,failed);

@override
String toString() {
  return 'TranslationBatchResponse(translations: $translations, total: $total, successful: $successful, failed: $failed)';
}


}

/// @nodoc
abstract mixin class $TranslationBatchResponseCopyWith<$Res>  {
  factory $TranslationBatchResponseCopyWith(TranslationBatchResponse value, $Res Function(TranslationBatchResponse) _then) = _$TranslationBatchResponseCopyWithImpl;
@useResult
$Res call({
 List<BatchTranslationResult> translations, int total, int successful, int failed
});




}
/// @nodoc
class _$TranslationBatchResponseCopyWithImpl<$Res>
    implements $TranslationBatchResponseCopyWith<$Res> {
  _$TranslationBatchResponseCopyWithImpl(this._self, this._then);

  final TranslationBatchResponse _self;
  final $Res Function(TranslationBatchResponse) _then;

/// Create a copy of TranslationBatchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? translations = null,Object? total = null,Object? successful = null,Object? failed = null,}) {
  return _then(_self.copyWith(
translations: null == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as List<BatchTranslationResult>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,successful: null == successful ? _self.successful : successful // ignore: cast_nullable_to_non_nullable
as int,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TranslationBatchResponse].
extension TranslationBatchResponsePatterns on TranslationBatchResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranslationBatchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranslationBatchResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranslationBatchResponse value)  $default,){
final _that = this;
switch (_that) {
case _TranslationBatchResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranslationBatchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TranslationBatchResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BatchTranslationResult> translations,  int total,  int successful,  int failed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranslationBatchResponse() when $default != null:
return $default(_that.translations,_that.total,_that.successful,_that.failed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BatchTranslationResult> translations,  int total,  int successful,  int failed)  $default,) {final _that = this;
switch (_that) {
case _TranslationBatchResponse():
return $default(_that.translations,_that.total,_that.successful,_that.failed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BatchTranslationResult> translations,  int total,  int successful,  int failed)?  $default,) {final _that = this;
switch (_that) {
case _TranslationBatchResponse() when $default != null:
return $default(_that.translations,_that.total,_that.successful,_that.failed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TranslationBatchResponse implements TranslationBatchResponse {
  const _TranslationBatchResponse({required final  List<BatchTranslationResult> translations, required this.total, required this.successful, required this.failed}): _translations = translations;
  factory _TranslationBatchResponse.fromJson(Map<String, dynamic> json) => _$TranslationBatchResponseFromJson(json);

 final  List<BatchTranslationResult> _translations;
@override List<BatchTranslationResult> get translations {
  if (_translations is EqualUnmodifiableListView) return _translations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_translations);
}

@override final  int total;
@override final  int successful;
@override final  int failed;

/// Create a copy of TranslationBatchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationBatchResponseCopyWith<_TranslationBatchResponse> get copyWith => __$TranslationBatchResponseCopyWithImpl<_TranslationBatchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslationBatchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranslationBatchResponse&&const DeepCollectionEquality().equals(other._translations, _translations)&&(identical(other.total, total) || other.total == total)&&(identical(other.successful, successful) || other.successful == successful)&&(identical(other.failed, failed) || other.failed == failed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_translations),total,successful,failed);

@override
String toString() {
  return 'TranslationBatchResponse(translations: $translations, total: $total, successful: $successful, failed: $failed)';
}


}

/// @nodoc
abstract mixin class _$TranslationBatchResponseCopyWith<$Res> implements $TranslationBatchResponseCopyWith<$Res> {
  factory _$TranslationBatchResponseCopyWith(_TranslationBatchResponse value, $Res Function(_TranslationBatchResponse) _then) = __$TranslationBatchResponseCopyWithImpl;
@override @useResult
$Res call({
 List<BatchTranslationResult> translations, int total, int successful, int failed
});




}
/// @nodoc
class __$TranslationBatchResponseCopyWithImpl<$Res>
    implements _$TranslationBatchResponseCopyWith<$Res> {
  __$TranslationBatchResponseCopyWithImpl(this._self, this._then);

  final _TranslationBatchResponse _self;
  final $Res Function(_TranslationBatchResponse) _then;

/// Create a copy of TranslationBatchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? translations = null,Object? total = null,Object? successful = null,Object? failed = null,}) {
  return _then(_TranslationBatchResponse(
translations: null == translations ? _self._translations : translations // ignore: cast_nullable_to_non_nullable
as List<BatchTranslationResult>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,successful: null == successful ? _self.successful : successful // ignore: cast_nullable_to_non_nullable
as int,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
