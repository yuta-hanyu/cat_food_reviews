import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:cat_food_reviews/core/logger/app_logger.dart';

part 'logger_provider.g.dart';

/// AppLogger プロバイダ
@riverpod
AppLogger appLogger(Ref ref) {
  return AppLogger();
}