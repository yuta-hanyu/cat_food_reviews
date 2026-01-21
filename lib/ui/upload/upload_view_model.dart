import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'upload_view_model.g.dart';

class UploadState {
  const UploadState();
}

@riverpod
class UploadViewModel extends _$UploadViewModel {
  @override
  UploadState build() => const UploadState();

  void onCameraButtonTapped(BuildContext context) {
    // TODO: Implement camera functionality
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('カメラ機能は準備中です')));
  }

  void onGalleryButtonTapped(BuildContext context) {
    // TODO: Implement gallery functionality
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('ギャラリー機能は準備中です')));
  }
}
