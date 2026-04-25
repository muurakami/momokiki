import 'package:flutter/material.dart';

class CardForm extends StatelessWidget {
  const CardForm({
    required this.frontController,
    required this.backController,
    required this.frontFocusNode,
    required this.backFocusNode,
    required this.isSaving,
    required this.onSave,
    super.key,
  });

  final TextEditingController frontController;
  final TextEditingController backController;
  final FocusNode frontFocusNode;
  final FocusNode backFocusNode;
  final bool isSaving;
  final VoidCallback? onSave;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 260),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, (1 - value) * 16),
            child: child,
          ),
        );
      },
      child: ListView(
        padding: const EdgeInsets.only(bottom: 16),
        children: [
          TextField(
            controller: frontController,
            focusNode: frontFocusNode,
            decoration: const InputDecoration(labelText: 'Front', border: OutlineInputBorder()),
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.next,
            minLines: 3,
            maxLines: 4,
            onSubmitted: (_) => backFocusNode.requestFocus(),
            onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: backController,
            focusNode: backFocusNode,
            decoration: const InputDecoration(labelText: 'Back', border: OutlineInputBorder()),
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.done,
            minLines: 4,
            maxLines: 6,
            onSubmitted: (_) {
              if (!isSaving) {
                onSave?.call();
              }
            },
            onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
          ),
          const SizedBox(height: 16),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 180),
            switchInCurve: Curves.easeOutCubic,
            switchOutCurve: Curves.easeInCubic,
            child: isSaving
                ? const SizedBox(
                    key: ValueKey('saving'),
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: null,
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ),
                  )
                : SizedBox(
                    key: const ValueKey('idle'),
                    width: double.infinity,
                    child: FilledButton(onPressed: onSave, child: const Text('Save card')),
                  ),
          ),
        ],
      ),
    );
  }
}
