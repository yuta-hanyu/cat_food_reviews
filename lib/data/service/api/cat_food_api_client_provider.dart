import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cat_food_reviews/data/service/dio/dio_provider.dart';
import 'package:cat_food_reviews/data/service/api/cat_food_api_client.dart';

part 'cat_food_api_client_provider.g.dart';

/// CatFoodApiClientのRiverpodプロバイダー
@Riverpod(keepAlive: true)
CatFoodApiClient catFoodApiClient(Ref ref) {
  final dio = ref.read(dioProvider);
  return CatFoodApiClient(dio);
}
