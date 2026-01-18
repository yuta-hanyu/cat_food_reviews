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
  String get mainTitle => '愛猫の食事を';

  @override
  String get mainSubtitle => '成分から安全チェック';

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
      '成分表を撮影するだけでOK。\n大切なねこちゃんのために、安全性と\n栄養バランスをAIが判定します。';

  @override
  String get carouselDescriptionDisclaimer =>
      'AIが成分を分析してサポートしますが、\n最終的な判断は飼い主様ご自身で行ってください。\n心配な点は獣医師にご相談を。';

  @override
  String get startButton => '始める';
}
