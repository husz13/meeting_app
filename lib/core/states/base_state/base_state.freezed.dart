// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseState<$T>()';
}


}

/// @nodoc
class $BaseStateCopyWith<T,$Res>  {
$BaseStateCopyWith(BaseState<T> _, $Res Function(BaseState<T>) __);
}


/// Adds pattern-matching-related methods to [BaseState].
extension BaseStatePatterns<T> on BaseState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialState<T> value)?  initial,TResult Function( _LoadingState<T> value)?  loading,TResult Function( _FailureState<T> value)?  failure,TResult Function( _EmptyState<T> value)?  empty,TResult Function( _SuccessState<T> value)?  success,TResult Function( _ProgressState<T> value)?  progress,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialState() when initial != null:
return initial(_that);case _LoadingState() when loading != null:
return loading(_that);case _FailureState() when failure != null:
return failure(_that);case _EmptyState() when empty != null:
return empty(_that);case _SuccessState() when success != null:
return success(_that);case _ProgressState() when progress != null:
return progress(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialState<T> value)  initial,required TResult Function( _LoadingState<T> value)  loading,required TResult Function( _FailureState<T> value)  failure,required TResult Function( _EmptyState<T> value)  empty,required TResult Function( _SuccessState<T> value)  success,required TResult Function( _ProgressState<T> value)  progress,}){
final _that = this;
switch (_that) {
case _InitialState():
return initial(_that);case _LoadingState():
return loading(_that);case _FailureState():
return failure(_that);case _EmptyState():
return empty(_that);case _SuccessState():
return success(_that);case _ProgressState():
return progress(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialState<T> value)?  initial,TResult? Function( _LoadingState<T> value)?  loading,TResult? Function( _FailureState<T> value)?  failure,TResult? Function( _EmptyState<T> value)?  empty,TResult? Function( _SuccessState<T> value)?  success,TResult? Function( _ProgressState<T> value)?  progress,}){
final _that = this;
switch (_that) {
case _InitialState() when initial != null:
return initial(_that);case _LoadingState() when loading != null:
return loading(_that);case _FailureState() when failure != null:
return failure(_that);case _EmptyState() when empty != null:
return empty(_that);case _SuccessState() when success != null:
return success(_that);case _ProgressState() when progress != null:
return progress(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Failure failure)?  failure,TResult Function()?  empty,TResult Function( T data)?  success,TResult Function( double progress)?  progress,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialState() when initial != null:
return initial();case _LoadingState() when loading != null:
return loading();case _FailureState() when failure != null:
return failure(_that.failure);case _EmptyState() when empty != null:
return empty();case _SuccessState() when success != null:
return success(_that.data);case _ProgressState() when progress != null:
return progress(_that.progress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Failure failure)  failure,required TResult Function()  empty,required TResult Function( T data)  success,required TResult Function( double progress)  progress,}) {final _that = this;
switch (_that) {
case _InitialState():
return initial();case _LoadingState():
return loading();case _FailureState():
return failure(_that.failure);case _EmptyState():
return empty();case _SuccessState():
return success(_that.data);case _ProgressState():
return progress(_that.progress);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Failure failure)?  failure,TResult? Function()?  empty,TResult? Function( T data)?  success,TResult? Function( double progress)?  progress,}) {final _that = this;
switch (_that) {
case _InitialState() when initial != null:
return initial();case _LoadingState() when loading != null:
return loading();case _FailureState() when failure != null:
return failure(_that.failure);case _EmptyState() when empty != null:
return empty();case _SuccessState() when success != null:
return success(_that.data);case _ProgressState() when progress != null:
return progress(_that.progress);case _:
  return null;

}
}

}

/// @nodoc


class _InitialState<T> extends BaseState<T> {
  const _InitialState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseState<$T>.initial()';
}


}




/// @nodoc


class _LoadingState<T> extends BaseState<T> {
  const _LoadingState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseState<$T>.loading()';
}


}




/// @nodoc


class _FailureState<T> extends BaseState<T> {
  const _FailureState({required this.failure}): super._();
  

 final  Failure failure;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureStateCopyWith<T, _FailureState<T>> get copyWith => __$FailureStateCopyWithImpl<T, _FailureState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FailureState<T>&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'BaseState<$T>.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$FailureStateCopyWith<T,$Res> implements $BaseStateCopyWith<T, $Res> {
  factory _$FailureStateCopyWith(_FailureState<T> value, $Res Function(_FailureState<T>) _then) = __$FailureStateCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class __$FailureStateCopyWithImpl<T,$Res>
    implements _$FailureStateCopyWith<T, $Res> {
  __$FailureStateCopyWithImpl(this._self, this._then);

  final _FailureState<T> _self;
  final $Res Function(_FailureState<T>) _then;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_FailureState<T>(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res> get failure {
  
  return $FailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

/// @nodoc


class _EmptyState<T> extends BaseState<T> {
  const _EmptyState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmptyState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseState<$T>.empty()';
}


}




/// @nodoc


class _SuccessState<T> extends BaseState<T> {
  const _SuccessState({required this.data}): super._();
  

 final  T data;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessStateCopyWith<T, _SuccessState<T>> get copyWith => __$SuccessStateCopyWithImpl<T, _SuccessState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessState<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class _$SuccessStateCopyWith<T,$Res> implements $BaseStateCopyWith<T, $Res> {
  factory _$SuccessStateCopyWith(_SuccessState<T> value, $Res Function(_SuccessState<T>) _then) = __$SuccessStateCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class __$SuccessStateCopyWithImpl<T,$Res>
    implements _$SuccessStateCopyWith<T, $Res> {
  __$SuccessStateCopyWithImpl(this._self, this._then);

  final _SuccessState<T> _self;
  final $Res Function(_SuccessState<T>) _then;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_SuccessState<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class _ProgressState<T> extends BaseState<T> {
  const _ProgressState({required this.progress}): super._();
  

 final  double progress;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgressStateCopyWith<T, _ProgressState<T>> get copyWith => __$ProgressStateCopyWithImpl<T, _ProgressState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgressState<T>&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'BaseState<$T>.progress(progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$ProgressStateCopyWith<T,$Res> implements $BaseStateCopyWith<T, $Res> {
  factory _$ProgressStateCopyWith(_ProgressState<T> value, $Res Function(_ProgressState<T>) _then) = __$ProgressStateCopyWithImpl;
@useResult
$Res call({
 double progress
});




}
/// @nodoc
class __$ProgressStateCopyWithImpl<T,$Res>
    implements _$ProgressStateCopyWith<T, $Res> {
  __$ProgressStateCopyWithImpl(this._self, this._then);

  final _ProgressState<T> _self;
  final $Res Function(_ProgressState<T>) _then;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? progress = null,}) {
  return _then(_ProgressState<T>(
progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
