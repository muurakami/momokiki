import 'package:flutter/material.dart';

class CardForm extends StatelessWidget {
  const CardForm({
    required this.frontController,
    required this.backController,
    required this.onSave,
    super.key,
  });

  final TextEditingController frontController;
  final TextEditingController backController;
  final VoidCallback? onSave;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: frontController,
          decoration: const InputDecoration(labelText: 'Front', border: OutlineInputBorder()),
          maxLines: 4,
        ),
        const SizedBox(height: 16),
        TextField(
          controller: backController,
          decoration: const InputDecoration(labelText: 'Back', border: OutlineInputBorder()),
          maxLines: 6,
        ),
        const SizedBox(height: 16),
        FilledButton(onPressed: onSave, child: const Text('Save card')),
      ],
    );
  }
}
