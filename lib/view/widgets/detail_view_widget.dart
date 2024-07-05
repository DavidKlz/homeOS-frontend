import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/constants/homeos_urls.dart';
import '../../data/file_dto.dart';
import 'detail_video_widget.dart';

class DetailViewWidget extends ConsumerWidget {
  final FileDTO file;
  const DetailViewWidget({required this.file, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: (file.isVideo)
          ? DetailVideoWidget(file: file)
          : InteractiveViewer(
              child: SizedBox.expand(
                child: Image.network(
                  HomeOSUrls.fileById(file.id),
                  fit: BoxFit.contain,
                ),
              ),
            ),
    );
  }
}
