import 'package:flutter/material.dart';
import 'package:cat_food_reviews/widgets/text/text_base.dart';
import 'package:cat_food_reviews/widgets/token/typography/typography_token.dart';

/// タップ中はunderlineの太さを2.5にするように修正
/// https://www.figma.com/design/DyuBC46yLmDrLRks0Pjf2J/JM%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0?node-id=18223-14907&t=0GR7YMJ6KSID4Vor-1
class LinkText extends StatefulWidget {
  const LinkText({
    super.key,
    required this.content,
    this.color,
    this.fontSize = TypographyToken.fontSizeM,
    this.height,
    this.isBold = false,
    this.fontStyle = FontStyle.normal,
    this.isUnderlined = false,
    this.underlineColor,
    this.isEnabled = true,
    this.onTap,
    this.maxLines,
    this.overflow,
  });

  final String content;
  final Color? color;
  final double? fontSize;
  final double? height;
  final bool? isBold;
  final FontStyle? fontStyle;
  final bool? isUnderlined;
  final Color? underlineColor;
  final bool? isEnabled;
  final void Function()? onTap;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  static const double _underlineThicknessDefault = 1.0;
  static const double _underlineThicknessPressed = 2.5;

  bool _isTapping = false;

  @override
  Widget build(BuildContext context) {
    final isEnabled = widget.isEnabled ?? false;

    return GestureDetector(
      onTap: isEnabled ? widget.onTap : null,
      onTapDown: isEnabled ? (_) => setState(() => _isTapping = true) : null,
      onTapUp: isEnabled ? (_) => setState(() => _isTapping = false) : null,
      onTapCancel: isEnabled ? () => setState(() => _isTapping = false) : null,
      child: TextBase(
        content: widget.content,
        isUnderlined: widget.isUnderlined,
        color: widget.color,
        fontFamily: widget.isUnderlined ?? false
            ? TypographyToken.familyNoto
            : TypographyToken.familyDefault,
        fontSize: widget.fontSize,
        height: widget.height,
        fontWeight: widget.isBold ?? false
            ? TypographyToken.weightBold
            : widget.isUnderlined ??
                  false // 下線用のフォントはWeightが異なる
            ? TypographyToken.weightMedium
            : TypographyToken.weightNormal,
        fontStyle: widget.fontStyle,
        decorationColor: widget.underlineColor,
        // タップ中は下線の幅を変更する
        decorationThickness: _isTapping
            ? _underlineThicknessPressed
            : _underlineThicknessDefault,
        maxLines: widget.maxLines,
        overflow: widget.overflow,
      ),
    );
  }
}

class JmTypography {}
