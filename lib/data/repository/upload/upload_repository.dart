import 'dart:io';
import 'package:cat_food_reviews/data/service/model/upload_image_response_body.dart';
import 'package:cat_food_reviews/data/common/result/result.dart';
import 'package:cat_food_reviews/data/common/result/error/repository_error.dart';

/// 画像アップロードRepository Interface
///
/// 抽象化によりテスタビリティと拡張性を向上
/// Result型による型安全なエラーハンドリングを提供
abstract class UploadRepository {
  /// 画像をアップロードして分析結果を取得
  ///
  /// [imageFile] - アップロード対象の画像ファイル
  ///
  /// Returns: [Result<UploadImageResponseBody, RepositoryError>]
  Future<Result<UploadImageResponseBody, RepositoryError>> uploadImage(
    File imageFile,
  );
}
