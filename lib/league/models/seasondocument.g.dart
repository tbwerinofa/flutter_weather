// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasondocument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonDocument _$SeasonDocumentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SeasonDocument',
      json,
      ($checkedConvert) {
        final val = SeasonDocument(
          id: $checkedConvert('id', (v) => v as int),
          seasonId: $checkedConvert('season_id', (v) => v as int),
          isFeatured: $checkedConvert('is_featured', (v) => v as bool),
          documentName: $checkedConvert('document_name', (v) => v as String),
          seasonName: $checkedConvert('season_name', (v) => v as String),
          documentPath: $checkedConvert('document_path', (v) => v as String),
          documentGuid: $checkedConvert('document_guid', (v) => v as String),
          folder: $checkedConvert('folder', (v) => v as String),
          ordinal: $checkedConvert('ordinal', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'seasonId': 'season_id',
        'isFeatured': 'is_featured',
        'documentName': 'document_name',
        'seasonName': 'season_name',
        'documentPath': 'document_path',
        'documentGuid': 'document_guid'
      },
    );

Map<String, dynamic> _$SeasonDocumentToJson(SeasonDocument instance) =>
    <String, dynamic>{
      'id': instance.id,
      'season_id': instance.seasonId,
      'is_featured': instance.isFeatured,
      'document_name': instance.documentName,
      'season_name': instance.seasonName,
      'document_path': instance.documentPath,
      'document_guid': instance.documentGuid,
      'folder': instance.folder,
      'ordinal': instance.ordinal,
    };
