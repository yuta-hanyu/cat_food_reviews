// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadUiState {

 bool get isUploading; String get errorMessage;
/// Create a copy of UploadUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadUiStateCopyWith<UploadUiState> get copyWith => _$UploadUiStateCopyWithImpl<UploadUiState>(this as UploadUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadUiState&&(identical(other.isUploading, isUploading) || other.isUploading == isUploading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isUploading,errorMessage);

@override
String toString() {
  return 'UploadUiState(isUploading: $isUploading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $UploadUiStateCopyWith<$Res>  {
  factory $UploadUiStateCopyWith(UploadUiState value, $Res Function(UploadUiState) _then) = _$UploadUiStateCopyWithImpl;
@useResult
$Res call({
 bool isUploading, String errorMessage
});




}
/// @nodoc
class _$UploadUiStateCopyWithImpl<$Res>
    implements $UploadUiStateCopyWith<$Res> {
  _$UploadUiStateCopyWithImpl(this._self, this._then);

  final UploadUiState _self;
  final $Res Function(UploadUiState) _then;

/// Create a copy of UploadUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isUploading = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
isUploading: null == isUploading ? _self.isUploading : isUploading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadUiState].
extension UploadUiStatePatterns on UploadUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadUiState value)  $default,){
final _that = this;
switch (_that) {
case _UploadUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadUiState value)?  $default,){
final _that = this;
switch (_that) {
case _UploadUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isUploading,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadUiState() when $default != null:
return $default(_that.isUploading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isUploading,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _UploadUiState():
return $default(_that.isUploading,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isUploading,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _UploadUiState() when $default != null:
return $default(_that.isUploading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _UploadUiState implements UploadUiState {
  const _UploadUiState({this.isUploading = false, this.errorMessage = ''});
  

@override@JsonKey() final  bool isUploading;
@override@JsonKey() final  String errorMessage;

/// Create a copy of UploadUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadUiStateCopyWith<_UploadUiState> get copyWith => __$UploadUiStateCopyWithImpl<_UploadUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadUiState&&(identical(other.isUploading, isUploading) || other.isUploading == isUploading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isUploading,errorMessage);

@override
String toString() {
  return 'UploadUiState(isUploading: $isUploading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$UploadUiStateCopyWith<$Res> implements $UploadUiStateCopyWith<$Res> {
  factory _$UploadUiStateCopyWith(_UploadUiState value, $Res Function(_UploadUiState) _then) = __$UploadUiStateCopyWithImpl;
@override @useResult
$Res call({
 bool isUploading, String errorMessage
});




}
/// @nodoc
class __$UploadUiStateCopyWithImpl<$Res>
    implements _$UploadUiStateCopyWith<$Res> {
  __$UploadUiStateCopyWithImpl(this._self, this._then);

  final _UploadUiState _self;
  final $Res Function(_UploadUiState) _then;

/// Create a copy of UploadUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isUploading = null,Object? errorMessage = null,}) {
  return _then(_UploadUiState(
isUploading: null == isUploading ? _self.isUploading : isUploading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
