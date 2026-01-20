import 'package:cat_food_reviews/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({
    super.key,
    required this.title,
    this.icon,
    this.onBackPressed,
  });

  final String title;
  final IconData? icon;
  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    final bool showBackButton = onBackPressed != null || context.canPop();

    return AppBar(
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
            Icon(icon!, color: AppColors.primary, size: 28),
            const SizedBox(width: 8),
          ],
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.8,
            ),
          ),
        ],
      ),
      centerTitle: true,
    );
  }

  // 1. PreferredSizeWidget: ScaffoldのappBarプロパティに使用するための必須インターフェース
  // 2. preferredSize: AppBarの推奨サイズを指定
  // 3. kToolbarHeight: Flutterの標準AppBarの高さ（通常56px）
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
