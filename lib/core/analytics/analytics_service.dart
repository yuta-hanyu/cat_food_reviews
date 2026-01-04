import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:logger/logger.dart';
import 'package:cat_food_reviews/core/analytics/analytics_user_property.dart';
import 'package:cat_food_reviews/core/analytics/analytics_validator.dart';

/// Firebase Analytics サービス
class AnalyticsService {
  AnalyticsService({
    required Logger logger,
    required FirebaseAnalytics firebaseAnalytics,
  }) : _logger = logger,
       _firebaseAnalytics = firebaseAnalytics;

  final Logger _logger;
  final FirebaseAnalytics _firebaseAnalytics;

  Future<void> initialize({
    required String userId,
    required String sessionId,
    required String deviceId,
    required String appVersion,
  }) async {
    try {
      // ユーザープロパティを設定
      await _firebaseAnalytics.setUserId(id: userId.isNotEmpty ? userId : null);
      await setUserProperty(AnalyticsUserProperty.userId.value, userId);
      await setUserProperty(AnalyticsUserProperty.sessionId.value, sessionId);
      await setUserProperty(AnalyticsUserProperty.deviceId.value, deviceId);
      await setUserProperty(AnalyticsUserProperty.appVersion.value, appVersion);

      _logger.i('Firebase Analytics initialized successfully');
    } catch (e) {
      _logger.e('Failed to initialize Firebase Analytics: $e');
    }
  }

  Future<void> updateUserInfo({
    required String userId,
    required String sessionId,
  }) async {
    try {
      await _firebaseAnalytics.setUserId(id: userId.isNotEmpty ? userId : null);
      await setUserProperty(AnalyticsUserProperty.userId.value, userId);
      await setUserProperty(AnalyticsUserProperty.sessionId.value, sessionId);
    } catch (e) {
      _logger.e('Failed to update user info: $e');
    }
  }

  Future<void> clearUserInfo() async {
    try {
      await _firebaseAnalytics.setUserId(id: null);
      await setUserProperty(AnalyticsUserProperty.userId.value, null);
      await setUserProperty(AnalyticsUserProperty.sessionId.value, null);
    } catch (e) {
      _logger.e('Failed to clear user info: $e');
    }
  }

  Future<void> logEvent(
    String eventName, {
    Map<String, Object>? parameters,
  }) async {
    _logger.i('🔥 Attempting to log event: $eventName with parameters: $parameters');
    
    try {
      AnalyticsValidator.validateEvent(eventName, parameters);
      _logger.i('✅ Event validation passed for: $eventName');
      
      await _firebaseAnalytics.logEvent(
        name: eventName,
        parameters: parameters,
      );
      _logger.i('✅ Analytics event sent successfully: $eventName');
    } catch (e) {
      _logger.e('❌ Failed to log event: $eventName - Error: $e');
      rethrow;
    }
  }

  Future<void> setUserProperty(String name, String? value) async {
    try {
      await _firebaseAnalytics.setUserProperty(name: name, value: value);
    } catch (e) {
      _logger.e('Failed to set user property: $name=$value - $e');
    }
  }

  Future<void> logScreenView(
    String screenName, {
    Map<String, Object>? parameters,
  }) async {
    try {
      await _firebaseAnalytics.logScreenView(
        screenName: screenName,
        parameters: parameters,
      );
      _logger.d('Screen view logged: $screenName');
    } catch (e) {
      _logger.e('Failed to log screen view: $screenName - $e');
    }
  }
}
