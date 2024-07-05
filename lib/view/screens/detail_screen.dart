import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/provider/file_list_provider.dart';
import '../widgets/detail_view_widget.dart';

class DetailScreen extends ConsumerWidget {
  final int index;
  const DetailScreen({required this.index, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ref.watch(fileListProvider).when(
            data: (files) => SizedBox.expand(
              child: CarouselSlider(
                options: CarouselOptions(
                  initialPage: index,
                  viewportFraction: 1,
                  height: MediaQuery.of(context).size.height,
                ),
                items: files.map((e) {
                  return DetailViewWidget(file: e);
                }).toList(),
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stackTrace) => Text(stackTrace.toString()),
          ),
    );
  }
}
