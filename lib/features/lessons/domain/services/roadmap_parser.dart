import 'package:injectable/injectable.dart';

import '../models/learning_content.dart';

@lazySingleton
class RoadmapParser {
  const RoadmapParser();

  RoadmapDocument parse({
    required String id,
    required String sourcePath,
    required String content,
    required SupportedLanguage language,
  }) {
    final lines = content
        .split(RegExp(r'\r?\n'))
        .map((line) => line.trim())
        .where((line) => line.isNotEmpty && line != '---' && line != '***')
        .toList();

    if (lines.isEmpty) {
      throw const FormatException('Roadmap file is empty');
    }

    final title = _extractTitle(lines) ?? 'Imported Roadmap';
    final sections = <RoadmapSection>[];
    RoadmapSectionBuilder? currentSection;

    for (final line in lines) {
      if (_isTitle(line)) {
        continue;
      }

      if (_isSection(line)) {
        if (currentSection != null) {
          sections.add(currentSection.build(sections.length));
        }
        currentSection = RoadmapSectionBuilder(name: _stripHashes(line));
        continue;
      }

      if (_isListItem(line)) {
        currentSection ??= RoadmapSectionBuilder(name: 'Overview');
        currentSection.items.add(
          _parseItem(line, currentSection.items.length),
        );
        continue;
      }

      currentSection ??= RoadmapSectionBuilder(name: 'Overview');
      if (currentSection.items.isEmpty) {
        currentSection.description = _appendText(currentSection.description, line);
      } else {
        final lastIndex = currentSection.items.length - 1;
        final currentItem = currentSection.items[lastIndex];
        currentSection.items[lastIndex] = currentItem.copyWith(
          description: _appendText(currentItem.description, line),
        );
      }
    }

    if (currentSection != null) {
      sections.add(currentSection.build(sections.length));
    }

    if (sections.isEmpty) {
      throw const FormatException('Roadmap file has no recognizable sections');
    }

    return RoadmapDocument(
      id: id,
      title: title,
      language: language,
      sections: sections,
      sourcePath: sourcePath,
      isImported: true,
      isInteractiveSite: false,
    );
  }

  bool isSupportedFile(String path) {
    final normalized = path.toLowerCase();
    return normalized.endsWith('.md') || normalized.endsWith('.txt');
  }

  String? _extractTitle(List<String> lines) {
    for (final line in lines) {
      if (_isTitle(line)) {
        return _stripHashes(line);
      }
    }
    return null;
  }

  bool _isTitle(String line) => line.startsWith('# ') || line.startsWith('## ');

  bool _isSection(String line) => line.startsWith('### ') || line.startsWith('## ');

  bool _isListItem(String line) =>
      line.startsWith('- ') || line.startsWith('* ') || RegExp(r'^\d+\.\s').hasMatch(line);

  String _stripHashes(String line) => line.replaceFirst(RegExp(r'^#+\s*'), '').trim();

  RoadmapItem _parseItem(String line, int order) {
    final normalized = line.replaceFirst(RegExp(r'^(-|\*|\d+\.)\s*'), '');
    final parts = normalized.split(RegExp(r'\s+[—-]\s+|:\s+'));
    final name = parts.first.trim();
    final description = parts.length > 1 ? parts.sublist(1).join(' - ').trim() : null;

    return RoadmapItem(
      name: name,
      description: description,
      order: order,
    );
  }

  String _appendText(String? current, String next) {
    if (current == null || current.isEmpty) {
      return next;
    }
    return '$current $next';
  }
}

class RoadmapSectionBuilder {
  RoadmapSectionBuilder({required this.name});

  final String name;
  String? description;
  final List<RoadmapItem> items = <RoadmapItem>[];

  RoadmapSection build(int order) => RoadmapSection(
        name: name,
        description: description,
        items: items,
        order: order,
      );
}
