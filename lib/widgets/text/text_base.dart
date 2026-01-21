import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/token/typography/typography_token.dart';
import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';

class TextBase extends StatelessWidget {
  const TextBase({
    super.key,
    required this.content,
    this.color,
    this.fontSize,
    this.height,
    this.fontFamily,
    this.fontWeight,
    this.fontStyle,
    this.isUnderlined = false,
    this.decorationColor,
    this.decorationThickness,
    this.maxLines,
    this.textAlign,
    this.overflow,
  });

  final String content;
  final Color? color;
  final double? fontSize;
  final double? height;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final bool? isUnderlined;
  final Color? decorationColor;
  final double? decorationThickness;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      maxLines: maxLines,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        fontFamily: fontFamily ?? TypographyToken.familyDefault,
        fontSize: fontSize ?? TypographyToken.fontSizeM,
        fontWeight: fontWeight ?? TypographyToken.weightNormal,
        fontStyle: fontStyle ?? FontStyle.normal,
        color: color ?? SemanticColorToken.textDefault,
        decoration: isUnderlined == true
            ? TextDecoration.underline
            : TextDecoration.none,
        height: height,
        decorationColor: decorationColor,
        decorationThickness: decorationThickness,
      ),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
