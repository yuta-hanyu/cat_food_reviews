/// 画像アップロードリクエストボディ
class UploadImageRequestBody {
  factory UploadImageRequestBody.fromJson(Map<String, dynamic> json) =>
      UploadImageRequestBody(description: json['description'] as String);
  const UploadImageRequestBody({required this.description});

  /// 画像の説明
  final String description;

  Map<String, dynamic> toJson() => {'description': description};
}
