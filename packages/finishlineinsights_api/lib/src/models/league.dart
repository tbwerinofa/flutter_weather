import 'package:json_annotation/json_annotation.dart';

import 'dashboarditem.dart';
import 'season.dart';
import 'seasondocument.dart';
part 'league.g.dart';

@JsonSerializable()
class League {
  const League(
      {required this.totalPrizes,
      required this.season,
      required this.organisationCount,
      required this.seasonPrizes,
      required this.seasonRules,
      required this.weightingFactors,
      required this.seasonRaces,
      required this.seasonDocuments,
      required this.aggregateLogs,
      required this.documentPath});

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);

  final double totalPrizes;
  final Season season;
  final int organisationCount;
  final List<DashboardItem> seasonPrizes;
  final List<DashboardItem> seasonRules;
  final List<DashboardItem> weightingFactors;
  final List<DashboardItem> seasonRaces;
  final List<SeasonDocument> seasonDocuments;
  final List<DashboardItem> aggregateLogs;
  final String documentPath;
}
