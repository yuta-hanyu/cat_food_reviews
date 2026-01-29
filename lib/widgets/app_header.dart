import 'package:cat_food_reviews/widgets/token/color/semantic_color_token.dart';
import 'package:cat_food_reviews/widgets/text/text_xl_bold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({
    super.key,
    required this.title,
    this.icon,
    this.onBackPressed,
    this.actions,
  });

  final String title;
  final IconData? icon;
  final VoidCallback? onBackPressed;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final bool showBackButton = onBackPressed != null || context.canPop();

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: onBackPressed ?? () => context.pop(),
            )
          : null,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon!, color: SemanticColorToken.primary, size: 28),
            const SizedBox(width: 8),
          ],
          TextXLBold(content: title, color: Colors.black),
        ],
      ),
      centerTitle: true,
      actions: actions,
    );
  }

  // 1. PreferredSizeWidget: ScaffoldのappBarプロパティに使用するための必須インターフェース
  // 2. preferredSize: AppBarの推奨サイズを指定
  // 3. kToolbarHeight: Flutterの標準AppBarの高さ（通常56px）
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
