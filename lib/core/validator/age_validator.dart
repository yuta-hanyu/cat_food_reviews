enum AgeErrorType {
  notNumber,
  outOfRange,
}

class AgeValidationResult {
  const AgeValidationResult({
    required this.isValid,
    this.errorType,
  });

  final bool isValid;
  final AgeErrorType? errorType;
}

class AgeValidator {
  static const int minAge = 0;
  static const int maxAge = 30;

  static AgeValidationResult validate(String age) {
    final trimmed = age.trim();

    if (trimmed.isEmpty) {
      return const AgeValidationResult(isValid: true);
    }

    final ageInt = int.tryParse(trimmed);
    if (ageInt == null) {
      return const AgeValidationResult(
        isValid: false,
        errorType: AgeErrorType.notNumber,
      );
    }

    if (ageInt <= minAge || ageInt > maxAge) {
      return const AgeValidationResult(
        isValid: false,
        errorType: AgeErrorType.outOfRange,
      );
    }

    return const AgeValidationResult(isValid: true);
  }
}
