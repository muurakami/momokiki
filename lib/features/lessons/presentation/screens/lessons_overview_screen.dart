import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/models/learning_content.dart';
import '../notifiers/learning_catalog_notifier.dart';

class LessonsOverviewScreen extends ConsumerStatefulWidget {
  const LessonsOverviewScreen({super.key});

  @override
  ConsumerState<LessonsOverviewScreen> createState() => _LessonsOverviewScreenState();
}

class _LessonsOverviewScreenState extends ConsumerState<LessonsOverviewScreen> {
  final TextEditingController _uploadNameController = TextEditingController();
  final TextEditingController _uploadContentController = TextEditingController();

  @override
  void dispose() {
    _uploadNameController.dispose();
    _uploadContentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(learningCatalogNotifierProvider);
    final notifier = ref.read(learningCatalogNotifierProvider.notifier);
    final selectedLanguage = state.selectedLanguage;
    final lessons = state.lessons
        .where((lesson) => lesson.language == selectedLanguage)
        .toList()
      ..sort((a, b) => a.order.compareTo(b.order));
    final roadmaps = state.roadmaps
        .where((roadmap) => roadmap.language == selectedLanguage)
        .toList();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Learn'),
        actions: [
          IconButton(
            onPressed: _showUploadDialog,
            icon: const Icon(Icons.upload_file_outlined),
            tooltip: 'Upload Roadmap',
          ),
        ],
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choose language', style: AppTypography.headlineMedium),
                  const SizedBox(height: AppSpacing.sm),
                  SegmentedButton<SupportedLanguage>(
                    segments: const [
                      ButtonSegment(
                        value: SupportedLanguage.english,
                        icon: Text('EN'),
                        label: Text('English'),
                      ),
                      ButtonSegment(
                        value: SupportedLanguage.japanese,
                        icon: Text('JP'),
                        label: Text('Japanese'),
                      ),
                    ],
                    selected: {selectedLanguage},
                    onSelectionChanged: (selection) => notifier.selectLanguage(selection.first),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Expanded(
                    child: ListView(
                      children: [
                        Text('Lesson Islands', style: AppTypography.headlineMedium),
                        const SizedBox(height: AppSpacing.md),
                        Wrap(
                          spacing: AppSpacing.md,
                          runSpacing: AppSpacing.md,
                          children: lessons
                              .map(
                                (lesson) => _LessonIslandCard(
                                  lesson: lesson,
                                  onTap: () => context.go('/app/lesson/${lesson.lessonId}'),
                                ),
                              )
                              .toList(),
                        ),
                        const SizedBox(height: AppSpacing.xl),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Roadmaps', style: AppTypography.headlineMedium),
                            TextButton.icon(
                              onPressed: _showUploadDialog,
                              icon: const Icon(Icons.add),
                              label: const Text('Upload Roadmap'),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSpacing.md),
                        if (roadmaps.isEmpty)
                          const _RoadmapEmptyState()
                        else
                          ...roadmaps.map((roadmap) => _RoadmapCard(roadmap: roadmap)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Future<void> _showUploadDialog() async {
    final notifier = ref.read(learningCatalogNotifierProvider.notifier);

    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Upload Roadmap'),
        content: SizedBox(
          width: 480,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _uploadNameController,
                decoration: const InputDecoration(
                  labelText: 'File name (.md or .txt)',
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              TextField(
                controller: _uploadContentController,
                minLines: 8,
                maxLines: 12,
                decoration: const InputDecoration(
                  labelText: 'Roadmap content',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              try {
                notifier.importRoadmap(
                  fileName: _uploadNameController.text.trim(),
                  content: _uploadContentController.text,
                );
                _uploadNameController.clear();
                _uploadContentController.clear();
                Navigator.of(context).pop();
              } on FormatException catch (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error.message)),
                );
              }
            },
            child: const Text('Import'),
          ),
        ],
      ),
    );
  }
}

class _LessonIslandCard extends StatelessWidget {
  const _LessonIslandCard({required this.lesson, required this.onTap});

  final LessonIsland lesson;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 220,
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFE8F0E0), Color(0xFFF8F2E3)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
          boxShadow: const [
            BoxShadow(
              color: Color(0x1A432818),
              blurRadius: 10,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Text(lesson.emoji ?? '📘', style: const TextStyle(fontSize: 24)),
                  ),
                ),
                const Spacer(),
                if (lesson.progress > 0)
                  Text(
                    '${(lesson.progress * 100).round()}%',
                    style: AppTypography.labelSmall.copyWith(color: AppColors.primary),
                  ),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            Text(lesson.title, style: AppTypography.headlineMedium),
            const SizedBox(height: AppSpacing.xs),
            Text(lesson.subtitle, style: AppTypography.bodyMedium),
            const SizedBox(height: AppSpacing.md),
            ClipRRect(
              borderRadius: BorderRadius.circular(999),
              child: LinearProgressIndicator(
                value: lesson.progress,
                minHeight: 10,
                backgroundColor: AppColors.camel.withValues(alpha: 0.25),
                color: AppColors.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RoadmapCard extends StatelessWidget {
  const _RoadmapCard({required this.roadmap});

  final RoadmapDocument roadmap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
        border: Border.all(color: AppColors.camel.withValues(alpha: 0.35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(roadmap.title, style: AppTypography.headlineMedium)),
              if (roadmap.isImported)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: AppColors.accent.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text('Imported', style: AppTypography.labelSmall),
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(roadmap.sourcePath ?? 'Local roadmap', style: AppTypography.bodyMedium),
          const SizedBox(height: AppSpacing.md),
          ...roadmap.sections.take(3).map(
                (section) => Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(section.name, style: AppTypography.labelLarge),
                      const SizedBox(height: AppSpacing.xs),
                      ...section.items.take(2).map(
                            (item) => Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Text('- ${item.name}', style: AppTypography.bodyMedium),
                            ),
                          ),
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}

class _RoadmapEmptyState extends StatelessWidget {
  const _RoadmapEmptyState();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
      ),
      child: Text(
        'No roadmap loaded for this language yet. Upload a .md or .txt roadmap to import it.',
        style: AppTypography.bodyMedium,
      ),
    );
  }
}
