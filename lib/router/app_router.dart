import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cat_food_reviews/ui/onboarding/onboarding_screen.dart';
import 'package:cat_food_reviews/ui/upload/upload_screen.dart';
import 'package:cat_food_reviews/router/app_routes.dart';

part 'app_router.g.dart';

final appRouter = GoRouter(
  initialLocation: AppRoutes.onboarding,
  debugLogDiagnostics: kDebugMode,
  routes: [
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: AppRoutes.upload,
      builder: (context, state) => const UploadScreen(),
    ),
  ],
);

@riverpod
GoRouter goRouter(Ref ref) {
  return appRouter;
}
