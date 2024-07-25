import 'package:flutter/material.dart';

import '../widgets/tag_input.dart';

class TagPage extends StatefulWidget {
  const TagPage({super.key});

  @override
  State<TagPage> createState() => _TagPageState();
}

class _TagPageState extends State<TagPage> {
  Map<String, List<String>> typeToTags = {};

  @override
  void initState() {
    super.initState();
    typeToTags.putIfAbsent("Tags", () => [],);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: typeToTags.entries
          .map(
            (e) => TagInput(
              entries: e.value,
              onAddTag: (value) => _onAddTag(e.key, value),
              onRemoveTag: (value) => _onRemoveTag(e.key, value),
            ),
          )
          .toList(),
    );
  }

  void _onAddTag(String type, tag) {
    setState(() => typeToTags.update(
          type,
          (value) {
            value.add(tag);
            return value;
          },
        ));
  }

  void _onRemoveTag(String type, tag) {
    setState(() => typeToTags.update(
          type,
          (value) {
            value.remove(tag);
            return value;
          },
        ));
  }
}
