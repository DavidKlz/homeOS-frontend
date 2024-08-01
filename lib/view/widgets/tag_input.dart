import 'package:flutter/material.dart';

import '../../data/meta_info_dto.dart';

class TagInput extends StatefulWidget {
  final String type;
  final Map<int, String> entries;
  final Function(MetaInfoDTO value) onAddTag;
  final Function(String type, int id) onRemoveTag;

  const TagInput({
    required this.type,
    required this.entries,
    required this.onAddTag,
    required this.onRemoveTag,
    super.key,
  });

  @override
  State<TagInput> createState() => _TagInputState();
}

class _TagInputState extends State<TagInput> {
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          focusNode: focusNode,
          onSubmitted: _onSubmitted,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter tag',
          ),
        ),
        const SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 5,
            children: _buildChips(),
          ),
        )
      ],
    );
  }

  void _onSubmitted(String value) {
    widget.onAddTag.call(MetaInfoDTO(id: -1, type: widget.type, value: value));
    controller.text = "";
    focusNode.requestFocus();
  }

  void _onDeleted(int id) {
    widget.onRemoveTag.call(widget.type, id);
  }

  List<Chip> _buildChips() {
    return widget.entries.entries
        .map(
          (e) => Chip(
            label: Text(e.value),
            deleteIcon: const Icon(Icons.close),
            onDeleted: () => _onDeleted(e.key),
          ),
        )
        .toList();
  }
}
