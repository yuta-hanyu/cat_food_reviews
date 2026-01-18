import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cat_food_reviews/router/app_routes.dart';
import 'package:cat_food_reviews/router/app_router.dart';

part 'onboarding_navigator.g.dart';

class OnboardingNavigator {
  const OnboardingNavigator(this._goRouter);
  final GoRouter _goRouter;

  void toUpload() {
    _goRouter.go(AppRoutes.upload);
  }
}

@riverpod
OnboardingNavigator onboardingNavigator(Ref ref) {
  final goRouter = ref.read(goRouterProvider);
  return OnboardingNavigator(goRouter);
}
