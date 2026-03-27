import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../notifiers/lesson_session_notifier.dart';
import '../notifiers/lesson_session_state.dart';
import '../widgets/block_router.dart';
import '../widgets/lesson_progress_bar.dart';

class LessonScreen extends ConsumerStatefulWidget {
  const LessonScreen({required this.lessonId, super.key});

  final String lessonId;

  @override
  ConsumerState<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends ConsumerState<LessonScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(lessonSessionNotifierProvider.notifier).loadLesson(widget.lessonId),
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<LessonSessionState>(lessonSessionNotifierProvider, (previous, next) {
      final summary = next.summary;
      if (summary != null && previous?.summary != summary) {
        context.go('/app/lesson/${widget.lessonId}/result', extra: summary);
      }
    });

    final state = ref.watch(lessonSessionNotifierProvider);
    final lesson = state.lesson;
    final progress = state.progress;
    final currentBlock = state.currentBlock;

    return Scaffold(
      appBar: AppBar(
        title: Text(lesson?.title ?? 'Lesson ${widget.lessonId}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Builder(
          builder: (context) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.errorMessage != null) {
              return Center(child: Text(state.errorMessage!));
            }

            if (lesson == null || progress == null) {
              return const Center(child: Text('Lesson data is empty'));
            }

            if (lesson.blocks.isEmpty) {
              return const Center(child: Text('This lesson has no blocks'));
            }

            if (currentBlock == null) {
              return const Center(child: Text('Lesson completed'));
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LessonProgressBar(
                  currentBlock: progress.currentBlockIndex + 1,
                  totalBlocks: lesson.blocks.length,
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: SingleChildScrollView(
                    child: LessonBlockRouter(
                      block: currentBlock,
                      onSubmitted: ({submittedAnswer, selectedOptionIds = const <String>[]}) {
                        return ref.read(lessonSessionNotifierProvider.notifier).submitBlock(
                              submittedAnswer: submittedAnswer,
                              selectedOptionIds: selectedOptionIds,
                            );
                      },
                    ),
                  ),
                ),
                if (state.submitting) ...[
                  const SizedBox(height: 12),
                  const LinearProgressIndicator(),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
