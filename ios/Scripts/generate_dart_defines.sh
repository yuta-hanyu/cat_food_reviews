#!/bin/sh

# 環境（prod、dev）に応じてDart-Defines.xcconfigを生成し、
# 同時に環境に応じたFirebaseプロジェクトに切り替えるためGoogleService-Info.plistを書き換える。
#
# `flutter run --dart-define-from-file=env/dev.env` のように実行すると、
# Flutterのビルドシステムが `env/dev.env` を読み込む。
# 読み込んだ後、.envファイルの内容を解析、各行をBase64エンコード、カンマ区切りで連結、
# 連結した文字列を環境変数 `DART_DEFINES` に設定する。
# 以上の処理は、 `flutter run` 実行時に行われる。
#
# 本ファイルのスクリプトは、Xcode RunnerのBuild Phaseで実行される。
#
# 上記で設定された環境変数 `DART_DEFINES` を元に、本スクリプトでは以下の処理を行う。
#
# 1. Dart-Defines.xcconfigを生成
#    - APP_NAME: アプリ名（例："開発版", "猫フードレビューアプリ"）
#    - APP_ID: Bundle ID（例：com.example.catFoodReviews）
#    - PRODUCT_BUNDLE_IDENTIFIER: XcodeのBundle ID設定
#
# 2. Firebaseの設定ファイル（GoogleService-Info.plist）を環境に応じて切り替え
#    - 環境変数 `flavor` に基づいて、適切なplistファイルを選択
#    - GoogleService-Info-{flavor}.plistをGoogleService-Info.plistに複製
#    - これにより、dev/prod環境ごとに異なるFirebaseプロジェクトに接続

# 文字列をBase64デコードして返す関数。
#
# 1. 引数として渡された文字列を受け取る (${*})。
# 2. 受け取った文字列をBase64デコードする。
# 3. デコードした結果を標準出力に返す。
function decode_url() { echo "${*}" | base64 --decode; }

# 出力ファイルのパス
#
# ./ios/Flutter/Dart-Defines.xcconfig
OUTPUT_FILE="${SRCROOT}/Flutter/Dart-Defines.xcconfig"

# ファイルを新規作成、または既存ファイルを空にする。
#
# `:` コマンドは何も出力しないため、リダイレクト `>` によってファイルが空になる。
: > "$OUTPUT_FILE"

# DART_DEFINESが設定されていない場合に使用されるデフォルト値。
APP_NAME="猫フードレビューアプリ"
APP_ID="com.hanyu.catfoodreviews"
FLAVOR="prod"

# `DART_DEFINES` が設定されている場合、その内容をパースして `APP_NAME` と `APP_ID` に代入する。
# 設定されていない場合は、デフォルト値を使用する。
if [ -n "$DART_DEFINES" ]; then
    echo "Parsing DART_DEFINES..." >&2
    # `DART_DEFINES` をカンマで分割して配列に格納する。
    IFS=',' read -r -a define_items <<< "$DART_DEFINES"

    for index in "${!define_items[@]}"
    do
        # Base64デコード
        item=$(decode_url "${define_items[$index]}")

        # appNameの値を取得
        if [[ $item == appName=* ]]; then
            APP_NAME="${item#appName=}" # "appName=" のプレフィックスを削除
            APP_NAME="${APP_NAME//\"/}" # ダブルクォートを削除
            echo "Found APP_NAME: $APP_NAME" >&2
        fi

        # appIdの値を取得
        if [[ $item == appId=* ]]; then
            APP_ID="${item#appId=}" # "appId=" のプレフィックスを削除
            APP_ID="${APP_ID//\"/}" # ダブルクォートを削除
            echo "Found APP_ID: $APP_ID" >&2
        fi

        # flavorの値を取得
        if [[ $item == flavor=* ]]; then
            FLAVOR="${item#flavor=}" # "flavor=" のプレフィックスを削除
            FLAVOR="${FLAVOR//\"/}" # ダブルクォートを削除
            echo "Found FLAVOR: $FLAVOR" >&2
        fi
    done
else
    echo "DART_DEFINES is not set, using defaults" >&2
fi

# Dart-Defines.xcconfigに環境変数を書き込む。
# XcodeのビルドシステムがDart-Defines.xcconfigを読み込み、アプリ名やBundle IDとして使用する。
echo "APP_NAME=$APP_NAME" >> "$OUTPUT_FILE"
echo "APP_ID=$APP_ID" >> "$OUTPUT_FILE"
echo "PRODUCT_BUNDLE_IDENTIFIER=$APP_ID" >> "$OUTPUT_FILE"

# デバッグ用：生成されたファイルの内容を標準エラー出力に表示する。
echo "Generated DartDefines.xcconfig:" >&2
cat "$OUTPUT_FILE" >&2

# Firebase GoogleService-Info.plistを環境に応じて複製する。
GOOGLE_SERVICE_INFO_SOURCE="${SRCROOT}/Runner/GoogleService-Info-${FLAVOR}.plist"
GOOGLE_SERVICE_INFO_DEST="${SRCROOT}/Runner/GoogleService-Info.plist"

echo "Copying GoogleService-Info.plist for flavor: $FLAVOR" >&2

if [ -f "$GOOGLE_SERVICE_INFO_SOURCE" ]; then
    cp "$GOOGLE_SERVICE_INFO_SOURCE" "$GOOGLE_SERVICE_INFO_DEST"
    echo "Copied $GOOGLE_SERVICE_INFO_SOURCE to $GOOGLE_SERVICE_INFO_DEST" >&2
else
    echo "Warning: GoogleService-Info-${FLAVOR}.plist not found at $GOOGLE_SERVICE_INFO_SOURCE" >&2
    echo "Firebase may not be configured properly for this environment." >&2
fi

echo "==== Done ====" >&2