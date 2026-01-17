import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFFF849D);
  static const Color secondary = Color(0xFFFFD166);
  static const Color backgroundLight = Color(0xFFFFF9F5);
  static const Color backgroundDark = Color(0xFF1F1F1F);
  static const Color textMain = Color(0xFF4A3B32);
  static const Color textSub = Color(0xFF8D8D8D);

  // グラデーション背景色（HTML参照）
  static const Color gradientStart = Color(0xFFFFF0F5); // #FFF0F5
  static const Color gradientMiddle = Color(0xFFFFFBF5); // #FFFBF5
  static const Color gradientEnd = Color(0xFFFFFBE8); // #FFFBE8

  static const Color white = Color(0xFFFFFFFF);

  // Feature colors
  static const Color featurePhoto = Color(0xFFFF8A9B);
  static const Color featureAI = Color(0xFF64B5F6);
  static const Color featureSafe = Color(0xFF81C784);

  // Button colors
  static const Color buttonPrimary = Color(0xFFFF8FA3);
  static const Color buttonSecondary = Color(0xFFF8BBD9);

  // 共通背景グラデーション
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [gradientStart, gradientMiddle, gradientEnd],
  );
}
