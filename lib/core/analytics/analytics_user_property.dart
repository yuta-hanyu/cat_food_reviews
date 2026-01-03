/// Analytics用ユーザープロパティ定数
enum AnalyticsUserProperty {
  userId('user_id'),
  sessionId('session_id'),
  deviceId('device_id'),
  appVersion('app_version');

  const AnalyticsUserProperty(this.value);

  final String value;
}