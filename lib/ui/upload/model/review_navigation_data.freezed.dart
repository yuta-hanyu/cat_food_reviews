// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_navigation_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewNavigationData {

 ReviewAnalysis get reviewAnalysis; String get imagePath;
/// Create a copy of ReviewNavigationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewNavigationDataCopyWith<ReviewNavigationData> get copyWith => _$ReviewNavigationDataCopyWithImpl<ReviewNavigationData>(this as ReviewNavigationData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewNavigationData&&(identical(other.reviewAnalysis, reviewAnalysis) || other.reviewAnalysis == reviewAnalysis)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,reviewAnalysis,imagePath);

@override
String toString() {
  return 'ReviewNavigationData(reviewAnalysis: $reviewAnalysis, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class $ReviewNavigationDataCopyWith<$Res>  {
  factory $ReviewNavigationDataCopyWith(ReviewNavigationData value, $Res Function(ReviewNavigationData) _then) = _$ReviewNavigationDataCopyWithImpl;
@useResult
$Res call({
 ReviewAnalysis reviewAnalysis, String imagePath
});




}
/// @nodoc
class _$ReviewNavigationDataCopyWithImpl<$Res>
    implements $ReviewNavigationDataCopyWith<$Res> {
  _$ReviewNavigationDataCopyWithImpl(this._self, this._then);

  final ReviewNavigationData _self;
  final $Res Function(ReviewNavigationData) _then;

/// Create a copy of ReviewNavigationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviewAnalysis = null,Object? imagePath = null,}) {
  return _then(_self.copyWith(
reviewAnalysis: null == reviewAnalysis ? _self.reviewAnalysis : reviewAnalysis // ignore: cast_nullable_to_non_nullable
as ReviewAnalysis,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewNavigationData].
extension ReviewNavigationDataPatterns on ReviewNavigationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewNavigationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewNavigationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewNavigationData value)  $default,){
final _that = this;
switch (_that) {
case _ReviewNavigationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewNavigationData value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewNavigationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReviewAnalysis reviewAnalysis,  String imagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewNavigationData() when $default != null:
return $default(_that.reviewAnalysis,_that.imagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReviewAnalysis reviewAnalysis,  String imagePath)  $default,) {final _that = this;
switch (_that) {
case _ReviewNavigationData():
return $default(_that.reviewAnalysis,_that.imagePath);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReviewAnalysis reviewAnalysis,  String imagePath)?  $default,) {final _that = this;
switch (_that) {
case _ReviewNavigationData() when $default != null:
return $default(_that.reviewAnalysis,_that.imagePath);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewNavigationData implements ReviewNavigationData {
  const _ReviewNavigationData({required this.reviewAnalysis, required this.imagePath});
  

@override final  ReviewAnalysis reviewAnalysis;
@override final  String imagePath;

/// Create a copy of ReviewNavigationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewNavigationDataCopyWith<_ReviewNavigationData> get copyWith => __$ReviewNavigationDataCopyWithImpl<_ReviewNavigationData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewNavigationData&&(identical(other.reviewAnalysis, reviewAnalysis) || other.reviewAnalysis == reviewAnalysis)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,reviewAnalysis,imagePath);

@override
String toString() {
  return 'ReviewNavigationData(reviewAnalysis: $reviewAnalysis, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$ReviewNavigationDataCopyWith<$Res> implements $ReviewNavigationDataCopyWith<$Res> {
  factory _$ReviewNavigationDataCopyWith(_ReviewNavigationData value, $Res Function(_ReviewNavigationData) _then) = __$ReviewNavigationDataCopyWithImpl;
@override @useResult
$Res call({
 ReviewAnalysis reviewAnalysis, String imagePath
});




}
/// @nodoc
class __$ReviewNavigationDataCopyWithImpl<$Res>
    implements _$ReviewNavigationDataCopyWith<$Res> {
  __$ReviewNavigationDataCopyWithImpl(this._self, this._then);

  final _ReviewNavigationData _self;
  final $Res Function(_ReviewNavigationData) _then;

/// Create a copy of ReviewNavigationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviewAnalysis = null,Object? imagePath = null,}) {
  return _then(_ReviewNavigationData(
reviewAnalysis: null == reviewAnalysis ? _self.reviewAnalysis : reviewAnalysis // ignore: cast_nullable_to_non_nullable
as ReviewAnalysis,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
