import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/injection.dart';
import '../../../lessons/domain/models/learning_content.dart';
import '../../../lessons/presentation/notifiers/learning_catalog_notifier.dart';
import '../../domain/services/roadmap_local_file_service.dart';
import 'local_html_roadmap_screen.dart';
import 'local_markdown_roadmap_screen.dart';
import '../../../settings/presentation/notifiers/app_preferences_notifier.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

class RoadmapsScreen extends ConsumerStatefulWidget {
  const RoadmapsScreen({super.key});

  @override
  ConsumerState<RoadmapsScreen> createState() => _RoadmapsScreenState();
}

class _RoadmapsScreenState extends ConsumerState<RoadmapsScreen> {
  final TextEditingController _uploadNameController = TextEditingController();
  final TextEditingController _uploadContentController = TextEditingController();

  RoadmapLocalFileService get _fileService => getIt<RoadmapLocalFileService>();

  @override
  void dispose() {
    _uploadNameController.dispose();
    _uploadContentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final catalogState = ref.watch(learningCatalogNotifierProvider);
    final languageCode = ref.watch(appPreferencesNotifierProvider).valueOrNull ?? 'en';
    final selectedLanguage =
        languageCode == 'ja' ? SupportedLanguage.japanese : SupportedLanguage.english;

    final roadmaps = catalogState.roadmaps
        .where((roadmap) => roadmap.language == selectedLanguage)
        .toList();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Roadmaps'),
        actions: [
          IconButton(
            onPressed: _showUploadDialog,
            icon: const Icon(Icons.upload_file_outlined),
          ),
        ],
      ),
      body: catalogState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(AppSpacing.md),
              children: [
                Text(
                  selectedLanguage == SupportedLanguage.english
                      ? 'Interactive English roadmaps'
                      : 'Interactive Japanese roadmaps',
                  style: AppTypography.headlineMedium,
                ),
                const SizedBox(height: AppSpacing.md),
                ...roadmaps.map(
                  (roadmap) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.md),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(roadmap.title, style: AppTypography.headlineMedium),
                          const SizedBox(height: AppSpacing.xs),
                          Text(roadmap.sourcePath ?? '', style: AppTypography.bodyMedium),
                          if (!roadmap.isInteractiveSite && roadmap.sourcePath != null) ...[
                            const SizedBox(height: AppSpacing.md),
                            FilledButton.tonalIcon(
                              onPressed: () => _openRoadmap(
                                title: roadmap.title,
                                path: roadmap.sourcePath!,
                              ),
                              icon: const Icon(Icons.article_outlined),
                              label: const Text('Open roadmap'),
                            ),
                          ],
                          if (roadmap.isInteractiveSite && roadmap.externalUrl != null) ...[
                            const SizedBox(height: AppSpacing.md),
                            FilledButton.icon(
                              onPressed: () => _openRoadmap(
                                title: roadmap.title,
                                path: roadmap.externalUrl!,
                              ),
                              icon: const Icon(Icons.open_in_new),
                              label: const Text('Open interactive roadmap'),
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            FilledButton.tonalIcon(
                              onPressed: () => _openRoadmap(
                                title: '${roadmap.title} (Text)',
                                path: _fallbackMarkdownPathForLanguage(roadmap.language),
                              ),
                              icon: const Icon(Icons.article_outlined),
                              label: const Text('Open text roadmap'),
                            ),
                          ],
                          const SizedBox(height: AppSpacing.md),
                          ...roadmap.sections.take(2).map(
                                (section) => Padding(
                                  padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(section.name, style: AppTypography.labelLarge),
                                      const SizedBox(height: AppSpacing.xs),
                                      ...section.items.take(3).map(
                                            (item) => Text('- ${item.name}'),
                                          ),
                                    ],
                                  ),
                                ),
                              ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
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
                decoration: const InputDecoration(labelText: 'File name (.md or .txt)'),
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
              notifier.importRoadmap(
                fileName: _uploadNameController.text.trim(),
                content: _uploadContentController.text,
              );
              _uploadNameController.clear();
              _uploadContentController.clear();
              Navigator.of(context).pop();
            },
            child: const Text('Import'),
          ),
        ],
      ),
    );
  }

  Future<void> _openRoadmap({
    required String title,
    required String path,
  }) async {
    try {
      final file = await _fileService.ensureLocalCopy(sourcePath: path);
      final viewerType = _fileService.selectViewer(file.path);

      if (!mounted) {
        return;
      }

      switch (viewerType) {
        case RoadmapViewerType.markdown:
          await Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (_) => LocalMarkdownRoadmapScreen(
                filePath: file.path,
                title: title,
              ),
            ),
          );
        case RoadmapViewerType.html:
          await Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (_) => LocalHtmlRoadmapScreen(
                filePath: file.path,
                title: title,
              ),
            ),
          );
        case RoadmapViewerType.unsupported:
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Unsupported roadmap format.')),
          );
      }
    } catch (error) {
      if (!mounted) {
        return;
      }
      await showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Unable to open roadmap'),
          content: Text('Failed to open roadmap: $error'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
                _openRoadmap(
                  title: '$title (Text)',
                  path: _fallbackMarkdownPathForCurrentLanguage(),
                );
              },
              child: const Text('Open text roadmap'),
            ),
          ],
        ),
      );
    }
  }

  String _fallbackMarkdownPathForCurrentLanguage() {
    final languageCode = ref.read(appPreferencesNotifierProvider).valueOrNull ?? 'en';
    return languageCode == 'ja'
        ? 'assets/roadmaps/JAPAN_Roadmap.md'
        : 'assets/roadmaps/English_B1_C1_Roadmap.md';
  }

  String _fallbackMarkdownPathForLanguage(SupportedLanguage language) {
    return language == SupportedLanguage.japanese
        ? 'assets/roadmaps/JAPAN_Roadmap.md'
        : 'assets/roadmaps/English_B1_C1_Roadmap.md';
  }
}
