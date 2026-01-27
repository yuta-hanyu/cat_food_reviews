import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cat_food_reviews/data/service/api/cat_food_api_client_provider.dart';
import 'package:cat_food_reviews/data/repository/upload/upload_repository.dart';
import 'package:cat_food_reviews/data/repository/upload/upload_repository_impl.dart';

part 'upload_repository_provider.g.dart';

@riverpod
UploadRepository uploadRepository(Ref ref) {
  final apiClient = ref.read(catFoodApiClientProvider);
  return UploadRepositoryImpl(apiClient: apiClient);
}
