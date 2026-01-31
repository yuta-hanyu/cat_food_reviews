import 'dart:async';
import 'package:cat_food_reviews/data/common/result/result.dart';
import 'package:cat_food_reviews/data/common/result/error/repository_error.dart';
import 'package:cat_food_reviews/data/common/result/api_result_handler.dart';

/// Repository層から呼ぶメソッドは基本的にこちらの拡張メソッドを通して呼び出す
///
/// すべてのAPIレスポンスを`Result<T, RepositoryError>`で統一的に扱う
extension FutureResultExtension<T> on Future<T> {
  /// APIレスポンスをResult型で統一的にハンドリング
  Future<Result<T, RepositoryError>> toResult() {
    return ApiResultHandler.handle(this);
  }
}
