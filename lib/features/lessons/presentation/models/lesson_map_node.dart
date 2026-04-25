import '../../domain/models/learning_content.dart';

enum LessonMapNodeStatus { completed, current, available, locked }

enum LessonMapNodeLane { left, center, right }

class LessonMapNode {
  const LessonMapNode({
    required this.lesson,
    required this.status,
    required this.lane,
    required this.ctaLabel,
  });

  final LessonIsland lesson;
  final LessonMapNodeStatus status;
  final LessonMapNodeLane lane;
  final String ctaLabel;

  bool get isEnabled => status != LessonMapNodeStatus.locked;
}

class LessonMapLayoutBuilder {
  const LessonMapLayoutBuilder();

  List<LessonMapNode> build(List<LessonIsland> lessons) {
    return [
      for (var index = 0; index < lessons.length; index++)
        _nodeFor(lessons, index),
    ];
  }

  LessonMapNode _nodeFor(List<LessonIsland> lessons, int index) {
    final lesson = lessons[index];
    final status = _statusFor(
      lesson: lesson,
      index: index,
      previousLesson: index == 0 ? null : lessons[index - 1],
    );
    return LessonMapNode(
      lesson: lesson,
      status: status,
      lane: _laneFor(index),
      ctaLabel: _ctaLabelFor(lesson: lesson, status: status),
    );
  }

  LessonMapNodeStatus _statusFor({
    required LessonIsland lesson,
    required int index,
    required LessonIsland? previousLesson,
  }) {
    final progressStatus = switch (lesson.status) {
      LessonStatus.completed => LessonMapNodeStatus.completed,
      LessonStatus.inProgress => LessonMapNodeStatus.current,
      LessonStatus.notStarted => null,
    };
    if (progressStatus != null) {
      return progressStatus;
    }

    if (lesson.isLocked) {
      return LessonMapNodeStatus.locked;
    }
    if (index == 0 ||
        lesson.isStarter ||
        previousLesson?.status == LessonStatus.completed) {
      return LessonMapNodeStatus.available;
    }
    return LessonMapNodeStatus.locked;
  }

  LessonMapNodeLane _laneFor(int index) {
    return switch (index % 4) {
      0 => LessonMapNodeLane.center,
      1 => LessonMapNodeLane.right,
      2 => LessonMapNodeLane.center,
      _ => LessonMapNodeLane.left,
    };
  }

  String _ctaLabelFor({
    required LessonIsland lesson,
    required LessonMapNodeStatus status,
  }) {
    if (status == LessonMapNodeStatus.locked) {
      return 'Locked';
    }

    return switch (status) {
      LessonMapNodeStatus.completed => 'Review',
      LessonMapNodeStatus.current => 'Continue',
      LessonMapNodeStatus.available => lesson.ctaLabel == 'Start' ? 'Start' : lesson.ctaLabel,
      LessonMapNodeStatus.locked => 'Locked',
    };
  }
}
