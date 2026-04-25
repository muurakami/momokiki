import 'package:flutter/material.dart';

class DictionarySearchField extends StatelessWidget {
  const DictionarySearchField({
    required this.controller,
    required this.isSearching,
    super.key,
  });

  final TextEditingController controller;
  final bool isSearching;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Search Japanese, kana, or English',
        prefixIcon: const Icon(Icons.search),
        suffixIcon: isSearching
            ? const Padding(
                padding: EdgeInsets.all(12),
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              )
            : controller.text.isEmpty
                ? null
                : IconButton(
                    onPressed: controller.clear,
                    icon: const Icon(Icons.clear),
                  ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
