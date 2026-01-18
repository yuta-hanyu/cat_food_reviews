import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cat_food_reviews/core/app_colors.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: navigationShell.currentIndex,
      onTap: (index) {
        navigationShell.goBranch(index);
      },
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.camera_alt),
          label: l10n.bottomNavigationUpload,
        ),

        BottomNavigationBarItem(
          icon: const Icon(Icons.history),
          label: l10n.bottomNavigationHistory,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.pets),
          label: l10n.bottomNavigationMyCat,
        ),
      ],
    );
  }
}
