// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingUiState {

 int get currentPageIndex;
/// Create a copy of OnboardingUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingUiStateCopyWith<OnboardingUiState> get copyWith => _$OnboardingUiStateCopyWithImpl<OnboardingUiState>(this as OnboardingUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingUiState&&(identical(other.currentPageIndex, currentPageIndex) || other.currentPageIndex == currentPageIndex));
}


@override
int get hashCode => Object.hash(runtimeType,currentPageIndex);

@override
String toString() {
  return 'OnboardingUiState(currentPageIndex: $currentPageIndex)';
}


}

/// @nodoc
abstract mixin class $OnboardingUiStateCopyWith<$Res>  {
  factory $OnboardingUiStateCopyWith(OnboardingUiState value, $Res Function(OnboardingUiState) _then) = _$OnboardingUiStateCopyWithImpl;
@useResult
$Res call({
 int currentPageIndex
});




}
/// @nodoc
class _$OnboardingUiStateCopyWithImpl<$Res>
    implements $OnboardingUiStateCopyWith<$Res> {
  _$OnboardingUiStateCopyWithImpl(this._self, this._then);

  final OnboardingUiState _self;
  final $Res Function(OnboardingUiState) _then;

/// Create a copy of OnboardingUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPageIndex = null,}) {
  return _then(_self.copyWith(
currentPageIndex: null == currentPageIndex ? _self.currentPageIndex : currentPageIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingUiState].
extension OnboardingUiStatePatterns on OnboardingUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingUiState value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingUiState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingUiState value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentPageIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingUiState() when $default != null:
return $default(_that.currentPageIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentPageIndex)  $default,) {final _that = this;
switch (_that) {
case _OnboardingUiState():
return $default(_that.currentPageIndex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentPageIndex)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingUiState() when $default != null:
return $default(_that.currentPageIndex);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingUiState implements OnboardingUiState {
  const _OnboardingUiState({this.currentPageIndex = 0});
  

@override@JsonKey() final  int currentPageIndex;

/// Create a copy of OnboardingUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingUiStateCopyWith<_OnboardingUiState> get copyWith => __$OnboardingUiStateCopyWithImpl<_OnboardingUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingUiState&&(identical(other.currentPageIndex, currentPageIndex) || other.currentPageIndex == currentPageIndex));
}


@override
int get hashCode => Object.hash(runtimeType,currentPageIndex);

@override
String toString() {
  return 'OnboardingUiState(currentPageIndex: $currentPageIndex)';
}


}

/// @nodoc
abstract mixin class _$OnboardingUiStateCopyWith<$Res> implements $OnboardingUiStateCopyWith<$Res> {
  factory _$OnboardingUiStateCopyWith(_OnboardingUiState value, $Res Function(_OnboardingUiState) _then) = __$OnboardingUiStateCopyWithImpl;
@override @useResult
$Res call({
 int currentPageIndex
});




}
/// @nodoc
class __$OnboardingUiStateCopyWithImpl<$Res>
    implements _$OnboardingUiStateCopyWith<$Res> {
  __$OnboardingUiStateCopyWithImpl(this._self, this._then);

  final _OnboardingUiState _self;
  final $Res Function(_OnboardingUiState) _then;

/// Create a copy of OnboardingUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPageIndex = null,}) {
  return _then(_OnboardingUiState(
currentPageIndex: null == currentPageIndex ? _self.currentPageIndex : currentPageIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
