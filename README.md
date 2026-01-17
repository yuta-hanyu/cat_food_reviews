# 🐱 Cat Food Reviews

キャットフードの成分を分析し、猫の健康に配慮した食事選びをサポートするFlutterアプリケーションです。

## ✨ 主な機能

- 📸 **画像分析**: キャットフードの写真から成分を自動解析
- 🔍 **安全性評価**: 猫にとって安全・注意・危険な成分を分類
- 📊 **栄養スコア**: タンパク質、脂質などの栄養バランスを評価
- 📱 **分析履歴**: 過去の分析結果を保存・閲覧
- 🎨 **直感的UI**: Material Design 3準拠の美しいインターフェース

## 🏗️ アーキテクチャ

**MVVM (Model-View-ViewModel) パターン** を採用し、**Riverpod** による状態管理で堅牢なアプリケーションを構築しています。

詳細は [アーキテクチャドキュメント](./doc/architecture.md) を参照してください。

### 技術スタック

- **Framework**: Flutter 3.x
- **Language**: Dart 3.x
- **State Management**: Riverpod + riverpod_annotation
- **HTTP Client**: Dio
- **Analytics**: Firebase Analytics
- **Error Tracking**: Sentry + Firebase Crashlytics

## 📱 スクリーンショット

| オンボーディング | 分析画面 | 結果表示 |
|:---:|:---:|:---:|
| ![](screenshots/onboarding.png) | ![](screenshots/analysis.png) | ![](screenshots/result.png) |

## 🚀 セットアップ

### 前提条件

- Flutter SDK 3.16.0 以上
- Dart SDK 3.2.0 以上
- Xcode 15.0 以上 (iOS)
- Android Studio / VS Code

### インストール

```bash
# リポジトリをクローン
git clone https://github.com/your-org/cat_food_reviews.git
cd cat_food_reviews

# 依存関係をインストール
flutter pub get

# コード生成を実行
dart run build_runner build

# iOS Podをインストール（iOSの場合）
cd ios && pod install && cd ..
```

### 環境設定

#### Firebase設定

1. [Firebase Console](https://console.firebase.google.com/) でプロジェクトを作成
2. iOS/Androidアプリを追加
3. 設定ファイルをダウンロード
   - `ios/Runner/GoogleService-Info.plist`
   - `android/app/google-services.json`

#### Sentry設定

```bash
# sentry.properties を作成
echo "defaults.url=https://sentry.io/" > sentry.properties
echo "defaults.org=your-org" >> sentry.properties
echo "defaults.project=cat-food-reviews" >> sentry.properties
echo "auth.token=YOUR_SENTRY_TOKEN" >> sentry.properties
```

## 🔧 開発

### コマンド一覧

```bash
# アプリを起動
flutter run

# デバッグビルド
flutter build apk --debug
flutter build ios --debug

# リリースビルド  
flutter build apk --release
flutter build ios --release

# テスト実行
flutter test

# コード生成
dart run build_runner build --delete-conflicting-outputs

# 静的解析
flutter analyze

# コードフォーマット
dart format lib/
```

### ディレクトリ構成

```
lib/
├── core/            # 共通機能
├── data/            # データ層（Repository + Service）
│   ├── repository/  # 機能別リポジトリ（ドメインモデル含む）
│   └── service/     # API・外部サービス
├── ui/              # UI層（MVVM + 画面固有モデル）
├── widgets/         # 再利用Widget
└── main.dart        # エントリーポイント
```

**job-medley-members-app準拠のClean Architecture構成**
- ドメインモデルは各機能のrepository内に配置
- 画面固有のモデルはui内に配置

## 🧪 テスト

### ユニットテスト

```bash
# 全テスト実行
flutter test

# 特定ファイルのテスト
flutter test test/models/cat_food_analysis_test.dart

# カバレッジ測定
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```

### ウィジェットテスト

```bash
# ウィジェットテスト実行
flutter test test/widgets/
```

### インテグレーションテスト

```bash
# インテグレーションテスト実行
flutter drive --target=test_driver/app.dart
```

## 📱 ビルド & デプロイ

### Android

```bash
# デバッグAPK
flutter build apk --debug

# リリースAPK
flutter build apk --release --obfuscate --split-debug-info=build/debug-info

# App Bundle (Google Play推奨)
flutter build appbundle --release
```

### iOS

```bash
# デバッグビルド
flutter build ios --debug

# リリースビルド
flutter build ios --release

# App Store用ビルド
flutter build ipa --release
```

## 🔐 セキュリティ

### APIキー管理

```dart
// 環境変数での管理
const apiKey = String.fromEnvironment('API_KEY');
```

### 難読化

```bash
# リリースビルド時の難読化
flutter build apk --release --obfuscate --split-debug-info=build/debug-info
```

## 📊 監視・分析

### Firebase Analytics

- 画面遷移トラッキング
- ユーザー行動分析
- カスタムイベント測定

### Crashlytics

- クラッシュレポート自動収集
- 非致命的エラー追跡

### Sentry

- パフォーマンス監視
- エラートラッキング
- リリース管理

## 🤝 コントリビューション

1. このリポジトリをフォーク
2. フィーチャーブランチを作成 (`git checkout -b feature/amazing-feature`)
3. 変更をコミット (`git commit -m 'Add amazing feature'`)
4. ブランチをプッシュ (`git push origin feature/amazing-feature`)
5. プルリクエストを作成

### コーディング規約

- [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style) に準拠
- `flutter analyze` でエラー・警告がないこと
- テストカバレッジ 80% 以上

## 📄 ライセンス

このプロジェクトは [MIT License](LICENSE) の下で公開されています。

## 🆘 サポート

質問やバグ報告は [Issues](https://github.com/your-org/cat_food_reviews/issues) からお願いします。

## 🙏 謝辞

- [Flutter](https://flutter.dev/) チーム
- [Riverpod](https://riverpod.dev/) 開発者
- オープンソースコミュニティの皆様

---

**🐾 愛猫の健康的な食生活をサポートします 🐾**
