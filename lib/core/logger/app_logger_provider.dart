import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'app_logger.dart';

part 'app_logger_provider.g.dart';

@riverpod
AppLogger appLogger(Ref ref) {
  return AppLogger();
}