import 'package:json_annotation/json_annotation.dart';

part 'seasondocument.g.dart';

@JsonSerializable()
class SeasonDocument {
  const SeasonDocument({
    required this.id,
    required this.seasonId,
    required this.isFeatured,
    required this.documentName,
    required this.seasonName,
    required this.documentPath,
    required this.documentGuid,
    required this.folder,
    required this.ordinal,
  });

  factory SeasonDocument.fromJson(Map<String, dynamic> json) =>
      _$SeasonDocumentFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonDocumentToJson(this);

  final int id;
  final int seasonId;
  final bool isFeatured;
  final String documentName;
  final String seasonName;
  final String documentPath;
  final String documentGuid;
  final String folder;
  final int ordinal;
}
