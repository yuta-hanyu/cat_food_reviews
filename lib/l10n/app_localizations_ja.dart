// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'ねこメシレビュー';

  @override
  String get mainTitle => 'AIがキャットフードの成分を見て';

  @override
  String get mainSubtitle => '採点する二ャ！';

  @override
  String get aiAnalysisButton => 'AIで解析';

  @override
  String get cameraFeatureTitle => 'パシャリ';

  @override
  String get cameraFeatureDescription => '成分表を撮影';

  @override
  String get aiAnalysisTitle => 'AI分析';

  @override
  String get aiAnalysisDescription => 'AIが成分を分析';

  @override
  String get nutritionFeatureTitle => '採点';

  @override
  String get nutritionFeatureDescription => '栄養バランスを採点';

  @override
  String get carouselDescriptionMain =>
      '成分表を撮影するだけでOK二ャ。\n大切な僕らのために、安全性と\n栄養バランスをAIが判定するする二ャ。';

  @override
  String get carouselDescriptionDisclaimer =>
      'AIが成分を分析してサポートしますが、\n最終的な判断は飼い主様ご自身で行ってください二ャ。\n心配な点は獣医師にご相談をお願いしたいする二ャ。';

  @override
  String get startButton => 'はじめる';

  @override
  String get bottomNavigationUpload => 'アップロード';

  @override
  String get bottomNavigationHistory => 'りれき';

  @override
  String get bottomNavigationMyCat => 'まい猫';

  @override
  String get uploadScreenTitle => '写真アップロード';

  @override
  String get uploadScreenButtonText => 'アップロード';

  @override
  String get uploadScreenMainTitle => '成分表を見せてニャ！';

  @override
  String get uploadScreenDescription => 'キャットフードの裏面にある';

  @override
  String get uploadScreenIngredients => '成分表';

  @override
  String get uploadScreenInstructions => 'を撮影してね';

  @override
  String get uploadScreenSubtitle => '文字がくっきり見えると嬉しいなぁ';

  @override
  String get uploadCameraButton => 'カメラで撮影';

  @override
  String get uploadCameraSubtext => 'パシャリ！';

  @override
  String get uploadGalleryButton => 'アルバムから';

  @override
  String get uploadGallerySubtext => '選んでね';

  @override
  String get uploadPreviewTitle => 'プレビューエリア';

  @override
  String get uploadPreviewSubtitle => 'まだお写真がないよ';

  @override
  String get uploadTipTitle => 'ワンポイント：';

  @override
  String get uploadTipDescription => '光が反射しないように撮ると、AIが正確に読み取れるよ！';

  @override
  String get close => '閉じる';

  @override
  String get imagePickedFromCamera => '写真を撮影しました！';

  @override
  String get imagePickedFromGallery => 'ギャラリーから写真を選択しました！';

  @override
  String get imagePickError => '画像の選択に失敗しました';

  @override
  String get uploadButton => '成分を分析する';

  @override
  String get uploadSuccess => '分析がおわりました！';

  @override
  String get uploadError => 'アップロードに失敗しました';

  @override
  String get reviewTitle => '成分評価結果';

  @override
  String get backButton => '戻る';

  @override
  String get reviewDataNotFound => 'レビューデータが見つかりません';
}
