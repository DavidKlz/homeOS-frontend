import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/constants/homeos_urls.dart';
import '../../config/routes/routes.dart';
import '../../logic/provider/file_list_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double minSize = MediaQuery.of(context).size.width / 4;
    int countOfImages = (MediaQuery.of(context).size.width / 200).round();
    double size =
        min(minSize, MediaQuery.of(context).size.width / countOfImages);
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            fit: BoxFit.fitHeight,
            child: Text(
              "homeOS",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        actions: [
          IconButton(
              onPressed: () => ref.read(fileListProvider.notifier).sync(),
              icon: const Icon(Icons.sync))
        ],
      ),
      body: SingleChildScrollView(
        child: ref.watch(fileListProvider).when(
              data: (list) => Center(
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: list
                      .map(
                        (e) => InkWell(
                          onTap: () => Navigator.of(context).pushNamed(
                            Routes.detail,
                            arguments: list.indexOf(e),
                          ),
                          child: SizedBox(
                            width: size - 5,
                            height: size - 5,
                            child: Image.network(
                              HomeOSUrls.thumbById(e.id),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              error: (error, stackTrace) => Text(stackTrace.toString()),
              loading: () => const Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
      ),
    );
  }
}
