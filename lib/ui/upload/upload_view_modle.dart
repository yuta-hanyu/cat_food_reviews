import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cat_food_reviews/ui/upload/upload_ui_state.dart';

part 'upload_view_modle.g.dart';

@riverpod
class UploadViewModel extends _$UploadViewModel {
  @override
  UploadUiState build() {
    return const UploadUiState();
  }
}
