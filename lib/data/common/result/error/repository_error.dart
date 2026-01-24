/// Repositoryで発生するエラーの基底型
sealed class RepositoryError {
  const RepositoryError();
}

/// ドメインエラーを表す型
sealed class DomainError extends RepositoryError {
  const DomainError();
}

/// システムエラーを表す型
sealed class SystemError extends RepositoryError {
  const SystemError();
}

// ドメインエラーの具体例

/// バリデーションエラー
class ValidationError extends DomainError {
  const ValidationError(this.message);
  final String message;

  @override
  String toString() => 'ValidationError: $message';
}

/// リソースが見つからない
class NotFoundError extends DomainError {
  const NotFoundError(this.message);
  final String message;

  @override
  String toString() => 'NotFoundError: $message';
}

/// ファイル形式エラー
class InvalidFileFormatError extends DomainError {
  const InvalidFileFormatError(this.message);
  final String message;

  @override
  String toString() => 'InvalidFileFormatError: $message';
}

// システムエラーの具体例

/// ネットワークエラー
class NetworkError extends SystemError {
  const NetworkError();

  @override
  String toString() => 'NetworkError: ネットワークに接続できません';
}

/// APIエラー（サーバー側のエラー）
class ApiError extends SystemError {
  const ApiError(this.message, this.statusCode);
  final String message;
  final int statusCode;

  @override
  String toString() => 'ApiError: $message (status: $statusCode)';
}

/// サーバーエラー
class ServerError extends SystemError {
  const ServerError();

  @override
  String toString() => 'ServerError: サーバーでエラーが発生しました';
}

/// 予期しないエラー
class UnexpectedError extends SystemError {
  const UnexpectedError(this.message, {this.cause});
  final String message;
  final Object? cause;

  @override
  String toString() => 'UnexpectedError: $message';
}