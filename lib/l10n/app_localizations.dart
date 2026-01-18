import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ja.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ja')];

  /// No description provided for @appTitle.
  ///
  /// In ja, this message translates to:
  /// **'ねこメシレビュー'**
  String get appTitle;

  /// No description provided for @mainTitle.
  ///
  /// In ja, this message translates to:
  /// **'AIがキャットフードの成分を見て'**
  String get mainTitle;

  /// No description provided for @mainSubtitle.
  ///
  /// In ja, this message translates to:
  /// **'採点する二ャ！'**
  String get mainSubtitle;

  /// No description provided for @aiAnalysisButton.
  ///
  /// In ja, this message translates to:
  /// **'AIで解析'**
  String get aiAnalysisButton;

  /// No description provided for @cameraFeatureTitle.
  ///
  /// In ja, this message translates to:
  /// **'パシャリ'**
  String get cameraFeatureTitle;

  /// No description provided for @cameraFeatureDescription.
  ///
  /// In ja, this message translates to:
  /// **'成分表を撮影'**
  String get cameraFeatureDescription;

  /// No description provided for @aiAnalysisTitle.
  ///
  /// In ja, this message translates to:
  /// **'AI分析'**
  String get aiAnalysisTitle;

  /// No description provided for @aiAnalysisDescription.
  ///
  /// In ja, this message translates to:
  /// **'AIが成分を分析'**
  String get aiAnalysisDescription;

  /// No description provided for @nutritionFeatureTitle.
  ///
  /// In ja, this message translates to:
  /// **'採点'**
  String get nutritionFeatureTitle;

  /// No description provided for @nutritionFeatureDescription.
  ///
  /// In ja, this message translates to:
  /// **'栄養バランスを採点'**
  String get nutritionFeatureDescription;

  /// No description provided for @carouselDescriptionMain.
  ///
  /// In ja, this message translates to:
  /// **'成分表を撮影するだけでOK二ャ。\n大切な僕らのために、安全性と\n栄養バランスをAIが判定するする二ャ。'**
  String get carouselDescriptionMain;

  /// No description provided for @carouselDescriptionDisclaimer.
  ///
  /// In ja, this message translates to:
  /// **'AIが成分を分析してサポートしますが、\n最終的な判断は飼い主様ご自身で行ってください二ャ。\n心配な点は獣医師にご相談をお願いしたいする二ャ。'**
  String get carouselDescriptionDisclaimer;

  /// No description provided for @startButton.
  ///
  /// In ja, this message translates to:
  /// **'はじめる'**
  String get startButton;

  /// No description provided for @bottomNavigationUpload.
  ///
  /// In ja, this message translates to:
  /// **'アップロード'**
  String get bottomNavigationUpload;

  /// No description provided for @bottomNavigationHistory.
  ///
  /// In ja, this message translates to:
  /// **'りれき'**
  String get bottomNavigationHistory;

  /// No description provided for @bottomNavigationMyCat.
  ///
  /// In ja, this message translates to:
  /// **'まい猫'**
  String get bottomNavigationMyCat;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ja':
      return AppLocalizationsJa();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
