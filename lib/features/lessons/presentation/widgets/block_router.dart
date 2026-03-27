import 'package:flutter/material.dart';

import '../../domain/models/lesson.dart';

class LessonBlockRouter extends StatelessWidget {
  const LessonBlockRouter({
    required this.block,
    required this.onSubmitted,
    super.key,
  });

  final LessonBlock block;
  final Future<void> Function({
    String? submittedAnswer,
    List<String> selectedOptionIds,
  }) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return block.map(
      text: (value) => _TextBlockView(block: value, onSubmitted: onSubmitted),
      quiz: (value) => _QuizBlockView(block: value, onSubmitted: onSubmitted),
      video: (value) => _VideoBlockView(block: value, onSubmitted: onSubmitted),
      code: (value) => _CodeBlockView(block: value, onSubmitted: onSubmitted),
      choice: (value) => _ChoiceBlockView(block: value, onSubmitted: onSubmitted),
      unknown: (value) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Unsupported block: ${value.rawType ?? 'unknown'}'),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: () => onSubmitted(selectedOptionIds: const <String>[]),
              child: const Text('Skip'),
            ),
          ],
        ),
      ),
    );
  }
}

class _TextBlockView extends StatelessWidget {
  const _TextBlockView({required this.block, required this.onSubmitted});

  final TextBlock block;
  final Future<void> Function({
    String? submittedAnswer,
    List<String> selectedOptionIds,
  }) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(block.title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        Text(block.content),
        if (block.bullets.isNotEmpty) ...[
          const SizedBox(height: 12),
          ...block.bullets.map(
            (bullet) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text('- $bullet'),
            ),
          ),
        ],
        const SizedBox(height: 24),
        FilledButton(
          onPressed: () => onSubmitted(selectedOptionIds: const <String>[]),
          child: const Text('Continue'),
        ),
      ],
    );
  }
}

class _QuizBlockView extends StatefulWidget {
  const _QuizBlockView({required this.block, required this.onSubmitted});

  final QuizBlock block;
  final Future<void> Function({
    String? submittedAnswer,
    List<String> selectedOptionIds,
  }) onSubmitted;

  @override
  State<_QuizBlockView> createState() => _QuizBlockViewState();
}

class _QuizBlockViewState extends State<_QuizBlockView> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.block.question, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        ...widget.block.options.map(
          (option) => _SelectableOptionTile<String>(
            title: option,
            value: option,
            groupValue: selectedOption,
            onSelected: (value) => setState(() => selectedOption = value),
          ),
        ),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: selectedOption == null
              ? null
              : () => widget.onSubmitted(
                    submittedAnswer: selectedOption,
                    selectedOptionIds: const <String>[],
                  ),
          child: const Text('Submit'),
        ),
      ],
    );
  }
}

class _VideoBlockView extends StatelessWidget {
  const _VideoBlockView({required this.block, required this.onSubmitted});

  final VideoBlock block;
  final Future<void> Function({
    String? submittedAnswer,
    List<String> selectedOptionIds,
  }) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(block.title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        SelectableText(block.videoUrl),
        if (block.caption != null) ...[
          const SizedBox(height: 12),
          Text(block.caption!),
        ],
        const SizedBox(height: 24),
        FilledButton(
          onPressed: () => onSubmitted(selectedOptionIds: const <String>[]),
          child: const Text('Mark as watched'),
        ),
      ],
    );
  }
}

class _CodeBlockView extends StatefulWidget {
  const _CodeBlockView({required this.block, required this.onSubmitted});

  final CodeBlock block;
  final Future<void> Function({
    String? submittedAnswer,
    List<String> selectedOptionIds,
  }) onSubmitted;

  @override
  State<_CodeBlockView> createState() => _CodeBlockViewState();
}

class _CodeBlockViewState extends State<_CodeBlockView> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.block.prompt, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            widget.block.codeSnippet,
            style: const TextStyle(color: Colors.white, fontFamily: 'Courier'),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: controller,
          minLines: 3,
          maxLines: 6,
          decoration: const InputDecoration(
            hintText: 'Type your answer',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: () => widget.onSubmitted(
            submittedAnswer: controller.text,
            selectedOptionIds: const <String>[],
          ),
          child: const Text('Run Check'),
        ),
      ],
    );
  }
}

class _ChoiceBlockView extends StatefulWidget {
  const _ChoiceBlockView({required this.block, required this.onSubmitted});

  final ChoiceBlock block;
  final Future<void> Function({
    String? submittedAnswer,
    List<String> selectedOptionIds,
  }) onSubmitted;

  @override
  State<_ChoiceBlockView> createState() => _ChoiceBlockViewState();
}

class _ChoiceBlockViewState extends State<_ChoiceBlockView> {
  String? selectedId;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.block.prompt, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        ...widget.block.options.map(
          (option) => _SelectableOptionTile<String>(
            title: option.label,
            value: option.id,
            groupValue: selectedId,
            onSelected: (value) => setState(() => selectedId = value),
          ),
        ),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: selectedId == null
              ? null
              : () => widget.onSubmitted(
                    submittedAnswer: null,
                    selectedOptionIds: [selectedId!],
                  ),
          child: const Text('Submit'),
        ),
      ],
    );
  }
}

class _SelectableOptionTile<T> extends StatelessWidget {
  const _SelectableOptionTile({
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onSelected,
  });

  final String title;
  final T value;
  final T? groupValue;
  final ValueChanged<T> onSelected;

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () => onSelected(value),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected ? Theme.of(context).colorScheme.primary : Colors.grey.shade300,
              width: isSelected ? 2 : 1,
            ),
          ),
          child: Row(
            children: [
              Expanded(child: Text(title)),
              Icon(
                isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
