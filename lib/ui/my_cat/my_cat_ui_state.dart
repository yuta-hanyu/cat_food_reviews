import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:io';
import 'package:cat_food_reviews/core/validator/name_validator.dart';
import 'package:cat_food_reviews/core/validator/age_validator.dart';
import 'package:cat_food_reviews/core/validator/weight_validator.dart';

part 'my_cat_ui_state.freezed.dart';

@freezed
sealed class MyCatUiState with _$MyCatUiState {
  const factory MyCatUiState({
    @Default('') String name,
    @Default(0) int age,
    @Default(null) double? weight,
    @Default(null) Gender? gender,
    @Default(null) File? profileImage,
    @Default(false) bool isLoading,
    // Validation states
    @Default(false) bool showNameError,
    @Default(null) NameErrorType? nameErrorType,
    @Default(false) bool showAgeError,
    @Default(null) AgeErrorType? ageErrorType,
    @Default(false) bool showWeightError,
    @Default(null) WeightErrorType? weightErrorType,
    @Default(false) bool showGenderError,
  }) = _MyCatUiState;
}

enum Gender { male, female }
