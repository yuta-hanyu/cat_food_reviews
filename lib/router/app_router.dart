import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cat_food_reviews/ui/onboarding/onboarding_screen.dart';
import 'package:cat_food_reviews/ui/upload/upload_screen.dart';
import 'package:cat_food_reviews/ui/review/review_screen.dart';
import 'package:cat_food_reviews/ui/main/main_screen.dart';
import 'package:cat_food_reviews/ui/history/history_screen.dart';
import 'package:cat_food_reviews/ui/my_cat/my_cat_screen.dart';
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
      path: AppRoutes.review,
      builder: (context, state) {
        final imagePath = state.uri.queryParameters['imagePath'];
        return ReviewScreen(imagePath: imagePath);
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.upload,
              builder: (context, state) => const UploadScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.history,
              builder: (context, state) => const HistoryScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.myCat,
              builder: (context, state) => const MyCatScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

@riverpod
GoRouter goRouter(Ref ref) {
  return appRouter;
}
