import 'package:flutter/material.dart';

class TagInput extends StatefulWidget {
  final List<String> entries;
  final Function(String value) onAddTag;
  final Function(String value) onRemoveTag;

  const TagInput({
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
    widget.onAddTag.call(value);
    controller.text = "";
    focusNode.requestFocus();
  }

  void _onDeleted(String value) {
    widget.onRemoveTag.call(value);
  }

  List<Chip> _buildChips() {
    return widget.entries
        .map(
          (e) => Chip(
            label: Text(e),
            deleteIcon: const Icon(Icons.close),
            onDeleted: () => _onDeleted(e),
          ),
        )
        .toList();
  }
}
