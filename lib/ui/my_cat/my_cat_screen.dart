import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCatScreen extends ConsumerStatefulWidget {
  const MyCatScreen({super.key});

  @override
  ConsumerState<MyCatScreen> createState() => _MyCatScreenState();
}

class _MyCatScreenState extends ConsumerState<MyCatScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppHeader(title: l10n.bottomNavigationMyCat, icon: Icons.pets),

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.pets, size: 80, color: Colors.grey),
            SizedBox(height: 16),
            Text('まい猫画面', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
