import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cat_food_reviews/core/logger/logger_provider.dart';
import 'package:cat_food_reviews/core/analytics/analytics_service.dart';
import 'package:cat_food_reviews/core/analytics/firebase_analytics_provider.dart';

part 'analytics_provider.g.dart';

/// Firebase Analyticsサービスプロバイダー
@riverpod
AnalyticsService analytics(Ref ref) {
  final logger = ref.read(appLoggerProvider);
  final firebaseAnalytics = ref.read(firebaseAnalyticsProvider);
  return AnalyticsService(logger: logger, firebaseAnalytics: firebaseAnalytics);
}
