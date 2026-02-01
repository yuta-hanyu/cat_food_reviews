// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_cat_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyCatUiState {

 String get name; int get age; double? get weight; Gender? get gender; File? get profileImage; bool get isLoading;// Validation states
 bool get showNameError; NameErrorType? get nameErrorType; bool get showAgeError; AgeErrorType? get ageErrorType; bool get showWeightError; WeightErrorType? get weightErrorType; bool get showGenderError;
/// Create a copy of MyCatUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyCatUiStateCopyWith<MyCatUiState> get copyWith => _$MyCatUiStateCopyWithImpl<MyCatUiState>(this as MyCatUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyCatUiState&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showNameError, showNameError) || other.showNameError == showNameError)&&(identical(other.nameErrorType, nameErrorType) || other.nameErrorType == nameErrorType)&&(identical(other.showAgeError, showAgeError) || other.showAgeError == showAgeError)&&(identical(other.ageErrorType, ageErrorType) || other.ageErrorType == ageErrorType)&&(identical(other.showWeightError, showWeightError) || other.showWeightError == showWeightError)&&(identical(other.weightErrorType, weightErrorType) || other.weightErrorType == weightErrorType)&&(identical(other.showGenderError, showGenderError) || other.showGenderError == showGenderError));
}


@override
int get hashCode => Object.hash(runtimeType,name,age,weight,gender,profileImage,isLoading,showNameError,nameErrorType,showAgeError,ageErrorType,showWeightError,weightErrorType,showGenderError);

@override
String toString() {
  return 'MyCatUiState(name: $name, age: $age, weight: $weight, gender: $gender, profileImage: $profileImage, isLoading: $isLoading, showNameError: $showNameError, nameErrorType: $nameErrorType, showAgeError: $showAgeError, ageErrorType: $ageErrorType, showWeightError: $showWeightError, weightErrorType: $weightErrorType, showGenderError: $showGenderError)';
}


}

/// @nodoc
abstract mixin class $MyCatUiStateCopyWith<$Res>  {
  factory $MyCatUiStateCopyWith(MyCatUiState value, $Res Function(MyCatUiState) _then) = _$MyCatUiStateCopyWithImpl;
@useResult
$Res call({
 String name, int age, double? weight, Gender? gender, File? profileImage, bool isLoading, bool showNameError, NameErrorType? nameErrorType, bool showAgeError, AgeErrorType? ageErrorType, bool showWeightError, WeightErrorType? weightErrorType, bool showGenderError
});




}
/// @nodoc
class _$MyCatUiStateCopyWithImpl<$Res>
    implements $MyCatUiStateCopyWith<$Res> {
  _$MyCatUiStateCopyWithImpl(this._self, this._then);

  final MyCatUiState _self;
  final $Res Function(MyCatUiState) _then;

/// Create a copy of MyCatUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? age = null,Object? weight = freezed,Object? gender = freezed,Object? profileImage = freezed,Object? isLoading = null,Object? showNameError = null,Object? nameErrorType = freezed,Object? showAgeError = null,Object? ageErrorType = freezed,Object? showWeightError = null,Object? weightErrorType = freezed,Object? showGenderError = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as File?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showNameError: null == showNameError ? _self.showNameError : showNameError // ignore: cast_nullable_to_non_nullable
as bool,nameErrorType: freezed == nameErrorType ? _self.nameErrorType : nameErrorType // ignore: cast_nullable_to_non_nullable
as NameErrorType?,showAgeError: null == showAgeError ? _self.showAgeError : showAgeError // ignore: cast_nullable_to_non_nullable
as bool,ageErrorType: freezed == ageErrorType ? _self.ageErrorType : ageErrorType // ignore: cast_nullable_to_non_nullable
as AgeErrorType?,showWeightError: null == showWeightError ? _self.showWeightError : showWeightError // ignore: cast_nullable_to_non_nullable
as bool,weightErrorType: freezed == weightErrorType ? _self.weightErrorType : weightErrorType // ignore: cast_nullable_to_non_nullable
as WeightErrorType?,showGenderError: null == showGenderError ? _self.showGenderError : showGenderError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MyCatUiState].
extension MyCatUiStatePatterns on MyCatUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyCatUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyCatUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyCatUiState value)  $default,){
final _that = this;
switch (_that) {
case _MyCatUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyCatUiState value)?  $default,){
final _that = this;
switch (_that) {
case _MyCatUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int age,  double? weight,  Gender? gender,  File? profileImage,  bool isLoading,  bool showNameError,  NameErrorType? nameErrorType,  bool showAgeError,  AgeErrorType? ageErrorType,  bool showWeightError,  WeightErrorType? weightErrorType,  bool showGenderError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyCatUiState() when $default != null:
return $default(_that.name,_that.age,_that.weight,_that.gender,_that.profileImage,_that.isLoading,_that.showNameError,_that.nameErrorType,_that.showAgeError,_that.ageErrorType,_that.showWeightError,_that.weightErrorType,_that.showGenderError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int age,  double? weight,  Gender? gender,  File? profileImage,  bool isLoading,  bool showNameError,  NameErrorType? nameErrorType,  bool showAgeError,  AgeErrorType? ageErrorType,  bool showWeightError,  WeightErrorType? weightErrorType,  bool showGenderError)  $default,) {final _that = this;
switch (_that) {
case _MyCatUiState():
return $default(_that.name,_that.age,_that.weight,_that.gender,_that.profileImage,_that.isLoading,_that.showNameError,_that.nameErrorType,_that.showAgeError,_that.ageErrorType,_that.showWeightError,_that.weightErrorType,_that.showGenderError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int age,  double? weight,  Gender? gender,  File? profileImage,  bool isLoading,  bool showNameError,  NameErrorType? nameErrorType,  bool showAgeError,  AgeErrorType? ageErrorType,  bool showWeightError,  WeightErrorType? weightErrorType,  bool showGenderError)?  $default,) {final _that = this;
switch (_that) {
case _MyCatUiState() when $default != null:
return $default(_that.name,_that.age,_that.weight,_that.gender,_that.profileImage,_that.isLoading,_that.showNameError,_that.nameErrorType,_that.showAgeError,_that.ageErrorType,_that.showWeightError,_that.weightErrorType,_that.showGenderError);case _:
  return null;

}
}

}

/// @nodoc


class _MyCatUiState implements MyCatUiState {
  const _MyCatUiState({this.name = '', this.age = 0, this.weight = null, this.gender = null, this.profileImage = null, this.isLoading = false, this.showNameError = false, this.nameErrorType = null, this.showAgeError = false, this.ageErrorType = null, this.showWeightError = false, this.weightErrorType = null, this.showGenderError = false});
  

@override@JsonKey() final  String name;
@override@JsonKey() final  int age;
@override@JsonKey() final  double? weight;
@override@JsonKey() final  Gender? gender;
@override@JsonKey() final  File? profileImage;
@override@JsonKey() final  bool isLoading;
// Validation states
@override@JsonKey() final  bool showNameError;
@override@JsonKey() final  NameErrorType? nameErrorType;
@override@JsonKey() final  bool showAgeError;
@override@JsonKey() final  AgeErrorType? ageErrorType;
@override@JsonKey() final  bool showWeightError;
@override@JsonKey() final  WeightErrorType? weightErrorType;
@override@JsonKey() final  bool showGenderError;

/// Create a copy of MyCatUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyCatUiStateCopyWith<_MyCatUiState> get copyWith => __$MyCatUiStateCopyWithImpl<_MyCatUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyCatUiState&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showNameError, showNameError) || other.showNameError == showNameError)&&(identical(other.nameErrorType, nameErrorType) || other.nameErrorType == nameErrorType)&&(identical(other.showAgeError, showAgeError) || other.showAgeError == showAgeError)&&(identical(other.ageErrorType, ageErrorType) || other.ageErrorType == ageErrorType)&&(identical(other.showWeightError, showWeightError) || other.showWeightError == showWeightError)&&(identical(other.weightErrorType, weightErrorType) || other.weightErrorType == weightErrorType)&&(identical(other.showGenderError, showGenderError) || other.showGenderError == showGenderError));
}


@override
int get hashCode => Object.hash(runtimeType,name,age,weight,gender,profileImage,isLoading,showNameError,nameErrorType,showAgeError,ageErrorType,showWeightError,weightErrorType,showGenderError);

@override
String toString() {
  return 'MyCatUiState(name: $name, age: $age, weight: $weight, gender: $gender, profileImage: $profileImage, isLoading: $isLoading, showNameError: $showNameError, nameErrorType: $nameErrorType, showAgeError: $showAgeError, ageErrorType: $ageErrorType, showWeightError: $showWeightError, weightErrorType: $weightErrorType, showGenderError: $showGenderError)';
}


}

