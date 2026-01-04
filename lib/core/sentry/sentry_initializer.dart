import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

const _sentryDns = String.fromEnvironment('sentryDns');
const _flavor = String.fromEnvironment('flavor', defaultValue: 'dev');

/// Sentryの初期化を実行するクラス
class SentryInitializer {
  // Sentryのエラーログから除外するエラー型
  static const _excludedExceptionTypes = {
    'SocketException',
    'TimeoutException',
  };

  /// Sentryを初期化する。
  ///
  /// 環境変数から `sentryDns` を取得し、Sentryを初期化する。
  /// DSNが空の場合は初期化をスキップする。
  static Future<void> initialize({required Widget app}) async {
    // DSNが空の場合はSentryの初期化は実行しない。
    if (_sentryDns.isEmpty) {
      runApp(app);
      return;
    }

    await SentryFlutter.init((options) async {
      final appVersion = await _appVersion;

      // https://docs.sentry.io/platforms/javascript/configuration/options/
      options
        ..dsn = _sentryDns
        ..environment = _flavor
        ..debug = _isDebug
        ..release = appVersion
        // ユーザー情報とIPアドレスを送信
        // https://docs.sentry.io/platforms/dart/guides/flutter/data-management/data-collected/
        ..sendDefaultPii = true
        ..enableLogs = true
        ..attachStacktrace = true
        ..maxBreadcrumbs = 30
        ..tracesSampleRate = _sampleRate
        ..profilesSampleRate = _sampleRate
        ..beforeSend = (SentryEvent event, Hint? hint) {
          final exceptionType = event.exceptions?.firstOrNull?.type;
          if (exceptionType != null &&
              _excludedExceptionTypes.contains(exceptionType)) {
            return null;
          }
          return event;
        };
    }, appRunner: () => runApp(SentryWidget(child: app)));
  }

  // 本番用のサンプリングレートは、ユーザー数が増えてきたら下げて良い
  static double get _sampleRate => (_flavor == 'prod') ? 0.2 : 1.0;

  static bool get _isDebug => _flavor != 'prod';

  static Future<String> get _appVersion async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }
}
