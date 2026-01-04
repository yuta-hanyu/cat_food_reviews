# `.env` ファイルについて

## `.env` ファイルの配置

本ディレクトリには、環境ごとの `.env` ファイルを配置します。具体的には、以下の `.env` ファイルです。

- `dev.env` - 開発環境用設定
- `prod.env` - 本番環境用設定

これらのファイルには機微情報が含まれる可能性があるため、Gitの管理からignoreされています。

## 便利コマンド

```bash
touch ./env/dev.env
touch ./env/prod.env
```

## 使用方法

Flutter実行時に `--dart-define-from-file` オプションを使用してenv ファイルを指定します：

```bash
# 開発環境で実行
flutter run --dart-define-from-file=env/dev.env

# 本番環境で実行
flutter run --dart-define-from-file=env/prod.env --release
```