import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_food_reviews/data/service/api/cat_food_api_service.dart';
import 'package:cat_food_reviews/ui/onboarding/model/cat_food_analysis.dart';

class OnboardingViewModel extends ChangeNotifier {
  OnboardingViewModel(this._ref);

  final Ref _ref;

  OnboardingState _state = const OnboardingState();
  OnboardingState get state => _state;

  void _updateState(OnboardingState newState) {
    _state = newState;
    notifyListeners();
  }

  /// 分析を開始する
  void startAnalysis() {
    _updateState(_state.copyWith(isAnalyzing: true));

    // TODO: カメラ画面または分析画面への遷移
    // ナビゲーション実装時に追加予定

    Future.delayed(const Duration(seconds: 1), () {
      _updateState(_state.copyWith(isAnalyzing: false));
    });
  }

  /// キャットフード画像を分析する
  Future<void> analyzeFood(String imagePath) async {
    final apiService = _ref.read(catFoodApiServiceProvider);

    _updateState(
      _state.copyWith(isAnalyzing: true, error: null, lastAnalysis: null),
    );

    try {
      final analysis = await apiService.analyzeFood(imagePath);

      _updateState(
        _state.copyWith(
          isAnalyzing: false,
          lastAnalysis: analysis,
          error: null,
        ),
      );

      // TODO: 分析結果画面への遷移
    } catch (e) {
      _updateState(_state.copyWith(isAnalyzing: false, error: e.toString()));
    }
  }

  /// 分析履歴を読み込む
  Future<void> loadAnalysisHistory() async {
    final apiService = _ref.read(catFoodApiServiceProvider);

    _updateState(_state.copyWith(isLoadingHistory: true));

    try {
      final history = await apiService.getAnalysisHistory(limit: 10);

      _updateState(
        _state.copyWith(isLoadingHistory: false, analysisHistory: history),
      );
    } catch (e) {
      _updateState(
        _state.copyWith(isLoadingHistory: false, error: e.toString()),
      );
    }
  }

  /// エラーをクリアする
  void clearError() {
    _updateState(_state.copyWith(error: null));
  }
}

final onboardingViewModelProvider = Provider<OnboardingViewModel>(
  (ref) => OnboardingViewModel(ref),
);

class OnboardingState {
  const OnboardingState({
    this.isAnalyzing = false,
    this.isLoadingHistory = false,
    this.lastAnalysis,
    this.analysisHistory = const [],
    this.error,
  });

  final bool isAnalyzing;
  final bool isLoadingHistory;
  final CatFoodAnalysis? lastAnalysis;
  final List<CatFoodAnalysis> analysisHistory;
  final String? error;

  /// エラーがあるかどうか
  bool get hasError => error != null;

  /// 分析履歴があるかどうか
  bool get hasHistory => analysisHistory.isNotEmpty;

  /// 読み込み中かどうか（分析または履歴読み込み）
  bool get isLoading => isAnalyzing || isLoadingHistory;

  OnboardingState copyWith({
    bool? isAnalyzing,
    bool? isLoadingHistory,
    CatFoodAnalysis? lastAnalysis,
    List<CatFoodAnalysis>? analysisHistory,
    String? error,
  }) {
    return OnboardingState(
      isAnalyzing: isAnalyzing ?? this.isAnalyzing,
      isLoadingHistory: isLoadingHistory ?? this.isLoadingHistory,
      lastAnalysis: lastAnalysis ?? this.lastAnalysis,
      analysisHistory: analysisHistory ?? this.analysisHistory,
      error: error,
    );
  }
}
