import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/meta_info_dto.dart';
import '../../logic/provider/meta_info_provider.dart';
import '../widgets/tag_input.dart';

class TagPage extends ConsumerStatefulWidget {
  const TagPage({super.key});

  @override
  ConsumerState<TagPage> createState() => _TagPageState();
}

class _TagPageState extends ConsumerState<TagPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ref.watch(metaInfoProvider).when(
            data: (data) {
              return data
                  .map(
                    (e) => TagInput(
                      type: e.type,
                      entries: e.values,
                      onAddTag: _onAddTag,
                      onRemoveTag: _onRemoveTag,
                    ),
                  )
                  .toList();
            },
            error: (error, stackTrace) => [const Text("Error loading Tags")],
            loading: () => [
              const Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
              )
            ],
          ),
    );
  }

  void _onAddTag(MetaInfoDTO value) {
    setState(() => ref.read(metaInfoProvider.notifier).add(value));
  }

  void _onRemoveTag(String type, int id) {
    setState(() => ref.read(metaInfoProvider.notifier).remove(type, id));
  }
}
