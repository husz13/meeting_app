// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_media_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadParams {

 String? get url; String get path; String get remotePath; int? get chunkSize; ProgressCallback? get onProgress; CancelToken? get cancelToken;
/// Create a copy of UploadParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadParamsCopyWith<UploadParams> get copyWith => _$UploadParamsCopyWithImpl<UploadParams>(this as UploadParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadParams&&(identical(other.url, url) || other.url == url)&&(identical(other.path, path) || other.path == path)&&(identical(other.remotePath, remotePath) || other.remotePath == remotePath)&&(identical(other.chunkSize, chunkSize) || other.chunkSize == chunkSize)&&(identical(other.onProgress, onProgress) || other.onProgress == onProgress)&&(identical(other.cancelToken, cancelToken) || other.cancelToken == cancelToken));
}


@override
int get hashCode => Object.hash(runtimeType,url,path,remotePath,chunkSize,onProgress,cancelToken);

@override
String toString() {
  return 'UploadParams(url: $url, path: $path, remotePath: $remotePath, chunkSize: $chunkSize, onProgress: $onProgress, cancelToken: $cancelToken)';
}


}

/// @nodoc
abstract mixin class $UploadParamsCopyWith<$Res>  {
  factory $UploadParamsCopyWith(UploadParams value, $Res Function(UploadParams) _then) = _$UploadParamsCopyWithImpl;
@useResult
$Res call({
 String? url, String path, String remotePath, int? chunkSize, ProgressCallback? onProgress, CancelToken? cancelToken
});




}
/// @nodoc
class _$UploadParamsCopyWithImpl<$Res>
    implements $UploadParamsCopyWith<$Res> {
  _$UploadParamsCopyWithImpl(this._self, this._then);

  final UploadParams _self;
  final $Res Function(UploadParams) _then;

/// Create a copy of UploadParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,Object? path = null,Object? remotePath = null,Object? chunkSize = freezed,Object? onProgress = freezed,Object? cancelToken = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,remotePath: null == remotePath ? _self.remotePath : remotePath // ignore: cast_nullable_to_non_nullable
as String,chunkSize: freezed == chunkSize ? _self.chunkSize : chunkSize // ignore: cast_nullable_to_non_nullable
as int?,onProgress: freezed == onProgress ? _self.onProgress : onProgress // ignore: cast_nullable_to_non_nullable
as ProgressCallback?,cancelToken: freezed == cancelToken ? _self.cancelToken : cancelToken // ignore: cast_nullable_to_non_nullable
as CancelToken?,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadParams].
extension UploadParamsPatterns on UploadParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadParams value)  $default,){
final _that = this;
switch (_that) {
case _UploadParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadParams value)?  $default,){
final _that = this;
switch (_that) {
case _UploadParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? url,  String path,  String remotePath,  int? chunkSize,  ProgressCallback? onProgress,  CancelToken? cancelToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadParams() when $default != null:
return $default(_that.url,_that.path,_that.remotePath,_that.chunkSize,_that.onProgress,_that.cancelToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? url,  String path,  String remotePath,  int? chunkSize,  ProgressCallback? onProgress,  CancelToken? cancelToken)  $default,) {final _that = this;
switch (_that) {
case _UploadParams():
return $default(_that.url,_that.path,_that.remotePath,_that.chunkSize,_that.onProgress,_that.cancelToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? url,  String path,  String remotePath,  int? chunkSize,  ProgressCallback? onProgress,  CancelToken? cancelToken)?  $default,) {final _that = this;
switch (_that) {
case _UploadParams() when $default != null:
return $default(_that.url,_that.path,_that.remotePath,_that.chunkSize,_that.onProgress,_that.cancelToken);case _:
  return null;

}
}

}

/// @nodoc


class _UploadParams extends UploadParams {
  const _UploadParams({this.url, required this.path, required this.remotePath, this.chunkSize, this.onProgress, this.cancelToken}): super._();
  

@override final  String? url;
@override final  String path;
@override final  String remotePath;
@override final  int? chunkSize;
@override final  ProgressCallback? onProgress;
@override final  CancelToken? cancelToken;

/// Create a copy of UploadParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadParamsCopyWith<_UploadParams> get copyWith => __$UploadParamsCopyWithImpl<_UploadParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadParams&&(identical(other.url, url) || other.url == url)&&(identical(other.path, path) || other.path == path)&&(identical(other.remotePath, remotePath) || other.remotePath == remotePath)&&(identical(other.chunkSize, chunkSize) || other.chunkSize == chunkSize)&&(identical(other.onProgress, onProgress) || other.onProgress == onProgress)&&(identical(other.cancelToken, cancelToken) || other.cancelToken == cancelToken));
}


@override
int get hashCode => Object.hash(runtimeType,url,path,remotePath,chunkSize,onProgress,cancelToken);

@override
String toString() {
  return 'UploadParams(url: $url, path: $path, remotePath: $remotePath, chunkSize: $chunkSize, onProgress: $onProgress, cancelToken: $cancelToken)';
}


}

/// @nodoc
abstract mixin class _$UploadParamsCopyWith<$Res> implements $UploadParamsCopyWith<$Res> {
  factory _$UploadParamsCopyWith(_UploadParams value, $Res Function(_UploadParams) _then) = __$UploadParamsCopyWithImpl;
@override @useResult
$Res call({
 String? url, String path, String remotePath, int? chunkSize, ProgressCallback? onProgress, CancelToken? cancelToken
});




}
/// @nodoc
class __$UploadParamsCopyWithImpl<$Res>
    implements _$UploadParamsCopyWith<$Res> {
  __$UploadParamsCopyWithImpl(this._self, this._then);

  final _UploadParams _self;
  final $Res Function(_UploadParams) _then;

/// Create a copy of UploadParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,Object? path = null,Object? remotePath = null,Object? chunkSize = freezed,Object? onProgress = freezed,Object? cancelToken = freezed,}) {
  return _then(_UploadParams(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,remotePath: null == remotePath ? _self.remotePath : remotePath // ignore: cast_nullable_to_non_nullable
as String,chunkSize: freezed == chunkSize ? _self.chunkSize : chunkSize // ignore: cast_nullable_to_non_nullable
as int?,onProgress: freezed == onProgress ? _self.onProgress : onProgress // ignore: cast_nullable_to_non_nullable
as ProgressCallback?,cancelToken: freezed == cancelToken ? _self.cancelToken : cancelToken // ignore: cast_nullable_to_non_nullable
as CancelToken?,
  ));
}


}

// dart format on
