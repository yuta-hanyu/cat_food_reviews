// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_analysis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewAnalysis implements DiagnosticableTreeMixin {

 int get overallScore; String get oneLiner; String get overallEvaluation; List<String> get goodPoints; List<String> get badPoints; NutritionAnalysis get nutrition;
/// Create a copy of ReviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewAnalysisCopyWith<ReviewAnalysis> get copyWith => _$ReviewAnalysisCopyWithImpl<ReviewAnalysis>(this as ReviewAnalysis, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewAnalysis'))
    ..add(DiagnosticsProperty('overallScore', overallScore))..add(DiagnosticsProperty('oneLiner', oneLiner))..add(DiagnosticsProperty('overallEvaluation', overallEvaluation))..add(DiagnosticsProperty('goodPoints', goodPoints))..add(DiagnosticsProperty('badPoints', badPoints))..add(DiagnosticsProperty('nutrition', nutrition));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewAnalysis&&(identical(other.overallScore, overallScore) || other.overallScore == overallScore)&&(identical(other.oneLiner, oneLiner) || other.oneLiner == oneLiner)&&(identical(other.overallEvaluation, overallEvaluation) || other.overallEvaluation == overallEvaluation)&&const DeepCollectionEquality().equals(other.goodPoints, goodPoints)&&const DeepCollectionEquality().equals(other.badPoints, badPoints)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition));
}


@override
int get hashCode => Object.hash(runtimeType,overallScore,oneLiner,overallEvaluation,const DeepCollectionEquality().hash(goodPoints),const DeepCollectionEquality().hash(badPoints),nutrition);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewAnalysis(overallScore: $overallScore, oneLiner: $oneLiner, overallEvaluation: $overallEvaluation, goodPoints: $goodPoints, badPoints: $badPoints, nutrition: $nutrition)';
}


}

/// @nodoc
abstract mixin class $ReviewAnalysisCopyWith<$Res>  {
  factory $ReviewAnalysisCopyWith(ReviewAnalysis value, $Res Function(ReviewAnalysis) _then) = _$ReviewAnalysisCopyWithImpl;
@useResult
$Res call({
 int overallScore, String oneLiner, String overallEvaluation, List<String> goodPoints, List<String> badPoints, NutritionAnalysis nutrition
});


$NutritionAnalysisCopyWith<$Res> get nutrition;

}
/// @nodoc
class _$ReviewAnalysisCopyWithImpl<$Res>
    implements $ReviewAnalysisCopyWith<$Res> {
  _$ReviewAnalysisCopyWithImpl(this._self, this._then);

  final ReviewAnalysis _self;
  final $Res Function(ReviewAnalysis) _then;

/// Create a copy of ReviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? overallScore = null,Object? oneLiner = null,Object? overallEvaluation = null,Object? goodPoints = null,Object? badPoints = null,Object? nutrition = null,}) {
  return _then(_self.copyWith(
overallScore: null == overallScore ? _self.overallScore : overallScore // ignore: cast_nullable_to_non_nullable
as int,oneLiner: null == oneLiner ? _self.oneLiner : oneLiner // ignore: cast_nullable_to_non_nullable
as String,overallEvaluation: null == overallEvaluation ? _self.overallEvaluation : overallEvaluation // ignore: cast_nullable_to_non_nullable
as String,goodPoints: null == goodPoints ? _self.goodPoints : goodPoints // ignore: cast_nullable_to_non_nullable
as List<String>,badPoints: null == badPoints ? _self.badPoints : badPoints // ignore: cast_nullable_to_non_nullable
as List<String>,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as NutritionAnalysis,
  ));
}
/// Create a copy of ReviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionAnalysisCopyWith<$Res> get nutrition {
  
  return $NutritionAnalysisCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewAnalysis].
