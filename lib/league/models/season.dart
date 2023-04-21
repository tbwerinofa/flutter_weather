import 'package:json_annotation/json_annotation.dart';
part 'season.g.dart';

@JsonSerializable()
class Season {
  const Season(
      {required this.id,
      required this.name,
      required this.finYearId,
      required this.provinceId,
      required this.countryId,
      required this.organisationIds,
      required this.province,
      required this.country,
      required this.organisationTypeId,
      required this.organisationId,
      required this.finYear});

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
  Map<String, dynamic> toJson() => _$SeasonToJson(this);

  final int id;
  final String name;
  final int finYearId;
  final int provinceId;
  final int countryId;
  final List<int> organisationIds;
  final String province;
  final String country;
  final int organisationTypeId;
  final int organisationId;
  final String finYear;
}
