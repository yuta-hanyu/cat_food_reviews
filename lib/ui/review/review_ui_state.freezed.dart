// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewUiState {

 bool get isLoading; ReviewAnalysis? get reviewData; String? get imagePath; String? get errorMessage;
/// Create a copy of ReviewUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewUiStateCopyWith<ReviewUiState> get copyWith => _$ReviewUiStateCopyWithImpl<ReviewUiState>(this as ReviewUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewUiState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.reviewData, reviewData) || other.reviewData == reviewData)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,reviewData,imagePath,errorMessage);

@override
String toString() {
  return 'ReviewUiState(isLoading: $isLoading, reviewData: $reviewData, imagePath: $imagePath, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ReviewUiStateCopyWith<$Res>  {
  factory $ReviewUiStateCopyWith(ReviewUiState value, $Res Function(ReviewUiState) _then) = _$ReviewUiStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ReviewAnalysis? reviewData, String? imagePath, String? errorMessage
});




}
/// @nodoc
class _$ReviewUiStateCopyWithImpl<$Res>
    implements $ReviewUiStateCopyWith<$Res> {
  _$ReviewUiStateCopyWithImpl(this._self, this._then);

  final ReviewUiState _self;
  final $Res Function(ReviewUiState) _then;

/// Create a copy of ReviewUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? reviewData = freezed,Object? imagePath = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,reviewData: freezed == reviewData ? _self.reviewData : reviewData // ignore: cast_nullable_to_non_nullable
as ReviewAnalysis?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewUiState].
extension ReviewUiStatePatterns on ReviewUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewUiState value)  $default,){
final _that = this;
switch (_that) {
case _ReviewUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewUiState value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ReviewAnalysis? reviewData,  String? imagePath,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewUiState() when $default != null:
return $default(_that.isLoading,_that.reviewData,_that.imagePath,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ReviewAnalysis? reviewData,  String? imagePath,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ReviewUiState():
return $default(_that.isLoading,_that.reviewData,_that.imagePath,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ReviewAnalysis? reviewData,  String? imagePath,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ReviewUiState() when $default != null:
return $default(_that.isLoading,_that.reviewData,_that.imagePath,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewUiState implements ReviewUiState {
  const _ReviewUiState({this.isLoading = false, this.reviewData, this.imagePath, this.errorMessage});
  

@override@JsonKey() final  bool isLoading;
@override final  ReviewAnalysis? reviewData;
@override final  String? imagePath;
@override final  String? errorMessage;

/// Create a copy of ReviewUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewUiStateCopyWith<_ReviewUiState> get copyWith => __$ReviewUiStateCopyWithImpl<_ReviewUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewUiState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.reviewData, reviewData) || other.reviewData == reviewData)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,reviewData,imagePath,errorMessage);

@override
String toString() {
  return 'ReviewUiState(isLoading: $isLoading, reviewData: $reviewData, imagePath: $imagePath, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ReviewUiStateCopyWith<$Res> implements $ReviewUiStateCopyWith<$Res> {
  factory _$ReviewUiStateCopyWith(_ReviewUiState value, $Res Function(_ReviewUiState) _then) = __$ReviewUiStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ReviewAnalysis? reviewData, String? imagePath, String? errorMessage
});




}
/// @nodoc
class __$ReviewUiStateCopyWithImpl<$Res>
    implements _$ReviewUiStateCopyWith<$Res> {
  __$ReviewUiStateCopyWithImpl(this._self, this._then);

  final _ReviewUiState _self;
  final $Res Function(_ReviewUiState) _then;

/// Create a copy of ReviewUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? reviewData = freezed,Object? imagePath = freezed,Object? errorMessage = freezed,}) {
  return _then(_ReviewUiState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,reviewData: freezed == reviewData ? _self.reviewData : reviewData // ignore: cast_nullable_to_non_nullable
as ReviewAnalysis?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
