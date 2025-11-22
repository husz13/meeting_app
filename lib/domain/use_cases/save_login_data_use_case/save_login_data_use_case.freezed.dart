// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_login_data_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastLoginParams {

 String get username; String get password; String get recordsPath; String get reportsPath;
/// Create a copy of LastLoginParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastLoginParamsCopyWith<LastLoginParams> get copyWith => _$LastLoginParamsCopyWithImpl<LastLoginParams>(this as LastLoginParams, _$identity);

  /// Serializes this LastLoginParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastLoginParams&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.recordsPath, recordsPath) || other.recordsPath == recordsPath)&&(identical(other.reportsPath, reportsPath) || other.reportsPath == reportsPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,recordsPath,reportsPath);

@override
String toString() {
  return 'LastLoginParams(username: $username, password: $password, recordsPath: $recordsPath, reportsPath: $reportsPath)';
}


}

/// @nodoc
abstract mixin class $LastLoginParamsCopyWith<$Res>  {
  factory $LastLoginParamsCopyWith(LastLoginParams value, $Res Function(LastLoginParams) _then) = _$LastLoginParamsCopyWithImpl;
@useResult
$Res call({
 String username, String password, String recordsPath, String reportsPath
});




}
/// @nodoc
class _$LastLoginParamsCopyWithImpl<$Res>
    implements $LastLoginParamsCopyWith<$Res> {
  _$LastLoginParamsCopyWithImpl(this._self, this._then);

  final LastLoginParams _self;
  final $Res Function(LastLoginParams) _then;

/// Create a copy of LastLoginParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,Object? recordsPath = null,Object? reportsPath = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,recordsPath: null == recordsPath ? _self.recordsPath : recordsPath // ignore: cast_nullable_to_non_nullable
as String,reportsPath: null == reportsPath ? _self.reportsPath : reportsPath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LastLoginParams].
extension LastLoginParamsPatterns on LastLoginParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastLoginParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastLoginParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastLoginParams value)  $default,){
final _that = this;
switch (_that) {
case _LastLoginParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastLoginParams value)?  $default,){
final _that = this;
switch (_that) {
case _LastLoginParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String password,  String recordsPath,  String reportsPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastLoginParams() when $default != null:
return $default(_that.username,_that.password,_that.recordsPath,_that.reportsPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String password,  String recordsPath,  String reportsPath)  $default,) {final _that = this;
switch (_that) {
case _LastLoginParams():
return $default(_that.username,_that.password,_that.recordsPath,_that.reportsPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String password,  String recordsPath,  String reportsPath)?  $default,) {final _that = this;
switch (_that) {
case _LastLoginParams() when $default != null:
return $default(_that.username,_that.password,_that.recordsPath,_that.reportsPath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastLoginParams implements LastLoginParams {
  const _LastLoginParams({required this.username, required this.password, required this.recordsPath, required this.reportsPath});
  factory _LastLoginParams.fromJson(Map<String, dynamic> json) => _$LastLoginParamsFromJson(json);

@override final  String username;
@override final  String password;
@override final  String recordsPath;
@override final  String reportsPath;

/// Create a copy of LastLoginParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastLoginParamsCopyWith<_LastLoginParams> get copyWith => __$LastLoginParamsCopyWithImpl<_LastLoginParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastLoginParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastLoginParams&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.recordsPath, recordsPath) || other.recordsPath == recordsPath)&&(identical(other.reportsPath, reportsPath) || other.reportsPath == reportsPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,recordsPath,reportsPath);

@override
String toString() {
  return 'LastLoginParams(username: $username, password: $password, recordsPath: $recordsPath, reportsPath: $reportsPath)';
}


}

/// @nodoc
abstract mixin class _$LastLoginParamsCopyWith<$Res> implements $LastLoginParamsCopyWith<$Res> {
  factory _$LastLoginParamsCopyWith(_LastLoginParams value, $Res Function(_LastLoginParams) _then) = __$LastLoginParamsCopyWithImpl;
@override @useResult
$Res call({
 String username, String password, String recordsPath, String reportsPath
});




}
/// @nodoc
class __$LastLoginParamsCopyWithImpl<$Res>
    implements _$LastLoginParamsCopyWith<$Res> {
  __$LastLoginParamsCopyWithImpl(this._self, this._then);

  final _LastLoginParams _self;
  final $Res Function(_LastLoginParams) _then;

/// Create a copy of LastLoginParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,Object? recordsPath = null,Object? reportsPath = null,}) {
  return _then(_LastLoginParams(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,recordsPath: null == recordsPath ? _self.recordsPath : recordsPath // ignore: cast_nullable_to_non_nullable
as String,reportsPath: null == reportsPath ? _self.reportsPath : reportsPath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
