import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/core/validator/name_validator.dart';
import 'package:cat_food_reviews/core/validator/age_validator.dart';
import 'package:cat_food_reviews/core/validator/weight_validator.dart';

class ValidationErrorMessageHelper {
  static String? getNameErrorMessage(
    NameErrorType? errorType,
    AppLocalizations l10n,
  ) {
    if (errorType == null) return null;

    switch (errorType) {
      case NameErrorType.required:
        return l10n.nameRequiredError;
      case NameErrorType.maxLength:
        return l10n.nameMaxLengthError;
    }
  }

  static String? getAgeErrorMessage(
    AgeErrorType? errorType,
    AppLocalizations l10n,
  ) {
    if (errorType == null) return null;

    switch (errorType) {
      case AgeErrorType.notNumber:
        return l10n.ageNotNumberError;
      case AgeErrorType.outOfRange:
        return l10n.ageOutOfRangeError;
    }
  }

  static String? getWeightErrorMessage(
    WeightErrorType? errorType,
    AppLocalizations l10n,
  ) {
    if (errorType == null) return null;

    switch (errorType) {
      case WeightErrorType.notNumber:
        return l10n.weightNotNumberError;
      case WeightErrorType.outOfRange:
        return l10n.weightOutOfRangeError;
    }
  }
}
