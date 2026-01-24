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
mixin _$ResultMessage {

 MessageType get type; ImageSourceType? get imageSource;
/// Create a copy of ResultMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultMessageCopyWith<ResultMessage> get copyWith => _$ResultMessageCopyWithImpl<ResultMessage>(this as ResultMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultMessage&&(identical(other.type, type) || other.type == type)&&(identical(other.imageSource, imageSource) || other.imageSource == imageSource));
}


@override
int get hashCode => Object.hash(runtimeType,type,imageSource);

@override
String toString() {
  return 'ResultMessage(type: $type, imageSource: $imageSource)';
}


}

/// @nodoc
abstract mixin class $ResultMessageCopyWith<$Res>  {
  factory $ResultMessageCopyWith(ResultMessage value, $Res Function(ResultMessage) _then) = _$ResultMessageCopyWithImpl;
@useResult
$Res call({
 MessageType type, ImageSourceType? imageSource
});




}
/// @nodoc
class _$ResultMessageCopyWithImpl<$Res>
    implements $ResultMessageCopyWith<$Res> {
  _$ResultMessageCopyWithImpl(this._self, this._then);

  final ResultMessage _self;
  final $Res Function(ResultMessage) _then;

/// Create a copy of ResultMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? imageSource = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,imageSource: freezed == imageSource ? _self.imageSource : imageSource // ignore: cast_nullable_to_non_nullable
as ImageSourceType?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResultMessage].
extension ResultMessagePatterns on ResultMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResultMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResultMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResultMessage value)  $default,){
final _that = this;
switch (_that) {
case _ResultMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResultMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ResultMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MessageType type,  ImageSourceType? imageSource)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResultMessage() when $default != null:
return $default(_that.type,_that.imageSource);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MessageType type,  ImageSourceType? imageSource)  $default,) {final _that = this;
switch (_that) {
case _ResultMessage():
return $default(_that.type,_that.imageSource);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MessageType type,  ImageSourceType? imageSource)?  $default,) {final _that = this;
switch (_that) {
case _ResultMessage() when $default != null:
return $default(_that.type,_that.imageSource);case _:
  return null;

}
}

}

/// @nodoc


class _ResultMessage implements ResultMessage {
  const _ResultMessage({required this.type, this.imageSource});
  

@override final  MessageType type;
@override final  ImageSourceType? imageSource;

/// Create a copy of ResultMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResultMessageCopyWith<_ResultMessage> get copyWith => __$ResultMessageCopyWithImpl<_ResultMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResultMessage&&(identical(other.type, type) || other.type == type)&&(identical(other.imageSource, imageSource) || other.imageSource == imageSource));
}


@override
int get hashCode => Object.hash(runtimeType,type,imageSource);

@override
String toString() {
  return 'ResultMessage(type: $type, imageSource: $imageSource)';
}


}

/// @nodoc
abstract mixin class _$ResultMessageCopyWith<$Res> implements $ResultMessageCopyWith<$Res> {
  factory _$ResultMessageCopyWith(_ResultMessage value, $Res Function(_ResultMessage) _then) = __$ResultMessageCopyWithImpl;
@override @useResult
$Res call({
 MessageType type, ImageSourceType? imageSource
});




}
/// @nodoc
class __$ResultMessageCopyWithImpl<$Res>
    implements _$ResultMessageCopyWith<$Res> {
  __$ResultMessageCopyWithImpl(this._self, this._then);

  final _ResultMessage _self;
  final $Res Function(_ResultMessage) _then;

/// Create a copy of ResultMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? imageSource = freezed,}) {
  return _then(_ResultMessage(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,imageSource: freezed == imageSource ? _self.imageSource : imageSource // ignore: cast_nullable_to_non_nullable
as ImageSourceType?,
  ));
}


}

/// @nodoc
mixin _$UploadUiState {

 bool get isUploading; File? get selectedImage; ResultMessage? get resultMessage;
/// Create a copy of UploadUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadUiStateCopyWith<UploadUiState> get copyWith => _$UploadUiStateCopyWithImpl<UploadUiState>(this as UploadUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadUiState&&(identical(other.isUploading, isUploading) || other.isUploading == isUploading)&&(identical(other.selectedImage, selectedImage) || other.selectedImage == selectedImage)&&(identical(other.resultMessage, resultMessage) || other.resultMessage == resultMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isUploading,selectedImage,resultMessage);

@override
String toString() {
  return 'UploadUiState(isUploading: $isUploading, selectedImage: $selectedImage, resultMessage: $resultMessage)';
}


}

