import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/token/typography/typography_token.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';

class HeadingXLarge extends StatelessWidget {
  const HeadingXLarge({
    super.key,
    required this.content,
    this.color,
    this.fontFamily,
    this.overflow = TextOverflow.visible,
  });

  final String content;
  final Color? color;
  final String? fontFamily;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      overflow: overflow,
      style: TextStyle(
        fontFamily: fontFamily ?? TypographyToken.familyDefault,
        fontSize: 28.0, // XLサイズ - 最大ヘッダー用
        fontWeight: TypographyToken.weightBold, // 太字
        height: TypographyToken.lineHeight, // 行間
        letterSpacing: TypographyToken.letterSpacing, // 文字間
        color: color ?? SemanticColorToken.textDefault,
      ),
    );
  }
}
