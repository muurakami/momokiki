import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_content.freezed.dart';
part 'learning_content.g.dart';

enum SupportedLanguage { english, japanese }

@Freezed(fromJson: true, toJson: true)
class LessonIsland with _$LessonIsland {
  const factory LessonIsland({
    required String lessonId,
    required String title,
    required String subtitle,
    required SupportedLanguage language,
    @Default(1) int order,
    @Default(false) bool isLocked,
    @Default(0) double progress,
    @Default(false) bool isStarter,
    String? emoji,
  }) = _LessonIsland;

  factory LessonIsland.fromJson(Map<String, Object?> json) =>
      _$LessonIslandFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class RoadmapDocument with _$RoadmapDocument {
  const factory RoadmapDocument({
    required String id,
    required String title,
    required SupportedLanguage language,
    @Default(<RoadmapSection>[]) List<RoadmapSection> sections,
    String? sourcePath,
    @Default(false) bool isImported,
    String? externalUrl,
    @Default(false) bool isInteractiveSite,
  }) = _RoadmapDocument;

  factory RoadmapDocument.fromJson(Map<String, Object?> json) =>
      _$RoadmapDocumentFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class RoadmapSection with _$RoadmapSection {
  const factory RoadmapSection({
    required String name,
    String? description,
    @Default(<RoadmapItem>[]) List<RoadmapItem> items,
    @Default(0) int order,
  }) = _RoadmapSection;

  factory RoadmapSection.fromJson(Map<String, Object?> json) =>
      _$RoadmapSectionFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class RoadmapItem with _$RoadmapItem {
  const factory RoadmapItem({
    required String name,
    String? description,
    @Default(0) int order,
    String? duration,
    @Default(<String>[]) List<String> steps,
  }) = _RoadmapItem;

  factory RoadmapItem.fromJson(Map<String, Object?> json) =>
      _$RoadmapItemFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class LearningCatalog with _$LearningCatalog {
  const factory LearningCatalog({
    required SupportedLanguage language,
    @Default(<LessonIsland>[]) List<LessonIsland> lessons,
    @Default(<RoadmapDocument>[]) List<RoadmapDocument> roadmaps,
  }) = _LearningCatalog;

  factory LearningCatalog.fromJson(Map<String, Object?> json) =>
      _$LearningCatalogFromJson(json);
}
