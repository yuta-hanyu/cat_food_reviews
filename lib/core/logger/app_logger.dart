import 'dart:async';

import 'package:logger/logger.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class AppLogger {
  static const String _flavor = String.fromEnvironment(
    'flavor',
    defaultValue: 'dev',
  );

  static bool get _isDev => _flavor == 'dev';

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 5,
      lineLength: 120,
      colors: false,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.dateAndTime,
      stackTraceBeginIndex: 1,
    ),
  );

  String _formatMessage(Object message, String? tag) {
    final messageStr = message.toString();
    return tag != null ? '[$tag] $messageStr' : messageStr;
  }

  void d({required Object message, String? tag}) {
    if (_isDev) {
      _logger.d(_formatMessage(message, tag));
    }
  }

  void i({required String message, String? tag}) {
    if (_isDev) {
      _logger.i(_formatMessage(message, tag));
    }
  }

  void w({required String message, String? tag}) {
    if (_isDev) {
      _logger.w(_formatMessage(message, tag));
    } else {
      unawaited(
        Sentry.captureMessage(
          _formatMessage(message, tag),
          level: SentryLevel.warning,
          withScope: (scope) {
            scope.setTag('log_level', 'warning');
            scope.setTag('environment', _flavor);
          },
        ),
      );
    }
  }

  void e({
    required String message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (_isDev) {
      _logger.e(
        _formatMessage(message, tag),
        error: error,
        stackTrace: stackTrace,
      );
    } else {
      unawaited(
        Sentry.captureException(
          error ?? Exception(_formatMessage(message, tag)),
          stackTrace: stackTrace,
          withScope: (scope) {
            scope.setTag('log_level', 'error');
            scope.setTag('environment', _flavor);
          },
        ),
      );
    }
  }
}