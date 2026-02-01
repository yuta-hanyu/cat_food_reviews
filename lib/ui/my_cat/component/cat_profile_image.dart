import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cat_food_reviews/l10n/app_localizations.dart';
import 'package:cat_food_reviews/widgets/text/text_base.dart';

class CatProfileImage extends StatelessWidget {
  const CatProfileImage({
    super.key,
    required this.image,
    required this.onTap,
    required this.onDelete,
    required this.l10n,
  });

  final File? image;
  final VoidCallback onTap;
  final VoidCallback? onDelete;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 128,
              height: 128,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.pink.withValues(alpha: 0.3),
                  width: 4,
                  style: BorderStyle.solid,
                ),
                color: image == null
                    ? const Color(0xFFFFF5F7)
                    : Colors.transparent,
              ),
              child: ClipOval(
                child: image != null
                    ? Image.file(
                        image!,
                        fit: BoxFit.cover,
                        width: 128,
                        height: 128,
                      )
                    : Container(
                        decoration: BoxDecoration(color: Colors.grey[100]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.add_a_photo,
                              color: Colors.pink,
                              size: 32,
                            ),
                            const SizedBox(height: 4),
                            TextBase(
                              content: l10n.addPhotoLabel,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ),
          // Delete button (only shown when image exists)
          if (image != null && onDelete != null)
            Positioned(
              top: 4,
              right: 4,
              child: GestureDetector(
                onTap: onDelete,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.6),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.close, color: Colors.white, size: 20),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
