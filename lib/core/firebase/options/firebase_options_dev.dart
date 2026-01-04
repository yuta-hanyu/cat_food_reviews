import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// 開発環境向けの [FirebaseOptions]
///
/// Firebase CLIによって自動生成されたコードだが、プロジェクトに合わせて一部修正を加えている。
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return _android;
      case TargetPlatform.iOS:
        return _ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions _android = FirebaseOptions(
    apiKey: String.fromEnvironment('firebaseApiKey'),
    appId: String.fromEnvironment('firebaseAppId'),
    messagingSenderId: String.fromEnvironment('firebaseMessagingSenderId'),
    projectId: 'dev-cat-food-reviews',
    storageBucket: 'dev-cat-food-reviews.firebasestorage.app',
    androidClientId: String.fromEnvironment('firebaseAndroidClientId'),
  );

  static const FirebaseOptions _ios = FirebaseOptions(
    apiKey: String.fromEnvironment('firebaseApiKey'),
    appId: String.fromEnvironment('firebaseAppId'),
    messagingSenderId: String.fromEnvironment('firebaseMessagingSenderId'),
    projectId: 'dev-cat-food-reviews',
    storageBucket: 'dev-cat-food-reviews.firebasestorage.app',
    iosBundleId: 'com.example.catFoodReviews.dev',
  );
}