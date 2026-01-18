import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/core/app_theme.dart';
import 'package:cat_food_reviews/core/app_colors.dart';
import 'package:cat_food_reviews/widgets/app_background.dart';
import 'package:cat_food_reviews/router/app_router.dart';
import 'package:cat_food_reviews/core/firebase/firebase_initializer.dart';
import 'package:cat_food_reviews/core/sentry/sentry_initializer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FirebaseInitializer.initialize();

  await SentryInitializer.initialize(
    app: const ProviderScope(child: CatFoodReviewsApp()),
  );
}

class CatFoodReviewsApp extends ConsumerWidget {
  const CatFoodReviewsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: const String.fromEnvironment('appName', defaultValue: 'ねこメシレビュー'),
      theme: AppTheme.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('ja'),
      builder: (context, child) => Scaffold(
        backgroundColor: AppColors.backgroundLight,
        body: AppBackground(child: SafeArea(child: child!)),
      ),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
