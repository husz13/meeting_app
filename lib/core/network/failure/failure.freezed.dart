// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {

 String get message;
/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res>  {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _BadCertificate value)?  badCertificate,TResult Function( _RequestCancelled value)?  requestCancelled,TResult Function( _ConnectionTimeOut value)?  connectionTimeout,TResult Function( _ReceiveTimeOut value)?  receiveTimeout,TResult Function( _SendTimeOut value)?  sendTimeout,TResult Function( _NoInternetConnection value)?  noInternetConnection,TResult Function( _Unknown value)?  unknown,TResult Function( _Server value)?  server,TResult Function( _Unauthorized value)?  unauthorized,TResult Function( _CountryRequired value)?  countryRequired,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BadCertificate() when badCertificate != null:
return badCertificate(_that);case _RequestCancelled() when requestCancelled != null:
return requestCancelled(_that);case _ConnectionTimeOut() when connectionTimeout != null:
return connectionTimeout(_that);case _ReceiveTimeOut() when receiveTimeout != null:
return receiveTimeout(_that);case _SendTimeOut() when sendTimeout != null:
return sendTimeout(_that);case _NoInternetConnection() when noInternetConnection != null:
return noInternetConnection(_that);case _Unknown() when unknown != null:
return unknown(_that);case _Server() when server != null:
return server(_that);case _Unauthorized() when unauthorized != null:
return unauthorized(_that);case _CountryRequired() when countryRequired != null:
return countryRequired(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _BadCertificate value)  badCertificate,required TResult Function( _RequestCancelled value)  requestCancelled,required TResult Function( _ConnectionTimeOut value)  connectionTimeout,required TResult Function( _ReceiveTimeOut value)  receiveTimeout,required TResult Function( _SendTimeOut value)  sendTimeout,required TResult Function( _NoInternetConnection value)  noInternetConnection,required TResult Function( _Unknown value)  unknown,required TResult Function( _Server value)  server,required TResult Function( _Unauthorized value)  unauthorized,required TResult Function( _CountryRequired value)  countryRequired,}){
final _that = this;
switch (_that) {
case _BadCertificate():
return badCertificate(_that);case _RequestCancelled():
return requestCancelled(_that);case _ConnectionTimeOut():
return connectionTimeout(_that);case _ReceiveTimeOut():
return receiveTimeout(_that);case _SendTimeOut():
return sendTimeout(_that);case _NoInternetConnection():
return noInternetConnection(_that);case _Unknown():
return unknown(_that);case _Server():
return server(_that);case _Unauthorized():
return unauthorized(_that);case _CountryRequired():
return countryRequired(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _BadCertificate value)?  badCertificate,TResult? Function( _RequestCancelled value)?  requestCancelled,TResult? Function( _ConnectionTimeOut value)?  connectionTimeout,TResult? Function( _ReceiveTimeOut value)?  receiveTimeout,TResult? Function( _SendTimeOut value)?  sendTimeout,TResult? Function( _NoInternetConnection value)?  noInternetConnection,TResult? Function( _Unknown value)?  unknown,TResult? Function( _Server value)?  server,TResult? Function( _Unauthorized value)?  unauthorized,TResult? Function( _CountryRequired value)?  countryRequired,}){
final _that = this;
switch (_that) {
case _BadCertificate() when badCertificate != null:
return badCertificate(_that);case _RequestCancelled() when requestCancelled != null:
return requestCancelled(_that);case _ConnectionTimeOut() when connectionTimeout != null:
return connectionTimeout(_that);case _ReceiveTimeOut() when receiveTimeout != null:
return receiveTimeout(_that);case _SendTimeOut() when sendTimeout != null:
return sendTimeout(_that);case _NoInternetConnection() when noInternetConnection != null:
return noInternetConnection(_that);case _Unknown() when unknown != null:
return unknown(_that);case _Server() when server != null:
return server(_that);case _Unauthorized() when unauthorized != null:
return unauthorized(_that);case _CountryRequired() when countryRequired != null:
return countryRequired(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  badCertificate,TResult Function( String message)?  requestCancelled,TResult Function( String message)?  connectionTimeout,TResult Function( String message)?  receiveTimeout,TResult Function( String message)?  sendTimeout,TResult Function( String message)?  noInternetConnection,TResult Function( String message)?  unknown,TResult Function( String message)?  server,TResult Function( String message)?  unauthorized,TResult Function( String message)?  countryRequired,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BadCertificate() when badCertificate != null:
return badCertificate(_that.message);case _RequestCancelled() when requestCancelled != null:
return requestCancelled(_that.message);case _ConnectionTimeOut() when connectionTimeout != null:
return connectionTimeout(_that.message);case _ReceiveTimeOut() when receiveTimeout != null:
return receiveTimeout(_that.message);case _SendTimeOut() when sendTimeout != null:
return sendTimeout(_that.message);case _NoInternetConnection() when noInternetConnection != null:
return noInternetConnection(_that.message);case _Unknown() when unknown != null:
return unknown(_that.message);case _Server() when server != null:
return server(_that.message);case _Unauthorized() when unauthorized != null:
return unauthorized(_that.message);case _CountryRequired() when countryRequired != null:
return countryRequired(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  badCertificate,required TResult Function( String message)  requestCancelled,required TResult Function( String message)  connectionTimeout,required TResult Function( String message)  receiveTimeout,required TResult Function( String message)  sendTimeout,required TResult Function( String message)  noInternetConnection,required TResult Function( String message)  unknown,required TResult Function( String message)  server,required TResult Function( String message)  unauthorized,required TResult Function( String message)  countryRequired,}) {final _that = this;
switch (_that) {
case _BadCertificate():
return badCertificate(_that.message);case _RequestCancelled():
return requestCancelled(_that.message);case _ConnectionTimeOut():
return connectionTimeout(_that.message);case _ReceiveTimeOut():
return receiveTimeout(_that.message);case _SendTimeOut():
return sendTimeout(_that.message);case _NoInternetConnection():
return noInternetConnection(_that.message);case _Unknown():
return unknown(_that.message);case _Server():
return server(_that.message);case _Unauthorized():
return unauthorized(_that.message);case _CountryRequired():
return countryRequired(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  badCertificate,TResult? Function( String message)?  requestCancelled,TResult? Function( String message)?  connectionTimeout,TResult? Function( String message)?  receiveTimeout,TResult? Function( String message)?  sendTimeout,TResult? Function( String message)?  noInternetConnection,TResult? Function( String message)?  unknown,TResult? Function( String message)?  server,TResult? Function( String message)?  unauthorized,TResult? Function( String message)?  countryRequired,}) {final _that = this;
switch (_that) {
case _BadCertificate() when badCertificate != null:
return badCertificate(_that.message);case _RequestCancelled() when requestCancelled != null:
return requestCancelled(_that.message);case _ConnectionTimeOut() when connectionTimeout != null:
return connectionTimeout(_that.message);case _ReceiveTimeOut() when receiveTimeout != null:
return receiveTimeout(_that.message);case _SendTimeOut() when sendTimeout != null:
return sendTimeout(_that.message);case _NoInternetConnection() when noInternetConnection != null:
return noInternetConnection(_that.message);case _Unknown() when unknown != null:
return unknown(_that.message);case _Server() when server != null:
return server(_that.message);case _Unauthorized() when unauthorized != null:
return unauthorized(_that.message);case _CountryRequired() when countryRequired != null:
return countryRequired(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _BadCertificate extends Failure {
  const _BadCertificate({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BadCertificateCopyWith<_BadCertificate> get copyWith => __$BadCertificateCopyWithImpl<_BadCertificate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BadCertificate&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.badCertificate(message: $message)';
}


}

/// @nodoc
abstract mixin class _$BadCertificateCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$BadCertificateCopyWith(_BadCertificate value, $Res Function(_BadCertificate) _then) = __$BadCertificateCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$BadCertificateCopyWithImpl<$Res>
    implements _$BadCertificateCopyWith<$Res> {
  __$BadCertificateCopyWithImpl(this._self, this._then);

  final _BadCertificate _self;
  final $Res Function(_BadCertificate) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_BadCertificate(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RequestCancelled extends Failure {
  const _RequestCancelled({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestCancelledCopyWith<_RequestCancelled> get copyWith => __$RequestCancelledCopyWithImpl<_RequestCancelled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestCancelled&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.requestCancelled(message: $message)';
}


}

/// @nodoc
abstract mixin class _$RequestCancelledCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$RequestCancelledCopyWith(_RequestCancelled value, $Res Function(_RequestCancelled) _then) = __$RequestCancelledCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$RequestCancelledCopyWithImpl<$Res>
    implements _$RequestCancelledCopyWith<$Res> {
  __$RequestCancelledCopyWithImpl(this._self, this._then);

  final _RequestCancelled _self;
  final $Res Function(_RequestCancelled) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_RequestCancelled(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ConnectionTimeOut extends Failure {
  const _ConnectionTimeOut({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionTimeOutCopyWith<_ConnectionTimeOut> get copyWith => __$ConnectionTimeOutCopyWithImpl<_ConnectionTimeOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionTimeOut&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.connectionTimeout(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ConnectionTimeOutCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ConnectionTimeOutCopyWith(_ConnectionTimeOut value, $Res Function(_ConnectionTimeOut) _then) = __$ConnectionTimeOutCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ConnectionTimeOutCopyWithImpl<$Res>
    implements _$ConnectionTimeOutCopyWith<$Res> {
  __$ConnectionTimeOutCopyWithImpl(this._self, this._then);

  final _ConnectionTimeOut _self;
  final $Res Function(_ConnectionTimeOut) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ConnectionTimeOut(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ReceiveTimeOut extends Failure {
  const _ReceiveTimeOut({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceiveTimeOutCopyWith<_ReceiveTimeOut> get copyWith => __$ReceiveTimeOutCopyWithImpl<_ReceiveTimeOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiveTimeOut&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.receiveTimeout(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ReceiveTimeOutCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ReceiveTimeOutCopyWith(_ReceiveTimeOut value, $Res Function(_ReceiveTimeOut) _then) = __$ReceiveTimeOutCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ReceiveTimeOutCopyWithImpl<$Res>
    implements _$ReceiveTimeOutCopyWith<$Res> {
  __$ReceiveTimeOutCopyWithImpl(this._self, this._then);

  final _ReceiveTimeOut _self;
  final $Res Function(_ReceiveTimeOut) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ReceiveTimeOut(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SendTimeOut extends Failure {
  const _SendTimeOut({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendTimeOutCopyWith<_SendTimeOut> get copyWith => __$SendTimeOutCopyWithImpl<_SendTimeOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendTimeOut&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.sendTimeout(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SendTimeOutCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$SendTimeOutCopyWith(_SendTimeOut value, $Res Function(_SendTimeOut) _then) = __$SendTimeOutCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SendTimeOutCopyWithImpl<$Res>
    implements _$SendTimeOutCopyWith<$Res> {
  __$SendTimeOutCopyWithImpl(this._self, this._then);

  final _SendTimeOut _self;
  final $Res Function(_SendTimeOut) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SendTimeOut(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NoInternetConnection extends Failure {
  const _NoInternetConnection({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoInternetConnectionCopyWith<_NoInternetConnection> get copyWith => __$NoInternetConnectionCopyWithImpl<_NoInternetConnection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoInternetConnection&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.noInternetConnection(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NoInternetConnectionCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$NoInternetConnectionCopyWith(_NoInternetConnection value, $Res Function(_NoInternetConnection) _then) = __$NoInternetConnectionCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$NoInternetConnectionCopyWithImpl<$Res>
    implements _$NoInternetConnectionCopyWith<$Res> {
  __$NoInternetConnectionCopyWithImpl(this._self, this._then);

  final _NoInternetConnection _self;
  final $Res Function(_NoInternetConnection) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_NoInternetConnection(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Unknown extends Failure {
  const _Unknown({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnknownCopyWith<_Unknown> get copyWith => __$UnknownCopyWithImpl<_Unknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unknown&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.unknown(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UnknownCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) _then) = __$UnknownCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$UnknownCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(this._self, this._then);

  final _Unknown _self;
  final $Res Function(_Unknown) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Unknown(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Server extends Failure {
  const _Server({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerCopyWith<_Server> get copyWith => __$ServerCopyWithImpl<_Server>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Server&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.server(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ServerCopyWith(_Server value, $Res Function(_Server) _then) = __$ServerCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ServerCopyWithImpl<$Res>
    implements _$ServerCopyWith<$Res> {
  __$ServerCopyWithImpl(this._self, this._then);

  final _Server _self;
  final $Res Function(_Server) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Server(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Unauthorized extends Failure {
  const _Unauthorized({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnauthorizedCopyWith<_Unauthorized> get copyWith => __$UnauthorizedCopyWithImpl<_Unauthorized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unauthorized&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.unauthorized(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UnauthorizedCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$UnauthorizedCopyWith(_Unauthorized value, $Res Function(_Unauthorized) _then) = __$UnauthorizedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$UnauthorizedCopyWithImpl<$Res>
    implements _$UnauthorizedCopyWith<$Res> {
  __$UnauthorizedCopyWithImpl(this._self, this._then);

  final _Unauthorized _self;
  final $Res Function(_Unauthorized) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Unauthorized(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CountryRequired extends Failure {
  const _CountryRequired({required this.message}): super._();
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryRequiredCopyWith<_CountryRequired> get copyWith => __$CountryRequiredCopyWithImpl<_CountryRequired>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryRequired&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.countryRequired(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CountryRequiredCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$CountryRequiredCopyWith(_CountryRequired value, $Res Function(_CountryRequired) _then) = __$CountryRequiredCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CountryRequiredCopyWithImpl<$Res>
    implements _$CountryRequiredCopyWith<$Res> {
  __$CountryRequiredCopyWithImpl(this._self, this._then);

  final _CountryRequired _self;
  final $Res Function(_CountryRequired) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CountryRequired(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
