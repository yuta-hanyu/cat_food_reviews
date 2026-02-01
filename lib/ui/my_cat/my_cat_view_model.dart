import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:cat_food_reviews/ui/my_cat/my_cat_ui_state.dart';
import 'package:cat_food_reviews/core/validator/name_validator.dart';
import 'package:cat_food_reviews/core/validator/age_validator.dart';
import 'package:cat_food_reviews/core/validator/weight_validator.dart';
import 'package:cat_food_reviews/core/logger/app_logger_provider.dart';

part 'my_cat_view_model.g.dart';

@riverpod
class MyCatViewModel extends _$MyCatViewModel {
  late final ImagePicker _imagePicker;
  late final _logger = ref.read(appLoggerProvider);

  @override
  MyCatUiState build() {
    _imagePicker = ImagePicker();
    return const MyCatUiState();
  }

  void updateName(String name) {
    state = state.copyWith(
      name: name,
      showNameError: false,
      nameErrorType: null,
    );
  }

  void onNameFocusLost() {
    final nameResult = NameValidator.validate(state.name, isRequired: true);
    if (!nameResult.isValid) {
      state = state.copyWith(
        showNameError: true,
        nameErrorType: nameResult.errorType,
      );
    } else {
      state = state.copyWith(showNameError: false, nameErrorType: null);
    }
  }

  void updateAge(int age) {
    state = state.copyWith(age: age, showAgeError: false, ageErrorType: null);
  }

  void onAgeFocusLost() {
    final ageResult = AgeValidator.validate(state.age.toString());
    if (!ageResult.isValid) {
      state = state.copyWith(
        showAgeError: true,
        ageErrorType: ageResult.errorType,
      );
    } else {
      state = state.copyWith(showAgeError: false, ageErrorType: null);
    }
  }

  void updateWeight(double? weight) {
    state = state.copyWith(
      weight: weight,
      showWeightError: false,
      weightErrorType: null,
    );
  }

  void onWeightFocusLost() {
    final weightResult = WeightValidator.validate(
      state.weight?.toString() ?? '',
    );
    if (!weightResult.isValid) {
      state = state.copyWith(
        showWeightError: true,
        weightErrorType: weightResult.errorType,
      );
    } else {
      state = state.copyWith(showWeightError: false, weightErrorType: null);
    }
  }

  void updateGender(Gender gender) {
    state = state.copyWith(gender: gender, showGenderError: false);
  }

  Future<void> pickImage() async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 80,
      );

      if (pickedFile != null) {
        state = state.copyWith(profileImage: File(pickedFile.path));
      }
    } catch (e) {
      _logger.e(message: 'Error picking image: $e');
    }
  }

  Future<void> takePicture() async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
        source: ImageSource.camera,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 80,
      );

      if (pickedFile != null) {
        state = state.copyWith(profileImage: File(pickedFile.path));
      }
    } catch (e) {
      _logger.e(message: 'Error taking picture: $e');
    }
  }

  void deleteProfileImage() {
    state = state.copyWith(profileImage: null);
  }

  Future<void> registerCat() async {
    if (!_validateAllFields()) {
      return;
    }

    state = state.copyWith(isLoading: true);

    try {
      // TODO: Implement actual registration logic
      // ignore: inference_failure_on_instance_creation
      await Future.delayed(const Duration(seconds: 2));

      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false);
      _logger.e(message: 'Error registering cat: $e');
    }
  }

  bool _validateAllFields() {
    var hasError = false;

    // Name validation
    final nameResult = NameValidator.validate(state.name, isRequired: true);
    if (!nameResult.isValid) {
      state = state.copyWith(
        showNameError: true,
        nameErrorType: nameResult.errorType,
      );
      hasError = true;
    }

    // Age validation
    final ageResult = AgeValidator.validate(state.age.toString());
    if (!ageResult.isValid) {
      state = state.copyWith(
        showAgeError: true,
        ageErrorType: ageResult.errorType,
      );
      hasError = true;
    }

    // Weight validation
    final weightResult = WeightValidator.validate(
      state.weight?.toString() ?? '',
    );
    if (!weightResult.isValid) {
      state = state.copyWith(
        showWeightError: true,
        weightErrorType: weightResult.errorType,
      );
      hasError = true;
    }

    // Gender validation
    if (state.gender == null) {
      state = state.copyWith(showGenderError: true);
      hasError = true;
    }

    return !hasError;
  }
}
