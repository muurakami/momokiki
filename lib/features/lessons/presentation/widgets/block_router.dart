import 'package:flutter/material.dart';

import '../../domain/models/lesson.dart';
import '../../domain/models/lesson_progress.dart';

class LessonBlockRouter extends StatelessWidget {
  const LessonBlockRouter({
    required this.block,
    required this.onSubmitted,
    this.result,
    this.feedbackMessage,
    this.correctAnswerLabel,
    this.showRetryPrompt = false,
    this.currentAttemptCount = 0,
    super.key,
  });

  final LessonBlock block;
  final LessonBlockResult? result;
  final String? feedbackMessage;
  final String? correctAnswerLabel;
  final bool showRetryPrompt;
  final int currentAttemptCount;
  final Future<void> Function({
    String? submittedAnswer,
    List<String> selectedOptionIds,
  }) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 280),
          switchInCurve: Curves.easeOutCubic,
          switchOutCurve: Curves.easeInCubic,
          layoutBuilder: (currentChild, previousChildren) {
            return currentChild ?? const SizedBox.shrink();
          },
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 0.03),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
            );
          },
          child: KeyedSubtree(
            key: ValueKey<String>(block.id),
            child: switch (block) {
              TextBlock textBlock => _TextBlockView(block: textBlock, onSubmitted: onSubmitted),
              QuizBlock quizBlock => _QuizBlockView(block: quizBlock, onSubmitted: onSubmitted),
              VideoBlock videoBlock => _VideoBlockView(block: videoBlock, onSubmitted: onSubmitted),
              CodeBlock codeBlock => _CodeBlockView(block: codeBlock, onSubmitted: onSubmitted),
              ChoiceBlock choiceBlock => _ChoiceBlockView(block: choiceBlock, onSubmitted: onSubmitted),
              SentenceBuilderBlock sentenceBuilderBlock => _SentenceBuilderBlockView(
                block: sentenceBuilderBlock,
                onSubmitted: onSubmitted,
              ),
              UnknownLessonBlock(:final rawType) => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Unsupported block: ${rawType ?? 'unknown'}'),
                    const SizedBox(height: 12),
                    FilledButton(
                      onPressed: () => onSubmitted(selectedOptionIds: const <String>[]),
                      child: const Text('Skip'),
                    ),
                  ],
                ),
              ),
            },
          ),
        ),
        if (result != null || showRetryPrompt) ...[
          const SizedBox(height: 20),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 260),
            switchInCurve: Curves.easeOutCubic,
            switchOutCurve: Curves.easeInCubic,
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.08),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
            child: _FeedbackPanel(
              key: ValueKey<String>(
                '${block.id}-${result?.isCorrect}-${feedbackMessage ?? ''}-${currentAttemptCount}',
              ),
              result: result,
              feedbackMessage: feedbackMessage,
              correctAnswerLabel: correctAnswerLabel,
              currentAttemptCount: currentAttemptCount,
            ),
          ),
        ],
      ],
    );
  }
}

class _FeedbackPanel extends StatelessWidget {
  const _FeedbackPanel({
    required this.result,
    required this.feedbackMessage,
    required this.correctAnswerLabel,
    required this.currentAttemptCount,
    super.key,
  });

  final LessonBlockResult? result;
  final String? feedbackMessage;
  final String? correctAnswerLabel;
  final int currentAttemptCount;

  @override
  Widget build(BuildContext context) {
    final isCorrect = result?.isCorrect ?? false;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isCorrect ? const Color(0xFFE8F5E2) : const Color(0xFFFDE8E8),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isCorrect ? const Color(0xFF6A994E) : const Color(0xFF6F1D1B),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 180),
            child: Text(
              isCorrect ? 'Correct answer' : 'Try again',
              key: ValueKey<bool>(isCorrect),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 8),
          if (feedbackMessage != null) Text(feedbackMessage!),
          if (!isCorrect && correctAnswerLabel != null) ...[
            const SizedBox(height: 8),
            Text('Correct answer: $correctAnswerLabel'),
          ],
          const SizedBox(height: 8),
          Text('Attempts: $currentAttemptCount'),
        ],
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

class _SentenceBuilderBlockView extends StatefulWidget {
  const _SentenceBuilderBlockView({required this.block, required this.onSubmitted});

  final SentenceBuilderBlock block;
  final Future<void> Function({
    String? submittedAnswer,
    List<String> selectedOptionIds,
  }) onSubmitted;

  @override
  State<_SentenceBuilderBlockView> createState() => _SentenceBuilderBlockViewState();
}

class _SentenceBuilderBlockViewState extends State<_SentenceBuilderBlockView> {
  final List<SentenceToken> selectedTokens = <SentenceToken>[];

  @override
  Widget build(BuildContext context) {
    final selectedIds = selectedTokens.map((token) => token.id).toSet();
    final availableTokens = widget.block.tokens
        .where((token) => !selectedIds.contains(token.id))
        .toList(growable: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.block.prompt, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 18),
        AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOutCubic,
          width: double.infinity,
          constraints: const BoxConstraints(minHeight: 88),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: selectedTokens.isEmpty
                ? Theme.of(context).colorScheme.surfaceContainerHighest
                : Theme.of(context).colorScheme.primary.withValues(alpha: 0.06),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
          ),
          child: AnimatedSize(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOutCubic,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 180),
              child: selectedTokens.isEmpty
                  ? Text(
                      'Tap words below to build the sentence',
                      key: const ValueKey<String>('sentence-builder-empty'),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                    )
                  : Wrap(
                      key: ValueKey<int>(selectedTokens.length),
                      spacing: 8,
                      runSpacing: 8,
                      children: selectedTokens
                          .map(
                            (token) => InputChip(
                              label: Text(token.label),
                              onDeleted: () => setState(() => selectedTokens.remove(token)),
                              onPressed: () => setState(() => selectedTokens.remove(token)),
                            ),
                          )
                          .toList(growable: false),
                    ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Text('Word bank', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: 8),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 180),
              child: Text(
                '${selectedTokens.length}/${widget.block.correctTokenIds.length}',
                key: ValueKey<int>(selectedTokens.length),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOutCubic,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: availableTokens
                .map(
                  (token) => ActionChip(
                    label: Text(token.label),
                    avatar: const Icon(Icons.add, size: 18),
                    onPressed: () => setState(() => selectedTokens.add(token)),
                  ),
                )
                .toList(growable: false),
          ),
        ),
        const SizedBox(height: 22),
        Row(
          children: [
            FilledButton(
              onPressed: selectedTokens.isEmpty
                  ? null
                  : () => widget.onSubmitted(
                        submittedAnswer: selectedTokens.map((token) => token.label).join(' '),
                        selectedOptionIds: selectedTokens.map((token) => token.id).toList(),
                      ),
              child: const Text('Submit'),
            ),
            const SizedBox(width: 12),
            TextButton.icon(
              onPressed: selectedTokens.isEmpty ? null : () => setState(selectedTokens.clear),
              icon: const Icon(Icons.refresh),
              label: const Text('Clear'),
            ),
          ],
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
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOutCubic,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected
                ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.08)
                : Theme.of(context).colorScheme.surface,
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