/// @nodoc
abstract mixin class $UploadUiStateCopyWith<$Res>  {
  factory $UploadUiStateCopyWith(UploadUiState value, $Res Function(UploadUiState) _then) = _$UploadUiStateCopyWithImpl;
@useResult
$Res call({
 bool isUploading, File? selectedImage, ResultMessage? resultMessage
});


$ResultMessageCopyWith<$Res>? get resultMessage;

}
/// @nodoc
class _$UploadUiStateCopyWithImpl<$Res>
    implements $UploadUiStateCopyWith<$Res> {
  _$UploadUiStateCopyWithImpl(this._self, this._then);

  final UploadUiState _self;
  final $Res Function(UploadUiState) _then;

/// Create a copy of UploadUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isUploading = null,Object? selectedImage = freezed,Object? resultMessage = freezed,}) {
  return _then(_self.copyWith(
isUploading: null == isUploading ? _self.isUploading : isUploading // ignore: cast_nullable_to_non_nullable
as bool,selectedImage: freezed == selectedImage ? _self.selectedImage : selectedImage // ignore: cast_nullable_to_non_nullable
as File?,resultMessage: freezed == resultMessage ? _self.resultMessage : resultMessage // ignore: cast_nullable_to_non_nullable
as ResultMessage?,
  ));
}
/// Create a copy of UploadUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultMessageCopyWith<$Res>? get resultMessage {
    if (_self.resultMessage == null) {
    return null;
  }

  return $ResultMessageCopyWith<$Res>(_self.resultMessage!, (value) {
    return _then(_self.copyWith(resultMessage: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isUploading,  File? selectedImage,  ResultMessage? resultMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadUiState() when $default != null:
return $default(_that.isUploading,_that.selectedImage,_that.resultMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isUploading,  File? selectedImage,  ResultMessage? resultMessage)  $default,) {final _that = this;
switch (_that) {
case _UploadUiState():
return $default(_that.isUploading,_that.selectedImage,_that.resultMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isUploading,  File? selectedImage,  ResultMessage? resultMessage)?  $default,) {final _that = this;
switch (_that) {
case _UploadUiState() when $default != null:
return $default(_that.isUploading,_that.selectedImage,_that.resultMessage);case _:
  return null;

}
}

}

/// @nodoc


class _UploadUiState implements UploadUiState {
  const _UploadUiState({this.isUploading = false, this.selectedImage, this.resultMessage});
  

@override@JsonKey() final  bool isUploading;
@override final  File? selectedImage;
@override final  ResultMessage? resultMessage;

/// Create a copy of UploadUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadUiStateCopyWith<_UploadUiState> get copyWith => __$UploadUiStateCopyWithImpl<_UploadUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadUiState&&(identical(other.isUploading, isUploading) || other.isUploading == isUploading)&&(identical(other.selectedImage, selectedImage) || other.selectedImage == selectedImage)&&(identical(other.resultMessage, resultMessage) || other.resultMessage == resultMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isUploading,selectedImage,resultMessage);

@override
String toString() {
  return 'UploadUiState(isUploading: $isUploading, selectedImage: $selectedImage, resultMessage: $resultMessage)';
}


}

/// @nodoc
abstract mixin class _$UploadUiStateCopyWith<$Res> implements $UploadUiStateCopyWith<$Res> {
  factory _$UploadUiStateCopyWith(_UploadUiState value, $Res Function(_UploadUiState) _then) = __$UploadUiStateCopyWithImpl;
@override @useResult
$Res call({
 bool isUploading, File? selectedImage, ResultMessage? resultMessage
});


@override $ResultMessageCopyWith<$Res>? get resultMessage;

}
/// @nodoc
class __$UploadUiStateCopyWithImpl<$Res>
    implements _$UploadUiStateCopyWith<$Res> {
  __$UploadUiStateCopyWithImpl(this._self, this._then);

  final _UploadUiState _self;
  final $Res Function(_UploadUiState) _then;

/// Create a copy of UploadUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isUploading = null,Object? selectedImage = freezed,Object? resultMessage = freezed,}) {
  return _then(_UploadUiState(
isUploading: null == isUploading ? _self.isUploading : isUploading // ignore: cast_nullable_to_non_nullable
as bool,selectedImage: freezed == selectedImage ? _self.selectedImage : selectedImage // ignore: cast_nullable_to_non_nullable
as File?,resultMessage: freezed == resultMessage ? _self.resultMessage : resultMessage // ignore: cast_nullable_to_non_nullable
as ResultMessage?,
  ));
}

/// Create a copy of UploadUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultMessageCopyWith<$Res>? get resultMessage {
    if (_self.resultMessage == null) {
    return null;
  }

  return $ResultMessageCopyWith<$Res>(_self.resultMessage!, (value) {
    return _then(_self.copyWith(resultMessage: value));
  });
}
}

// dart format on
