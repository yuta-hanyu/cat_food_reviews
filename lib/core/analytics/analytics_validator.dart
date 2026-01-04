/// Firebase Analytics制約バリデーター
///
/// firebase analyticにはイベント送信に関する文字列長制約があるため開発段階で制約違反を早期発見できるようassertによるバリデーションを付与する
/// ref https://support.google.com/analytics/answer/9267744?hl=ja
class AnalyticsValidator {
  static const int _maxEventNameLength = 40;
  static const int _maxParameterNameLength = 40;
  static const int _maxParameterValueLength = 100;
  static const int _maxParameterCount = 25;

  /// イベント制約をバリデーション（開発時のみ）
  ///
  /// [eventName]と[parameters]がFirebase Analyticsの制約を満たしているかチェックする
  /// 制約違反時はassertエラーで早期発見（デバッグビルドのみ）
  ///
  /// Firebase Analytics制約:
  /// - イベント名: 最大40文字
  /// - パラメータ名: 最大40文字
  /// - パラメータ値: 最大100文字
  /// - パラメータ数: 最大25個
  static void validateEvent(String eventName, Map<String, Object>? parameters) {
    assert(
      eventName.length <= _maxEventNameLength,
      'Event name exceeds $_maxEventNameLength characters: "$eventName" (${eventName.length})',
    );

    if (parameters != null) {
      assert(
        parameters.length <= _maxParameterCount,
        'Parameter count exceeds $_maxParameterCount: ${parameters.length}',
      );

      for (final entry in parameters.entries) {
        assert(
          entry.key.length <= _maxParameterNameLength,
          'Parameter name exceeds $_maxParameterNameLength characters: "${entry.key}" (${entry.key.length})',
        );

        final valueString = entry.value.toString();
        assert(
          valueString.length <= _maxParameterValueLength,
          'Parameter value exceeds $_maxParameterValueLength characters: "${entry.value}" (${valueString.length})',
        );
      }
    }
  }
}