extension ReviewAnalysisPatterns on ReviewAnalysis {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewAnalysis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewAnalysis() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewAnalysis value)  $default,){
final _that = this;
switch (_that) {
case _ReviewAnalysis():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewAnalysis value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewAnalysis() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int overallScore,  String oneLiner,  String overallEvaluation,  List<String> goodPoints,  List<String> badPoints,  NutritionAnalysis nutrition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewAnalysis() when $default != null:
return $default(_that.overallScore,_that.oneLiner,_that.overallEvaluation,_that.goodPoints,_that.badPoints,_that.nutrition);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int overallScore,  String oneLiner,  String overallEvaluation,  List<String> goodPoints,  List<String> badPoints,  NutritionAnalysis nutrition)  $default,) {final _that = this;
switch (_that) {
case _ReviewAnalysis():
return $default(_that.overallScore,_that.oneLiner,_that.overallEvaluation,_that.goodPoints,_that.badPoints,_that.nutrition);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int overallScore,  String oneLiner,  String overallEvaluation,  List<String> goodPoints,  List<String> badPoints,  NutritionAnalysis nutrition)?  $default,) {final _that = this;
switch (_that) {
case _ReviewAnalysis() when $default != null:
return $default(_that.overallScore,_that.oneLiner,_that.overallEvaluation,_that.goodPoints,_that.badPoints,_that.nutrition);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewAnalysis with DiagnosticableTreeMixin implements ReviewAnalysis {
  const _ReviewAnalysis({required this.overallScore, required this.oneLiner, required this.overallEvaluation, required final  List<String> goodPoints, required final  List<String> badPoints, required this.nutrition}): _goodPoints = goodPoints,_badPoints = badPoints;
  

@override final  int overallScore;
@override final  String oneLiner;
@override final  String overallEvaluation;
 final  List<String> _goodPoints;
@override List<String> get goodPoints {
  if (_goodPoints is EqualUnmodifiableListView) return _goodPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_goodPoints);
}

 final  List<String> _badPoints;
@override List<String> get badPoints {
  if (_badPoints is EqualUnmodifiableListView) return _badPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_badPoints);
}

@override final  NutritionAnalysis nutrition;

/// Create a copy of ReviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewAnalysisCopyWith<_ReviewAnalysis> get copyWith => __$ReviewAnalysisCopyWithImpl<_ReviewAnalysis>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewAnalysis'))
    ..add(DiagnosticsProperty('overallScore', overallScore))..add(DiagnosticsProperty('oneLiner', oneLiner))..add(DiagnosticsProperty('overallEvaluation', overallEvaluation))..add(DiagnosticsProperty('goodPoints', goodPoints))..add(DiagnosticsProperty('badPoints', badPoints))..add(DiagnosticsProperty('nutrition', nutrition));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewAnalysis&&(identical(other.overallScore, overallScore) || other.overallScore == overallScore)&&(identical(other.oneLiner, oneLiner) || other.oneLiner == oneLiner)&&(identical(other.overallEvaluation, overallEvaluation) || other.overallEvaluation == overallEvaluation)&&const DeepCollectionEquality().equals(other._goodPoints, _goodPoints)&&const DeepCollectionEquality().equals(other._badPoints, _badPoints)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition));
}


@override
int get hashCode => Object.hash(runtimeType,overallScore,oneLiner,overallEvaluation,const DeepCollectionEquality().hash(_goodPoints),const DeepCollectionEquality().hash(_badPoints),nutrition);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewAnalysis(overallScore: $overallScore, oneLiner: $oneLiner, overallEvaluation: $overallEvaluation, goodPoints: $goodPoints, badPoints: $badPoints, nutrition: $nutrition)';
}


}