/// @nodoc
abstract mixin class _$MyCatUiStateCopyWith<$Res> implements $MyCatUiStateCopyWith<$Res> {
  factory _$MyCatUiStateCopyWith(_MyCatUiState value, $Res Function(_MyCatUiState) _then) = __$MyCatUiStateCopyWithImpl;
@override @useResult
$Res call({
 String name, int age, double? weight, Gender? gender, File? profileImage, bool isLoading, bool showNameError, NameErrorType? nameErrorType, bool showAgeError, AgeErrorType? ageErrorType, bool showWeightError, WeightErrorType? weightErrorType, bool showGenderError
});




}
/// @nodoc
class __$MyCatUiStateCopyWithImpl<$Res>
    implements _$MyCatUiStateCopyWith<$Res> {
  __$MyCatUiStateCopyWithImpl(this._self, this._then);

  final _MyCatUiState _self;
  final $Res Function(_MyCatUiState) _then;

/// Create a copy of MyCatUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? age = null,Object? weight = freezed,Object? gender = freezed,Object? profileImage = freezed,Object? isLoading = null,Object? showNameError = null,Object? nameErrorType = freezed,Object? showAgeError = null,Object? ageErrorType = freezed,Object? showWeightError = null,Object? weightErrorType = freezed,Object? showGenderError = null,}) {
  return _then(_MyCatUiState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as File?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showNameError: null == showNameError ? _self.showNameError : showNameError // ignore: cast_nullable_to_non_nullable
as bool,nameErrorType: freezed == nameErrorType ? _self.nameErrorType : nameErrorType // ignore: cast_nullable_to_non_nullable
as NameErrorType?,showAgeError: null == showAgeError ? _self.showAgeError : showAgeError // ignore: cast_nullable_to_non_nullable
as bool,ageErrorType: freezed == ageErrorType ? _self.ageErrorType : ageErrorType // ignore: cast_nullable_to_non_nullable
as AgeErrorType?,showWeightError: null == showWeightError ? _self.showWeightError : showWeightError // ignore: cast_nullable_to_non_nullable
as bool,weightErrorType: freezed == weightErrorType ? _self.weightErrorType : weightErrorType // ignore: cast_nullable_to_non_nullable
as WeightErrorType?,showGenderError: null == showGenderError ? _self.showGenderError : showGenderError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
