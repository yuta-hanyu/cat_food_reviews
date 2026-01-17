import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// HTTPクライアントの設定と提供
final apiClientProvider = Provider<Dio>((ref) {
  final dio = Dio();

  // Base configuration
  dio.options.connectTimeout = const Duration(seconds: 30);
  dio.options.receiveTimeout = const Duration(seconds: 30);
  dio.options.headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // Base URLの設定（開発環境に応じて変更）
  // TODO: 環境変数から取得する
  dio.options.baseUrl = 'https://api.example.com/v1';

  // インターセプターの追加
  dio.interceptors.add(_createLoggingInterceptor());
  dio.interceptors.add(_createErrorInterceptor());

  return dio;
});

/// ログ出力インターセプター
Interceptor _createLoggingInterceptor() {
  return LogInterceptor(
    request: true,
    requestBody: true,
    responseBody: true,
    error: true,
    logPrint: (object) {
      // TODO: 本格的なログライブラリと連携
      debugPrint('[HTTP] $object');
    },
  );
}

/// エラーハンドリングインターセプター
Interceptor _createErrorInterceptor() {
  return InterceptorsWrapper(
    onError: (error, handler) {
      // 共通のエラーハンドリング
      if (error.response != null) {
        switch (error.response!.statusCode) {
          case 401:
            // 認証エラー
            // TODO: 認証画面へのナビゲーション
            break;
          case 500:
            // サーバーエラー
            // TODO: エラートラッキング（Sentry等）
            break;
        }
      }

      handler.next(error);
    },
  );
}

/// APIエラーの基底クラス
abstract class ApiException implements Exception {
  const ApiException(this.message, [this.statusCode]);

  final String message;
  final int? statusCode;

  @override
  String toString() => 'ApiException: $message (status: $statusCode)';
}

/// ネットワークエラー
class NetworkException extends ApiException {
  const NetworkException([super.message = 'ネットワークエラーが発生しました']);
}

/// サーバーエラー
class ServerException extends ApiException {
  const ServerException([super.message = 'サーバーエラーが発生しました', super.statusCode]);
}

/// クライアントエラー
class ClientException extends ApiException {
  const ClientException([super.message = 'リクエストエラーが発生しました', super.statusCode]);
}
