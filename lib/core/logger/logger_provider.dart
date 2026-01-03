import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logger_provider.g.dart';

/// Logger プロバイダ
@riverpod
Logger logger(Ref ref) {
  return Logger();
}