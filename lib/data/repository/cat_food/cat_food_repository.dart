import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/data/service/api/cat_food_api_service.dart';
import 'package:cat_food_reviews/data/model/cat_food_analysis.dart';

/// キャットフードデータのリポジトリ
///
/// APIサービスとローカルストレージを組み合わせて、
/// データアクセスの抽象化を行います
final catFoodRepositoryProvider = Provider<CatFoodRepository>((ref) {
  final apiService = ref.read(catFoodApiServiceProvider);
  return CatFoodRepository(apiService);
});

class CatFoodRepository {
  const CatFoodRepository(this._apiService);

  final CatFoodApiService _apiService;

  /// 画像からキャットフードを分析する
  ///
  /// [imagePath] 分析する画像のファイルパス
  /// 戻り値: 分析結果
  /// 例外: ApiException API通信エラー
  Future<CatFoodAnalysis> analyzeFood(String imagePath) async {
    try {
      final result = await _apiService.analyzeFood(imagePath);

      // 分析結果をローカルにキャッシュ（オプション）
      // TODO: ローカルデータベース（Hive/Isar等）への保存

      return result;
    } catch (e) {
      // リポジトリレベルでのエラーハンドリング
      rethrow;
    }
  }

  /// 分析履歴を取得する
  ///
  /// [limit] 取得件数の上限
  /// 戻り値: 分析履歴のリスト（ローカル + API の組み合わせ）
  Future<List<CatFoodAnalysis>> getAnalysisHistory({int limit = 10}) async {
    try {
      // まずローカルキャッシュから取得（高速表示）
      // TODO: ローカルデータベースからの取得

      // APIから最新データを取得
      final apiHistory = await _apiService.getAnalysisHistory(limit: limit);

      // ローカルデータと統合
      // TODO: 重複排除とソート

      return apiHistory;
    } catch (e) {
      // API失敗時はローカルデータのみ返す
      // TODO: ローカルデータベースからのフォールバック
      rethrow;
    }
  }

  /// 分析結果を保存する
  ///
  /// [analysis] 保存する分析結果
  /// 戻り値: 保存された分析結果のID
  Future<String> saveAnalysis(CatFoodAnalysis analysis) async {
    try {
      final id = await _apiService.saveAnalysis(analysis);

      // ローカルにも保存（オフライン対応）
      // TODO: ローカルデータベースへの保存

      return id;
    } catch (e) {
      // API失敗時はローカルのみ保存
      // TODO: 後でAPI同期するためのキューに追加
      rethrow;
    }
  }

  /// ローカルキャッシュをクリアする
  Future<void> clearCache() async {
    // TODO: ローカルデータベースのクリア
  }

  /// オフライン時の同期処理
  Future<void> syncOfflineData() async {
    // TODO: ローカルに保存された未同期データをAPIに送信
  }
}
