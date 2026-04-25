// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_deck.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardDeckImpl _$$FlashcardDeckImplFromJson(Map<String, dynamic> json) =>
    _$FlashcardDeckImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      sourceType: json['sourceType'] as String? ?? 'manual',
      ankiDeckId: (json['ankiDeckId'] as num?)?.toInt(),
      maxNewPerDay: (json['maxNewPerDay'] as num?)?.toInt() ?? 20,
      maxReviewsPerDay: (json['maxReviewsPerDay'] as num?)?.toInt() ?? 200,
      dueCount: (json['dueCount'] as num?)?.toInt() ?? 0,
      newCount: (json['newCount'] as num?)?.toInt() ?? 0,
      reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$FlashcardDeckImplToJson(_$FlashcardDeckImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'sourceType': instance.sourceType,
      'ankiDeckId': instance.ankiDeckId,
      'maxNewPerDay': instance.maxNewPerDay,
      'maxReviewsPerDay': instance.maxReviewsPerDay,
      'dueCount': instance.dueCount,
      'newCount': instance.newCount,
      'reviewCount': instance.reviewCount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
