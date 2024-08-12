import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/routes/home_os_router.dart';
import '../../config/routes/routes.dart';
import '../../logic/provider/file_list_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final navigationKey = GlobalKey<NavigatorState>();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "Gallery"),
          BottomNavigationBarItem(icon: Icon(Icons.photo_album), label: "Album"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_add), label: "Tags"),
        ],
        onTap: (index) {
          switch(index) {
            case 0:
              navigationKey.currentState?.pushNamedAndRemoveUntil(Routes.gallery, (_) => false);
              setState(() => currentIndex = 0);
              break;
            case 1:
              setState(() => currentIndex = 1);
              break;
            case 2:
              navigationKey.currentState?.pushNamedAndRemoveUntil(Routes.tags, (_) => false);
              setState(() => currentIndex = 2);
              break;
          }
        },
      ),
      body: Navigator(
        key: navigationKey,
        onGenerateRoute: HomeOSRouter.onGenerateHomePage,
      ),
    );
  }
}