/// @nodoc
abstract mixin class _$ReviewAnalysisCopyWith<$Res> implements $ReviewAnalysisCopyWith<$Res> {
  factory _$ReviewAnalysisCopyWith(_ReviewAnalysis value, $Res Function(_ReviewAnalysis) _then) = __$ReviewAnalysisCopyWithImpl;
@override @useResult
$Res call({
 int overallScore, String oneLiner, String overallEvaluation, List<String> goodPoints, List<String> badPoints, NutritionAnalysis nutrition
});


@override $NutritionAnalysisCopyWith<$Res> get nutrition;

}
/// @nodoc
class __$ReviewAnalysisCopyWithImpl<$Res>
    implements _$ReviewAnalysisCopyWith<$Res> {
  __$ReviewAnalysisCopyWithImpl(this._self, this._then);

  final _ReviewAnalysis _self;
  final $Res Function(_ReviewAnalysis) _then;

/// Create a copy of ReviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overallScore = null,Object? oneLiner = null,Object? overallEvaluation = null,Object? goodPoints = null,Object? badPoints = null,Object? nutrition = null,}) {
  return _then(_ReviewAnalysis(
overallScore: null == overallScore ? _self.overallScore : overallScore // ignore: cast_nullable_to_non_nullable
as int,oneLiner: null == oneLiner ? _self.oneLiner : oneLiner // ignore: cast_nullable_to_non_nullable
as String,overallEvaluation: null == overallEvaluation ? _self.overallEvaluation : overallEvaluation // ignore: cast_nullable_to_non_nullable
as String,goodPoints: null == goodPoints ? _self._goodPoints : goodPoints // ignore: cast_nullable_to_non_nullable
as List<String>,badPoints: null == badPoints ? _self._badPoints : badPoints // ignore: cast_nullable_to_non_nullable
as List<String>,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as NutritionAnalysis,
  ));
}

/// Create a copy of ReviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionAnalysisCopyWith<$Res> get nutrition {
  
  return $NutritionAnalysisCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}
}

/// @nodoc
mixin _$NutritionAnalysis implements DiagnosticableTreeMixin {

 NutritionItem get protein; NutritionItem get fat; NutritionItem get fiber; NutritionItem get carbohydrate;
/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionAnalysisCopyWith<NutritionAnalysis> get copyWith => _$NutritionAnalysisCopyWithImpl<NutritionAnalysis>(this as NutritionAnalysis, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NutritionAnalysis'))
    ..add(DiagnosticsProperty('protein', protein))..add(DiagnosticsProperty('fat', fat))..add(DiagnosticsProperty('fiber', fiber))..add(DiagnosticsProperty('carbohydrate', carbohydrate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionAnalysis&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.fiber, fiber) || other.fiber == fiber)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate));
}


@override
int get hashCode => Object.hash(runtimeType,protein,fat,fiber,carbohydrate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NutritionAnalysis(protein: $protein, fat: $fat, fiber: $fiber, carbohydrate: $carbohydrate)';
}


}

