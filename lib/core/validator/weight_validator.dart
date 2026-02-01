enum WeightErrorType { notNumber, outOfRange }

class WeightValidationResult {
  const WeightValidationResult({required this.isValid, this.errorType});

  final bool isValid;
  final WeightErrorType? errorType;
}

class WeightValidator {
  static const double minWeight = 0.1;
  static const double maxWeight = 5.0;

  static WeightValidationResult validate(String weight) {
    final trimmed = weight.trim();

    if (trimmed.isEmpty) {
      return const WeightValidationResult(isValid: true);
    }

    final weightDouble = double.tryParse(trimmed);
    if (weightDouble == null) {
      return const WeightValidationResult(
        isValid: false,
        errorType: WeightErrorType.notNumber,
      );
    }

    if (weightDouble < minWeight || weightDouble > maxWeight) {
      return const WeightValidationResult(
        isValid: false,
        errorType: WeightErrorType.outOfRange,
      );
    }

    return const WeightValidationResult(isValid: true);
  }
}
