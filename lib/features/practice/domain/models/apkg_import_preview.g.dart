// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apkg_import_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApkgImportPreviewImpl _$$ApkgImportPreviewImplFromJson(
        Map<String, dynamic> json) =>
    _$ApkgImportPreviewImpl(
      deckNames: (json['deckNames'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      cardCount: (json['cardCount'] as num?)?.toInt() ?? 0,
      mediaCount: (json['mediaCount'] as num?)?.toInt() ?? 0,
      warning: json['warning'] as String?,
    );

Map<String, dynamic> _$$ApkgImportPreviewImplToJson(
        _$ApkgImportPreviewImpl instance) =>
    <String, dynamic>{
      'deckNames': instance.deckNames,
      'cardCount': instance.cardCount,
      'mediaCount': instance.mediaCount,
      'warning': instance.warning,
    };
