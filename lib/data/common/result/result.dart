import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

/// 成功または失敗を表現する型
///
/// Repositoryのメソッドの戻り値として使用し、エラーを型レベルで表現する。
/// これにより、エラーハンドリングの漏れを防ぎ、適切なエラー処理を強制する。
///
/// [T] 成功時の値の型
/// [E] 失敗時のエラーの型
///
/// ## 使用例
///
/// ```dart
/// Future<Result<AnalysisResult, RepositoryError>> uploadImage(File image) async {
///   try {
///     final response = await _apiService.uploadImage(image);
///     final result = _responseToAnalysisResult(response);
///     return Result.success(result);
///   } on NetworkException catch (_) {
///     return Result.failure(NetworkError());
///   } catch (e) {
///     return Result.failure(UnexpectedError('予期しないエラー', cause: e));
///   }
/// }
///
/// // 呼び出し側でのパターンマッチング
/// final result = await repository.uploadImage(imageFile);
/// result.when(
///   success: (analysis) => print('Analysis: ${analysis.score}'),
///   failure: (error) => print('Error: $error'),
/// );
/// ```
@freezed
sealed class Result<T, E> with _$Result<T, E> {
  const Result._();

  /// 成功を表すコンストラクタ
  ///
  /// [value] 成功時の値
  const factory Result.success(T value) = Success<T, E>;

  /// 失敗を表すコンストラクタ
  ///
  /// [error] 失敗時のエラー
  const factory Result.failure(E error) = Failure<T, E>;

  /// パターンマッチングによるエラーハンドリング
  ///
  /// 成功時は[success]コールバックを、失敗時は[failure]コールバックを呼び出す。
  TResult when<TResult>({
    required TResult Function(T value) success,
    required TResult Function(E error) failure,
  }) {
    if (this is Success<T, E>) {
      return success((this as Success<T, E>).value);
    } else {
      return failure((this as Failure<T, E>).error);
    }
  }
}