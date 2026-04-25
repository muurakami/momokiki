import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../models/lesson_map_node.dart';

class LessonMapView extends StatelessWidget {
  const LessonMapView({
    required this.nodes,
    required this.onLessonSelected,
    super.key,
  });

  final List<LessonMapNode> nodes;
  final ValueChanged<LessonMapNode> onLessonSelected;

  @override
  Widget build(BuildContext context) {
    if (nodes.isEmpty) {
      return const _EmptyLessonMap();
    }

    return ListView.builder(
      padding: const EdgeInsets.only(
        left: AppSpacing.md,
        right: AppSpacing.md,
        bottom: AppSpacing.xl,
      ),
      itemCount: nodes.length,
      itemBuilder: (context, index) {
        final node = nodes[index];
        final nextNode = index + 1 < nodes.length ? nodes[index + 1] : null;

        return SizedBox(
          height: 146,
          child: Stack(
            children: [
              if (nextNode != null)
                Positioned.fill(
                  child: RepaintBoundary(
                    child: CustomPaint(
                      painter: LessonPathPainter(
                        fromLane: node.lane,
                        toLane: nextNode.lane,
                        isCompleted: node.status == LessonMapNodeStatus.completed,
                      ),
                    ),
                  ),
                ),
              Align(
                alignment: _alignmentFor(node.lane),
                child: LessonMapNodeButton(
                  node: node,
                  onPressed: node.isEnabled ? () => onLessonSelected(node) : null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class LessonMapNodeButton extends StatelessWidget {
  const LessonMapNodeButton({
    required this.node,
    required this.onPressed,
    super.key,
  });

  final LessonMapNode node;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = _NodeColors.forStatus(node.status);
    final isLocked = node.status == LessonMapNodeStatus.locked;

    return Semantics(
      button: true,
      enabled: onPressed != null,
      label: '${node.lesson.title}, ${node.ctaLabel}',
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(32),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          width: 210,
          padding: const EdgeInsets.all(AppSpacing.sm),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [colors.top, colors.bottom],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: colors.border, width: 2),
            boxShadow: [
              if (!isLocked)
                BoxShadow(
                  color: colors.shadow,
                  blurRadius: 18,
                  offset: const Offset(0, 10),
                ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  color: colors.iconBackground,
                  shape: BoxShape.circle,
                  boxShadow: [
                    if (!isLocked)
                      const BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                  ],
                ),
                child: Center(
                  child: isLocked
                      ? const Icon(
                          Icons.lock_rounded,
                          color: AppColors.textSecondary,
                        )
                      : Text(
                          node.lesson.emoji ?? _fallbackEmoji(node.status),
                          style: const TextStyle(fontSize: 28),
                        ),
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      node.lesson.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.labelLarge.copyWith(color: colors.title),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      node.ctaLabel,
                      style: AppTypography.labelSmall.copyWith(color: colors.label),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(999),
                      child: LinearProgressIndicator(
                        value: node.lesson.progress.clamp(0, 1).toDouble(),
                        minHeight: 6,
                        backgroundColor: colors.progressBackground,
                        color: colors.progress,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LessonPathPainter extends CustomPainter {
  const LessonPathPainter({
    required this.fromLane,
    required this.toLane,
    required this.isCompleted,
  });

  final LessonMapNodeLane fromLane;
  final LessonMapNodeLane toLane;
  final bool isCompleted;

  @override
  void paint(Canvas canvas, Size size) {
    final start = Offset(size.width * _fractionFor(fromLane), 82);
    final end = Offset(size.width * _fractionFor(toLane), size.height + 8);
    final controlY = size.height * 0.62;
    final path = Path()
      ..moveTo(start.dx, start.dy)
      ..cubicTo(start.dx, controlY, end.dx, controlY, end.dx, end.dy);

    final shadowPaint = Paint()
      ..color = const Color(0x1F432818)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 13
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(path, shadowPaint);

    final paint = Paint()
      ..color = isCompleted
          ? AppColors.secondary.withValues(alpha: 0.72)
          : AppColors.camel.withValues(alpha: 0.42)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant LessonPathPainter oldDelegate) {
    return oldDelegate.fromLane != fromLane ||
        oldDelegate.toLane != toLane ||
        oldDelegate.isCompleted != isCompleted;
  }
}

class _EmptyLessonMap extends StatelessWidget {
  const _EmptyLessonMap();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(AppSpacing.lg),
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.72),
          borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
        ),
        child: Text('No lessons available yet.', style: AppTypography.bodyLarge),
      ),
    );
  }
}

class _NodeColors {
  const _NodeColors({
    required this.top,
    required this.bottom,
    required this.border,
    required this.shadow,
    required this.iconBackground,
    required this.progress,
    required this.progressBackground,
    required this.title,
    required this.label,
  });

  final Color top;
  final Color bottom;
  final Color border;
  final Color shadow;
  final Color iconBackground;
  final Color progress;
  final Color progressBackground;
  final Color title;
  final Color label;

  static _NodeColors forStatus(LessonMapNodeStatus status) {
    return switch (status) {
      LessonMapNodeStatus.completed => _NodeColors(
          top: AppColors.secondary,
          bottom: AppColors.primary,
          border: AppColors.primary,
          shadow: AppColors.secondary.withValues(alpha: 0.30),
          iconBackground: Colors.white,
          progress: AppColors.xpGold,
          progressBackground: Colors.white24,
          title: AppColors.textOnPrimary,
          label: AppColors.background,
        ),
      LessonMapNodeStatus.current => _NodeColors(
          top: AppColors.gold,
          bottom: AppColors.orange,
          border: AppColors.warning,
          shadow: AppColors.orange.withValues(alpha: 0.28),
          iconBackground: Colors.white,
          progress: AppColors.primary,
          progressBackground: Colors.white38,
          title: AppColors.textPrimary,
          label: AppColors.darkWine,
        ),
      LessonMapNodeStatus.available => _NodeColors(
          top: Colors.white,
          bottom: const Color(0xFFE8F0E0),
          border: AppColors.secondary.withValues(alpha: 0.55),
          shadow: AppColors.primary.withValues(alpha: 0.14),
          iconBackground: AppColors.background,
          progress: AppColors.secondary,
          progressBackground: AppColors.camel.withValues(alpha: 0.20),
          title: AppColors.textPrimary,
          label: AppColors.textSecondary,
        ),
      LessonMapNodeStatus.locked => _NodeColors(
          top: const Color(0xFFE8E0D2),
          bottom: const Color(0xFFD7CCBA),
          border: AppColors.camel.withValues(alpha: 0.35),
          shadow: Colors.transparent,
          iconBackground: AppColors.background.withValues(alpha: 0.70),
          progress: AppColors.camel,
          progressBackground: AppColors.camel.withValues(alpha: 0.20),
          title: AppColors.textSecondary,
          label: AppColors.textSecondary,
        ),
    };
  }
}

Alignment _alignmentFor(LessonMapNodeLane lane) {
  return switch (lane) {
    LessonMapNodeLane.left => Alignment.centerLeft,
    LessonMapNodeLane.center => Alignment.center,
    LessonMapNodeLane.right => Alignment.centerRight,
  };
}

double _fractionFor(LessonMapNodeLane lane) {
  return switch (lane) {
    LessonMapNodeLane.left => 0.18,
    LessonMapNodeLane.center => 0.50,
    LessonMapNodeLane.right => 0.82,
  };
}

String _fallbackEmoji(LessonMapNodeStatus status) {
  return switch (status) {
    LessonMapNodeStatus.completed => 'OK',
    LessonMapNodeStatus.current => 'GO',
    LessonMapNodeStatus.available => '*',
    LessonMapNodeStatus.locked => '',
  };
}
