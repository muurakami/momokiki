// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardMediaImpl _$$FlashcardMediaImplFromJson(Map<String, dynamic> json) =>
    _$FlashcardMediaImpl(
      id: json['id'] as String,
      checksumSha1: json['checksumSha1'] as String,
      originalName: json['originalName'] as String,
      storedName: json['storedName'] as String,
      mimeType: json['mimeType'] as String,
      localPath: json['localPath'] as String,
      sizeBytes: (json['sizeBytes'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$FlashcardMediaImplToJson(
        _$FlashcardMediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'checksumSha1': instance.checksumSha1,
      'originalName': instance.originalName,
      'storedName': instance.storedName,
      'mimeType': instance.mimeType,
      'localPath': instance.localPath,
      'sizeBytes': instance.sizeBytes,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
