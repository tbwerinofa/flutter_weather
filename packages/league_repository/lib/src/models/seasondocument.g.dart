// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasondocument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonDocument _$SeasonDocumentFromJson(Map<String, dynamic> json) =>
    SeasonDocument(
      id: json['id'] as int,
      seasonId: json['seasonId'] as int,
      isFeatured: json['isFeatured'] as bool,
      documentName: json['documentName'] as String,
      seasonName: json['seasonName'] as String,
      documentPath: json['documentPath'] as String,
      documentGuid: json['documentGuid'] as String,
      folder: json['folder'] as String,
      ordinal: json['ordinal'] as int,
    );

Map<String, dynamic> _$SeasonDocumentToJson(SeasonDocument instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seasonId': instance.seasonId,
      'isFeatured': instance.isFeatured,
      'documentName': instance.documentName,
      'seasonName': instance.seasonName,
      'documentPath': instance.documentPath,
      'documentGuid': instance.documentGuid,
      'folder': instance.folder,
      'ordinal': instance.ordinal,
    };
