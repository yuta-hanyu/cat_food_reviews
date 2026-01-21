import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/token/typography/typography_token.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';

class HeadingSmall extends StatelessWidget {
  const HeadingSmall({
    super.key,
    required this.content,
    this.color,
    this.fontFamily,
  });

  final String content;
  final Color? color;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontFamily: fontFamily ?? TypographyToken.familyDefault,
        fontSize: TypographyToken.fontSizeM, // 16.0 - 小サイズヘッダー用
        fontWeight: TypographyToken.weightBold, // 太字
        height: TypographyToken.lineHeight, // 行間
        letterSpacing: TypographyToken.letterSpacing, // 文字間
        color: color ?? SemanticColorToken.textDefault,
      ),
    );
  }
}
