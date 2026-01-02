import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cat_food_reviews/main.dart';

void main() {
  testWidgets('Cat Food Reviews app starts with onboarding', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: CatFoodReviewsApp()));

    // Verify that we can find the app title
    expect(find.text('CAT FOOD EVALUATOR'), findsOneWidget);
    
    // Verify that we can find the main message
    expect(find.text('愛猫の食事を'), findsOneWidget);
    
    // Verify that we can find the start button
    expect(find.text('始める'), findsOneWidget);
  });
}