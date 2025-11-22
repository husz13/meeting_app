// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_media_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadParams {

 String get filepath; String get filename; ProgressCallback? get onProgress;
/// Create a copy of DownloadParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadParamsCopyWith<DownloadParams> get copyWith => _$DownloadParamsCopyWithImpl<DownloadParams>(this as DownloadParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadParams&&(identical(other.filepath, filepath) || other.filepath == filepath)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.onProgress, onProgress) || other.onProgress == onProgress));
}


@override
int get hashCode => Object.hash(runtimeType,filepath,filename,onProgress);

@override
String toString() {
  return 'DownloadParams(filepath: $filepath, filename: $filename, onProgress: $onProgress)';
}


}

/// @nodoc
abstract mixin class $DownloadParamsCopyWith<$Res>  {
  factory $DownloadParamsCopyWith(DownloadParams value, $Res Function(DownloadParams) _then) = _$DownloadParamsCopyWithImpl;
@useResult
$Res call({
 String filepath, String filename, ProgressCallback? onProgress
});




}
/// @nodoc
class _$DownloadParamsCopyWithImpl<$Res>
    implements $DownloadParamsCopyWith<$Res> {
  _$DownloadParamsCopyWithImpl(this._self, this._then);

  final DownloadParams _self;
  final $Res Function(DownloadParams) _then;

/// Create a copy of DownloadParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filepath = null,Object? filename = null,Object? onProgress = freezed,}) {
  return _then(_self.copyWith(
filepath: null == filepath ? _self.filepath : filepath // ignore: cast_nullable_to_non_nullable
as String,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,onProgress: freezed == onProgress ? _self.onProgress : onProgress // ignore: cast_nullable_to_non_nullable
as ProgressCallback?,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadParams].
extension DownloadParamsPatterns on DownloadParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DownloadParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DownloadParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DownloadParams value)  $default,){
final _that = this;
switch (_that) {
case _DownloadParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DownloadParams value)?  $default,){
final _that = this;
switch (_that) {
case _DownloadParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String filepath,  String filename,  ProgressCallback? onProgress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DownloadParams() when $default != null:
return $default(_that.filepath,_that.filename,_that.onProgress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String filepath,  String filename,  ProgressCallback? onProgress)  $default,) {final _that = this;
switch (_that) {
case _DownloadParams():
return $default(_that.filepath,_that.filename,_that.onProgress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String filepath,  String filename,  ProgressCallback? onProgress)?  $default,) {final _that = this;
switch (_that) {
case _DownloadParams() when $default != null:
return $default(_that.filepath,_that.filename,_that.onProgress);case _:
  return null;

}
}

}

/// @nodoc


class _DownloadParams extends DownloadParams {
  const _DownloadParams({required this.filepath, required this.filename, this.onProgress}): super._();
  

@override final  String filepath;
@override final  String filename;
@override final  ProgressCallback? onProgress;

/// Create a copy of DownloadParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadParamsCopyWith<_DownloadParams> get copyWith => __$DownloadParamsCopyWithImpl<_DownloadParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadParams&&(identical(other.filepath, filepath) || other.filepath == filepath)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.onProgress, onProgress) || other.onProgress == onProgress));
}


@override
int get hashCode => Object.hash(runtimeType,filepath,filename,onProgress);

@override
String toString() {
  return 'DownloadParams(filepath: $filepath, filename: $filename, onProgress: $onProgress)';
}


}

/// @nodoc
abstract mixin class _$DownloadParamsCopyWith<$Res> implements $DownloadParamsCopyWith<$Res> {
  factory _$DownloadParamsCopyWith(_DownloadParams value, $Res Function(_DownloadParams) _then) = __$DownloadParamsCopyWithImpl;
@override @useResult
$Res call({
 String filepath, String filename, ProgressCallback? onProgress
});




}
/// @nodoc
class __$DownloadParamsCopyWithImpl<$Res>
    implements _$DownloadParamsCopyWith<$Res> {
  __$DownloadParamsCopyWithImpl(this._self, this._then);

  final _DownloadParams _self;
  final $Res Function(_DownloadParams) _then;

/// Create a copy of DownloadParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filepath = null,Object? filename = null,Object? onProgress = freezed,}) {
  return _then(_DownloadParams(
filepath: null == filepath ? _self.filepath : filepath // ignore: cast_nullable_to_non_nullable
as String,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,onProgress: freezed == onProgress ? _self.onProgress : onProgress // ignore: cast_nullable_to_non_nullable
as ProgressCallback?,
  ));
}


}

// dart format on
