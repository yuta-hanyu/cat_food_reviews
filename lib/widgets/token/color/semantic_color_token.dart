import 'package:flutter/material.dart';

import 'package:cat_food_reviews/widgets/token/color/primitive_color_token.dart';

/// Cat Food Reviewsアプリのセマンティックカラートークン
class SemanticColorToken {
  const SemanticColorToken._();

  // == プライマリカラー ==
  static const Color primary = Color.fromARGB(255, 245, 198, 219);
  static const Color secondary = Color(0xFFFFD166);

  // == テキストカラー ==
  static const Color textDefault = Color(0xFF4A3B32); // textMain
  static const Color textSecondary = Color(0xFF8D8D8D); // textSub
  static const Color textDisabled = PrimitiveColorToken.gray400;
  static const Color textLink = PrimitiveColorToken.green700;
  static const Color textAlert = PrimitiveColorToken.red600;
  static const Color textWhite = PrimitiveColorToken.white;
  static const Color textAttention = PrimitiveColorToken.yellow900;
  static const Color generalFont = Color(0x8A000000); // Colors.black54

  // == 背景カラー ==
  static const Color backgroundDefault = PrimitiveColorToken.gray100;
  static const Color backgroundLight = Color(0xFFFFF9F5);
  static const Color backgroundDark = Color(0xFF1F1F1F);
  static const Color backgroundBlack = PrimitiveColorToken.gray900;
  static const Color backgroundWhite = PrimitiveColorToken.white;
  static const Color backgroundDisabled = PrimitiveColorToken.gray200;
  static const Color backgroundAssistStrong = PrimitiveColorToken.green700;
  static const Color backgroundAssistModest = PrimitiveColorToken.green100;
  static const Color backgroundAlertStrong = PrimitiveColorToken.red600;
  static const Color backgroundAlertModest = PrimitiveColorToken.red100;
  static const Color backgroundAttentionStrong = PrimitiveColorToken.yellow500;
  static const Color backgroundAttentionModest = PrimitiveColorToken.yellow100;

  // == グラデーション背景色 ==
  static const Color gradientStart = Color(0xFFFFF0F5);
  static const Color gradientMiddle = Color(0xFFFFFBF5);
  static const Color gradientEnd = Color(0xFFFFFBE8);

  // == ボーダーカラー ==
  static const Color borderDefault = PrimitiveColorToken.gray300;
  static const Color borderAssist = PrimitiveColorToken.green700;
  static const Color borderAlert = PrimitiveColorToken.red600;
  static const Color borderAttention = PrimitiveColorToken.yellow900;
  static const Color borderDisabled = PrimitiveColorToken.gray200;

  // == フィーチャーカラー ==
  static const Color featureCamera = Color(0xFFFF8A9B);
  static const Color featureAI = Color(0xFF64B5F6);
  static const Color featureSafety = Color(0xFF81C784);

  // == ボタンカラー ==
  static const Color buttonPrimary = Color(0xFFFF8FA3);
  static const Color buttonPrimaryDark = Color(0xFFF06292); // より濃いピンク（少し薄く）
  static const Color buttonSecondary = Color(0xFFF8BBD9);

  // == 共通背景グラデーション ==
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [gradientStart, gradientMiddle, gradientEnd],
  );
}
