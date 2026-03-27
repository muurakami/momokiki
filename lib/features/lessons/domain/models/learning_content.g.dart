// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonIslandImpl _$$LessonIslandImplFromJson(Map<String, dynamic> json) =>
    _$LessonIslandImpl(
      lessonId: json['lessonId'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      language: $enumDecode(_$SupportedLanguageEnumMap, json['language']),
      order: (json['order'] as num?)?.toInt() ?? 1,
      isLocked: json['isLocked'] as bool? ?? false,
      progress: (json['progress'] as num?)?.toDouble() ?? 0,
      isStarter: json['isStarter'] as bool? ?? false,
      emoji: json['emoji'] as String?,
    );

Map<String, dynamic> _$$LessonIslandImplToJson(_$LessonIslandImpl instance) =>
    <String, dynamic>{
      'lessonId': instance.lessonId,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'language': _$SupportedLanguageEnumMap[instance.language]!,
      'order': instance.order,
      'isLocked': instance.isLocked,
      'progress': instance.progress,
      'isStarter': instance.isStarter,
      'emoji': instance.emoji,
    };

const _$SupportedLanguageEnumMap = {
  SupportedLanguage.english: 'english',
  SupportedLanguage.japanese: 'japanese',
};

_$RoadmapDocumentImpl _$$RoadmapDocumentImplFromJson(
        Map<String, dynamic> json) =>
    _$RoadmapDocumentImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      language: $enumDecode(_$SupportedLanguageEnumMap, json['language']),
      sections: (json['sections'] as List<dynamic>?)
              ?.map((e) => RoadmapSection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <RoadmapSection>[],
      sourcePath: json['sourcePath'] as String?,
      isImported: json['isImported'] as bool? ?? false,
      externalUrl: json['externalUrl'] as String?,
      isInteractiveSite: json['isInteractiveSite'] as bool? ?? false,
    );

Map<String, dynamic> _$$RoadmapDocumentImplToJson(
        _$RoadmapDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'language': _$SupportedLanguageEnumMap[instance.language]!,
      'sections': instance.sections,
      'sourcePath': instance.sourcePath,
      'isImported': instance.isImported,
      'externalUrl': instance.externalUrl,
      'isInteractiveSite': instance.isInteractiveSite,
    };

_$RoadmapSectionImpl _$$RoadmapSectionImplFromJson(Map<String, dynamic> json) =>
    _$RoadmapSectionImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => RoadmapItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <RoadmapItem>[],
      order: (json['order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RoadmapSectionImplToJson(
        _$RoadmapSectionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'items': instance.items,
      'order': instance.order,
    };

_$RoadmapItemImpl _$$RoadmapItemImplFromJson(Map<String, dynamic> json) =>
    _$RoadmapItemImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      order: (json['order'] as num?)?.toInt() ?? 0,
      duration: json['duration'] as String?,
      steps:
          (json['steps'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
    );

Map<String, dynamic> _$$RoadmapItemImplToJson(_$RoadmapItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'order': instance.order,
      'duration': instance.duration,
      'steps': instance.steps,
    };

_$LearningCatalogImpl _$$LearningCatalogImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningCatalogImpl(
      language: $enumDecode(_$SupportedLanguageEnumMap, json['language']),
      lessons: (json['lessons'] as List<dynamic>?)
              ?.map((e) => LessonIsland.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LessonIsland>[],
      roadmaps: (json['roadmaps'] as List<dynamic>?)
              ?.map((e) => RoadmapDocument.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <RoadmapDocument>[],
    );

Map<String, dynamic> _$$LearningCatalogImplToJson(
        _$LearningCatalogImpl instance) =>
    <String, dynamic>{
      'language': _$SupportedLanguageEnumMap[instance.language]!,
      'lessons': instance.lessons,
      'roadmaps': instance.roadmaps,
    };
