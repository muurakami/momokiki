// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      id: json['id'] as String,
      version: (json['version'] as num?)?.toInt() ?? 1,
      title: json['title'] as String,
      meta: LessonMeta.fromJson(json['meta'] as Map<String, dynamic>),
      blocks: (json['blocks'] as List<dynamic>?)
              ?.map((e) => LessonBlock.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LessonBlock>[],
      language:
          $enumDecodeNullable(_$SupportedLanguageEnumMap, json['language']) ??
              SupportedLanguage.english,
      nextLessonId: json['nextLessonId'] as String?,
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'title': instance.title,
      'meta': instance.meta,
      'blocks': instance.blocks,
      'language': _$SupportedLanguageEnumMap[instance.language]!,
      'nextLessonId': instance.nextLessonId,
    };

const _$SupportedLanguageEnumMap = {
  SupportedLanguage.english: 'english',
  SupportedLanguage.japanese: 'japanese',
};

_$LessonMetaImpl _$$LessonMetaImplFromJson(Map<String, dynamic> json) =>
    _$LessonMetaImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      estimatedXp: (json['estimated_xp'] as num?)?.toInt() ?? 0,
      difficulty: (json['difficulty'] as num?)?.toInt() ?? 1,
      rating: (json['rating'] as num?)?.toDouble(),
      language: json['language'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      extras:
          json['extras'] as Map<String, dynamic>? ?? const <String, Object?>{},
    );

Map<String, dynamic> _$$LessonMetaImplToJson(_$LessonMetaImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'estimated_xp': instance.estimatedXp,
      'difficulty': instance.difficulty,
      'rating': instance.rating,
      'language': instance.language,
      'tags': instance.tags,
      'extras': instance.extras,
    };

_$TextBlockImpl _$$TextBlockImplFromJson(Map<String, dynamic> json) =>
    _$TextBlockImpl(
      id: json['id'] as String,
      type: json['type'] as String? ?? 'text',
      title: json['title'] as String,
      content: json['content'] as String,
      skippable: json['skippable'] as bool? ?? false,
      bullets: (json['bullets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      extras:
          json['extras'] as Map<String, dynamic>? ?? const <String, Object?>{},
    );

Map<String, dynamic> _$$TextBlockImplToJson(_$TextBlockImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'content': instance.content,
      'skippable': instance.skippable,
      'bullets': instance.bullets,
      'extras': instance.extras,
    };

_$QuizBlockImpl _$$QuizBlockImplFromJson(Map<String, dynamic> json) =>
    _$QuizBlockImpl(
      id: json['id'] as String,
      type: json['type'] as String? ?? 'quiz',
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      correctAnswer: json['correct_answer'] as String,
      explanation: json['explanation'] as String?,
      extras:
          json['extras'] as Map<String, dynamic>? ?? const <String, Object?>{},
    );

Map<String, dynamic> _$$QuizBlockImplToJson(_$QuizBlockImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'question': instance.question,
      'options': instance.options,
      'correct_answer': instance.correctAnswer,
      'explanation': instance.explanation,
      'extras': instance.extras,
    };

_$VideoBlockImpl _$$VideoBlockImplFromJson(Map<String, dynamic> json) =>
    _$VideoBlockImpl(
      id: json['id'] as String,
      type: json['type'] as String? ?? 'video',
      title: json['title'] as String,
      videoUrl: json['video_url'] as String,
      caption: json['caption'] as String?,
      durationSeconds: (json['durationSeconds'] as num?)?.toInt() ?? 0,
      extras:
          json['extras'] as Map<String, dynamic>? ?? const <String, Object?>{},
    );

Map<String, dynamic> _$$VideoBlockImplToJson(_$VideoBlockImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'video_url': instance.videoUrl,
      'caption': instance.caption,
      'durationSeconds': instance.durationSeconds,
      'extras': instance.extras,
    };

_$CodeBlockImpl _$$CodeBlockImplFromJson(Map<String, dynamic> json) =>
    _$CodeBlockImpl(
      id: json['id'] as String,
      type: json['type'] as String? ?? 'code',
      prompt: json['prompt'] as String,
      codeSnippet: json['code_snippet'] as String,
      language: json['language'] as String?,
      expectedAnswer: json['expected_answer'] as String?,
      hints:
          (json['hints'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      extras:
          json['extras'] as Map<String, dynamic>? ?? const <String, Object?>{},
    );

Map<String, dynamic> _$$CodeBlockImplToJson(_$CodeBlockImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'prompt': instance.prompt,
      'code_snippet': instance.codeSnippet,
      'language': instance.language,
      'expected_answer': instance.expectedAnswer,
      'hints': instance.hints,
      'extras': instance.extras,
    };

_$ChoiceBlockImpl _$$ChoiceBlockImplFromJson(Map<String, dynamic> json) =>
    _$ChoiceBlockImpl(
      id: json['id'] as String,
      type: json['type'] as String? ?? 'choice',
      prompt: json['prompt'] as String,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => ChoiceOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ChoiceOption>[],
      correctOptionId: json['correct_option_id'] as String,
      multiple: json['multiple'] as bool?,
      extras:
          json['extras'] as Map<String, dynamic>? ?? const <String, Object?>{},
    );

Map<String, dynamic> _$$ChoiceBlockImplToJson(_$ChoiceBlockImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'prompt': instance.prompt,
      'options': instance.options,
      'correct_option_id': instance.correctOptionId,
      'multiple': instance.multiple,
      'extras': instance.extras,
    };

_$UnknownLessonBlockImpl _$$UnknownLessonBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$UnknownLessonBlockImpl(
      id: json['id'] as String,
      type: json['type'] as String? ?? 'unknown',
      title: json['title'] as String? ?? 'Unsupported block',
      rawType: json['rawType'] as String?,
      raw: json['raw'] as Map<String, dynamic>? ?? const <String, Object?>{},
    );

Map<String, dynamic> _$$UnknownLessonBlockImplToJson(
        _$UnknownLessonBlockImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'rawType': instance.rawType,
      'raw': instance.raw,
    };

_$ChoiceOptionImpl _$$ChoiceOptionImplFromJson(Map<String, dynamic> json) =>
    _$ChoiceOptionImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      feedback: json['feedback'] as String?,
    );

Map<String, dynamic> _$$ChoiceOptionImplToJson(_$ChoiceOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'feedback': instance.feedback,
    };