/// @nodoc
abstract mixin class $NutritionAnalysisCopyWith<$Res>  {
  factory $NutritionAnalysisCopyWith(NutritionAnalysis value, $Res Function(NutritionAnalysis) _then) = _$NutritionAnalysisCopyWithImpl;
@useResult
$Res call({
 NutritionItem protein, NutritionItem fat, NutritionItem fiber, NutritionItem carbohydrate
});


$NutritionItemCopyWith<$Res> get protein;$NutritionItemCopyWith<$Res> get fat;$NutritionItemCopyWith<$Res> get fiber;$NutritionItemCopyWith<$Res> get carbohydrate;

}
/// @nodoc
class _$NutritionAnalysisCopyWithImpl<$Res>
    implements $NutritionAnalysisCopyWith<$Res> {
  _$NutritionAnalysisCopyWithImpl(this._self, this._then);

  final NutritionAnalysis _self;
  final $Res Function(NutritionAnalysis) _then;

/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? protein = null,Object? fat = null,Object? fiber = null,Object? carbohydrate = null,}) {
  return _then(_self.copyWith(
protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutritionItem,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutritionItem,fiber: null == fiber ? _self.fiber : fiber // ignore: cast_nullable_to_non_nullable
as NutritionItem,carbohydrate: null == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutritionItem,
  ));
}
/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionItemCopyWith<$Res> get protein {
  
  return $NutritionItemCopyWith<$Res>(_self.protein, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionItemCopyWith<$Res> get fat {
  
  return $NutritionItemCopyWith<$Res>(_self.fat, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionItemCopyWith<$Res> get fiber {
  
  return $NutritionItemCopyWith<$Res>(_self.fiber, (value) {
    return _then(_self.copyWith(fiber: value));
  });
}/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionItemCopyWith<$Res> get carbohydrate {
  
  return $NutritionItemCopyWith<$Res>(_self.carbohydrate, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}
}


/// Adds pattern-matching-related methods to [NutritionAnalysis].
extension NutritionAnalysisPatterns on NutritionAnalysis {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionAnalysis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionAnalysis() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionAnalysis value)  $default,){
final _that = this;
switch (_that) {
case _NutritionAnalysis():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionAnalysis value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionAnalysis() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NutritionItem protein,  NutritionItem fat,  NutritionItem fiber,  NutritionItem carbohydrate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionAnalysis() when $default != null:
return $default(_that.protein,_that.fat,_that.fiber,_that.carbohydrate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NutritionItem protein,  NutritionItem fat,  NutritionItem fiber,  NutritionItem carbohydrate)  $default,) {final _that = this;
switch (_that) {
case _NutritionAnalysis():
return $default(_that.protein,_that.fat,_that.fiber,_that.carbohydrate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NutritionItem protein,  NutritionItem fat,  NutritionItem fiber,  NutritionItem carbohydrate)?  $default,) {final _that = this;
switch (_that) {
case _NutritionAnalysis() when $default != null:
return $default(_that.protein,_that.fat,_that.fiber,_that.carbohydrate);case _:
  return null;

}
}

}

/// @nodoc


class _NutritionAnalysis with DiagnosticableTreeMixin implements NutritionAnalysis {
  const _NutritionAnalysis({required this.protein, required this.fat, required this.fiber, required this.carbohydrate});
  

@override final  NutritionItem protein;
@override final  NutritionItem fat;
@override final  NutritionItem fiber;
@override final  NutritionItem carbohydrate;

/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionAnalysisCopyWith<_NutritionAnalysis> get copyWith => __$NutritionAnalysisCopyWithImpl<_NutritionAnalysis>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NutritionAnalysis'))
    ..add(DiagnosticsProperty('protein', protein))..add(DiagnosticsProperty('fat', fat))..add(DiagnosticsProperty('fiber', fiber))..add(DiagnosticsProperty('carbohydrate', carbohydrate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionAnalysis&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.fiber, fiber) || other.fiber == fiber)&&(identical(other.carbohydrate, carbohydrate) || other.carbohydrate == carbohydrate));
}


@override
int get hashCode => Object.hash(runtimeType,protein,fat,fiber,carbohydrate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NutritionAnalysis(protein: $protein, fat: $fat, fiber: $fiber, carbohydrate: $carbohydrate)';
}


}

/// @nodoc
abstract mixin class _$NutritionAnalysisCopyWith<$Res> implements $NutritionAnalysisCopyWith<$Res> {
  factory _$NutritionAnalysisCopyWith(_NutritionAnalysis value, $Res Function(_NutritionAnalysis) _then) = __$NutritionAnalysisCopyWithImpl;
@override @useResult
$Res call({
 NutritionItem protein, NutritionItem fat, NutritionItem fiber, NutritionItem carbohydrate
});


@override $NutritionItemCopyWith<$Res> get protein;@override $NutritionItemCopyWith<$Res> get fat;@override $NutritionItemCopyWith<$Res> get fiber;@override $NutritionItemCopyWith<$Res> get carbohydrate;

}
/// @nodoc
class __$NutritionAnalysisCopyWithImpl<$Res>
    implements _$NutritionAnalysisCopyWith<$Res> {
  __$NutritionAnalysisCopyWithImpl(this._self, this._then);

  final _NutritionAnalysis _self;
  final $Res Function(_NutritionAnalysis) _then;

/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? protein = null,Object? fat = null,Object? fiber = null,Object? carbohydrate = null,}) {
  return _then(_NutritionAnalysis(
protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutritionItem,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as NutritionItem,fiber: null == fiber ? _self.fiber : fiber // ignore: cast_nullable_to_non_nullable
as NutritionItem,carbohydrate: null == carbohydrate ? _self.carbohydrate : carbohydrate // ignore: cast_nullable_to_non_nullable
as NutritionItem,
  ));
}

/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionItemCopyWith<$Res> get protein {
  
  return $NutritionItemCopyWith<$Res>(_self.protein, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionItemCopyWith<$Res> get fat {
  
  return $NutritionItemCopyWith<$Res>(_self.fat, (value) {
    return _then(_self.copyWith(fat: value));
  });
}/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionItemCopyWith<$Res> get fiber {
  
  return $NutritionItemCopyWith<$Res>(_self.fiber, (value) {
    return _then(_self.copyWith(fiber: value));
  });
}/// Create a copy of NutritionAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionItemCopyWith<$Res> get carbohydrate {
  
  return $NutritionItemCopyWith<$Res>(_self.carbohydrate, (value) {
    return _then(_self.copyWith(carbohydrate: value));
  });
}
}

/// @nodoc
mixin _$NutritionItem implements DiagnosticableTreeMixin {

 double get value; String get rating; String get comment;
/// Create a copy of NutritionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionItemCopyWith<NutritionItem> get copyWith => _$NutritionItemCopyWithImpl<NutritionItem>(this as NutritionItem, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NutritionItem'))
    ..add(DiagnosticsProperty('value', value))..add(DiagnosticsProperty('rating', rating))..add(DiagnosticsProperty('comment', comment));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionItem&&(identical(other.value, value) || other.value == value)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,value,rating,comment);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NutritionItem(value: $value, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $NutritionItemCopyWith<$Res>  {
  factory $NutritionItemCopyWith(NutritionItem value, $Res Function(NutritionItem) _then) = _$NutritionItemCopyWithImpl;
@useResult
$Res call({
 double value, String rating, String comment
});




}
/// @nodoc
class _$NutritionItemCopyWithImpl<$Res>
    implements $NutritionItemCopyWith<$Res> {
  _$NutritionItemCopyWithImpl(this._self, this._then);

  final NutritionItem _self;
  final $Res Function(NutritionItem) _then;

/// Create a copy of NutritionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? rating = null,Object? comment = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NutritionItem].
extension NutritionItemPatterns on NutritionItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionItem value)  $default,){
final _that = this;
switch (_that) {
case _NutritionItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionItem value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double value,  String rating,  String comment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionItem() when $default != null:
return $default(_that.value,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double value,  String rating,  String comment)  $default,) {final _that = this;
switch (_that) {
case _NutritionItem():
return $default(_that.value,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double value,  String rating,  String comment)?  $default,) {final _that = this;
switch (_that) {
case _NutritionItem() when $default != null:
return $default(_that.value,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class _NutritionItem with DiagnosticableTreeMixin implements NutritionItem {
  const _NutritionItem({required this.value, required this.rating, required this.comment});
  

@override final  double value;
@override final  String rating;
@override final  String comment;

/// Create a copy of NutritionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionItemCopyWith<_NutritionItem> get copyWith => __$NutritionItemCopyWithImpl<_NutritionItem>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NutritionItem'))
    ..add(DiagnosticsProperty('value', value))..add(DiagnosticsProperty('rating', rating))..add(DiagnosticsProperty('comment', comment));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionItem&&(identical(other.value, value) || other.value == value)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,value,rating,comment);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NutritionItem(value: $value, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$NutritionItemCopyWith<$Res> implements $NutritionItemCopyWith<$Res> {
  factory _$NutritionItemCopyWith(_NutritionItem value, $Res Function(_NutritionItem) _then) = __$NutritionItemCopyWithImpl;
@override @useResult
$Res call({
 double value, String rating, String comment
});




}
/// @nodoc
class __$NutritionItemCopyWithImpl<$Res>
    implements _$NutritionItemCopyWith<$Res> {
  __$NutritionItemCopyWithImpl(this._self, this._then);

  final _NutritionItem _self;
  final $Res Function(_NutritionItem) _then;

/// Create a copy of NutritionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? rating = null,Object? comment = null,}) {
  return _then(_NutritionItem(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
