import 'package:dio/dio.dart';

const _apiBaseUrl = String.fromEnvironment('apiBaseUrl');

/// DioのBaseOptions設定
///
/// APIクライアント全体で統一されたBaseOptionsを提供
BaseOptions createDioBaseOptions() {
  return BaseOptions(
    baseUrl: _apiBaseUrl,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
    headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
  );
}
