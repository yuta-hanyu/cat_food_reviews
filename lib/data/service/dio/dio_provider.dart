import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'dart:io';
import 'package:cat_food_reviews/data/service/dio/dio_base_options.dart';

part 'dio_provider.g.dart';

/// DioのProvider
///
/// BaseOptionsの設定とSSL証明書設定を含むDioインスタンスを提供
@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final dioInstance = Dio(createDioBaseOptions());

  // SSL証明書検証を開発環境では無効化
  if (kDebugMode) {
    (dioInstance.httpClientAdapter as IOHttpClientAdapter).createHttpClient =
        () {
          final client = HttpClient();
          client.badCertificateCallback = (cert, host, port) => true;
          return client;
        };
  }

  return dioInstance;
}
