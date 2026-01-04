import 'package:firebase_core/firebase_core.dart';

import 'package:cat_food_reviews/core/firebase/options/firebase_options_dev.dart'
    as dev;
import 'package:cat_food_reviews/core/firebase/options/firebase_options_prod.dart'
    as prod;

/// Firebaseの初期化を実行するクラス
class FirebaseInitializer {
  /// Firebaseを初期化する。
  ///
  /// 環境変数から `flavor` を取得し、 `flavor` に応じたFirebaseのプロジェクトを初期化する。
  /// 環境変数がない場合はdevelopment環境向けのプロジェクトが使用される。
  static Future<void> initialize() async {
    const flavor = String.fromEnvironment('flavor', defaultValue: 'dev');
    final firebaseOptions = _getFirebaseOptions(flavor);
    try {
      await Firebase.initializeApp(options: firebaseOptions);
    } catch (e) {
      if (e.toString().contains('duplicate-app')) {
        // Firebase already initialized, continue
      } else {
        rethrow;
      }
    }
  }

  /// 環境に応じたFirebase Optionsを返す。
  static FirebaseOptions _getFirebaseOptions(String flavor) {
    switch (flavor) {
      case 'prod':
        return prod.DefaultFirebaseOptions.currentPlatform;
      case 'dev':
      default:
        return dev.DefaultFirebaseOptions.currentPlatform;
    }
  }
}
