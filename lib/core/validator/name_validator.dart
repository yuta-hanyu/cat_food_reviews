enum NameErrorType { required, maxLength }

class NameValidationResult {
  const NameValidationResult({required this.isValid, this.errorType});

  final bool isValid;
  final NameErrorType? errorType;
}

class NameValidator {
  static const int maxLength = 50;

  static NameValidationResult validate(
    String name, {
    required bool isRequired,
  }) {
    final trimmed = name.trim();

    if (isRequired && trimmed.isEmpty) {
      return const NameValidationResult(
        isValid: false,
        errorType: NameErrorType.required,
      );
    }

    if (trimmed.isEmpty) {
      return const NameValidationResult(isValid: true);
    }

    if (trimmed.length > maxLength) {
      return const NameValidationResult(
        isValid: false,
        errorType: NameErrorType.maxLength,
      );
    }

    return const NameValidationResult(isValid: true);
  }
}
