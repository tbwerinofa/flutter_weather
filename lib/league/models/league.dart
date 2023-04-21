import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:league_repository/league_repository.dart' as league_repository;

import 'dashboarditem.dart';
import 'season.dart';
import 'seasondocument.dart';

part 'league.g.dart';

@JsonSerializable()
class League extends Equatable {
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

  factory League.fromRepository(league_repository.League league) {
    return League(
        totalPrizes: league.totalPrizes,
        season: new Season(
            id: league.season.id,
            name: league.season.name,
            finYearId: league.season.finYearId,
            provinceId: league.season.provinceId,
            countryId: league.season.countryId,
            organisationIds: league.season.organisationIds,
            province: league.season.province,
            country: league.season.country,
            organisationTypeId: league.season.organisationTypeId,
            organisationId: league.season.organisationId,
            finYear: league.season.finYear),
        organisationCount: league.organisationCount,
        seasonPrizes: league.seasonPrizes
            .map((value) => DashboardItem(
                id: value.id,
                finYear: value.finYear,
                group: value.group,
                name: value.name,
                ordinal: value.ordinal,
                count: value.count,
                type: value.type,
                averageCount: value.averageCount,
                dateTimeStamp: value.dateTimeStamp,
                message: value.message,
                url: value.url,
                icon: value.icon,
                finYearMonth: value.finYearMonth,
                x: value.x,
                y: value.y,
                avgPaceMilliseconds: value.avgPaceMilliseconds,
                timeRecordString: value.timeRecordString,
                timeRecord: value.timeRecord,
                averagePace: value.averagePace,
                averagePaceString: value.averagePaceString,
                minValue: value.minValue,
                maxValue: value.maxValue,
                groupCount: value.groupCount,
                documentGuid: value.documentGuid,
                description: value.description,
                timeString: value.timeString,
                amount: value.amount,
                groupOrdinal: value.groupOrdinal,
                hasChild: value.hasChild,
                folder: value.folder,
                documentPath: value.documentPath,
                documentName: value.documentName,
                groupId: value.groupId,
                gender: value.gender))
            .toList(),
        seasonRules: league.seasonRules
            .map((value) => DashboardItem(
                id: value.id,
                finYear: value.finYear,
                group: value.group,
                name: value.name,
                ordinal: value.ordinal,
                count: value.count,
                type: value.type,
                averageCount: value.averageCount,
                dateTimeStamp: value.dateTimeStamp,
                message: value.message,
                url: value.url,
                icon: value.icon,
                finYearMonth: value.finYearMonth,
                x: value.x,
                y: value.y,
                avgPaceMilliseconds: value.avgPaceMilliseconds,
                timeRecordString: value.timeRecordString,
                timeRecord: value.timeRecord,
                averagePace: value.averagePace,
                averagePaceString: value.averagePaceString,
                minValue: value.minValue,
                maxValue: value.maxValue,
                groupCount: value.groupCount,
                documentGuid: value.documentGuid,
                description: value.description,
                timeString: value.timeString,
                amount: value.amount,
                groupOrdinal: value.groupOrdinal,
                hasChild: value.hasChild,
                folder: value.folder,
                documentPath: value.documentPath,
                documentName: value.documentName,
                groupId: value.groupId,
                gender: value.gender))
            .toList(),
        weightingFactors: league.weightingFactors
            .map((value) => DashboardItem(
                id: value.id,
                finYear: value.finYear,
                group: value.group,
                name: value.name,
                ordinal: value.ordinal,
                count: value.count,
                type: value.type,
                averageCount: value.averageCount,
                dateTimeStamp: value.dateTimeStamp,
                message: value.message,
                url: value.url,
                icon: value.icon,
                finYearMonth: value.finYearMonth,
                x: value.x,
                y: value.y,
                avgPaceMilliseconds: value.avgPaceMilliseconds,
                timeRecordString: value.timeRecordString,
                timeRecord: value.timeRecord,
                averagePace: value.averagePace,
                averagePaceString: value.averagePaceString,
                minValue: value.minValue,
                maxValue: value.maxValue,
                groupCount: value.groupCount,
                documentGuid: value.documentGuid,
                description: value.description,
                timeString: value.timeString,
                amount: value.amount,
                groupOrdinal: value.groupOrdinal,
                hasChild: value.hasChild,
                folder: value.folder,
                documentPath: value.documentPath,
                documentName: value.documentName,
                groupId: value.groupId,
                gender: value.gender))
            .toList(),
        seasonRaces: league.seasonRaces
            .map((value) => DashboardItem(
                id: value.id,
                finYear: value.finYear,
                group: value.group,
                name: value.name,
                ordinal: value.ordinal,
                count: value.count,
                type: value.type,
                averageCount: value.averageCount,
                dateTimeStamp: value.dateTimeStamp,
                message: value.message,
                url: value.url,
                icon: value.icon,
                finYearMonth: value.finYearMonth,
                x: value.x,
                y: value.y,
                avgPaceMilliseconds: value.avgPaceMilliseconds,
                timeRecordString: value.timeRecordString,
                timeRecord: value.timeRecord,
                averagePace: value.averagePace,
                averagePaceString: value.averagePaceString,
                minValue: value.minValue,
                maxValue: value.maxValue,
                groupCount: value.groupCount,
                documentGuid: value.documentGuid,
                description: value.description,
                timeString: value.timeString,
                amount: value.amount,
                groupOrdinal: value.groupOrdinal,
                hasChild: value.hasChild,
                folder: value.folder,
                documentPath: value.documentPath,
                documentName: value.documentName,
                groupId: value.groupId,
                gender: value.gender))
            .toList(),
        seasonDocuments: league.seasonDocuments
            .map((value) => SeasonDocument(
                id: value.id,
                seasonId: value.seasonId,
                isFeatured: value.isFeatured,
                documentName: value.documentName,
                seasonName: value.seasonName,
                documentPath: value.documentPath,
                documentGuid: value.documentGuid,
                folder: value.folder,
                ordinal: value.ordinal))
            .toList(),
        aggregateLogs: league.aggregateLogs
            .map((value) => DashboardItem(
                id: value.id,
                finYear: value.finYear,
                group: value.group,
                name: value.name,
                ordinal: value.ordinal,
                count: value.count,
                type: value.type,
                averageCount: value.averageCount,
                dateTimeStamp: value.dateTimeStamp,
                message: value.message,
                url: value.url,
                icon: value.icon,
                finYearMonth: value.finYearMonth,
                x: value.x,
                y: value.y,
                avgPaceMilliseconds: value.avgPaceMilliseconds,
                timeRecordString: value.timeRecordString,
                timeRecord: value.timeRecord,
                averagePace: value.averagePace,
                averagePaceString: value.averagePaceString,
                minValue: value.minValue,
                maxValue: value.maxValue,
                groupCount: value.groupCount,
                documentGuid: value.documentGuid,
                description: value.description,
                timeString: value.timeString,
                amount: value.amount,
                groupOrdinal: value.groupOrdinal,
                hasChild: value.hasChild,
                folder: value.folder,
                documentPath: value.documentPath,
                documentName: value.documentName,
                groupId: value.groupId,
                gender: value.gender))
            .toList(),
        documentPath: league.documentPath);
  }

  static final empty = League(
      totalPrizes: 0,
      season: new Season(
          id: 1,
          name: "",
          finYearId: 0,
          provinceId: 0,
          countryId: 0,
          organisationIds: [1, 2],
          province: "",
          country: "",
          organisationTypeId: 1,
          organisationId: 1,
          finYear: ""),
      organisationCount: 0,
      seasonPrizes: [],
      seasonRules: [],
      weightingFactors: [],
      seasonRaces: [],
      seasonDocuments: [],
      aggregateLogs: [],
      documentPath: "");

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

  @override
  List<Object?> get props => [
        totalPrizes,
        season,
        organisationCount,
        seasonPrizes,
        seasonRules,
        weightingFactors,
        seasonRaces,
        seasonDocuments,
        aggregateLogs,
        documentPath
      ];
  Map<String, dynamic> toJson() => _$LeagueToJson(this);

  League copyWith(
      {required double totalPrizes,
      required Season season,
      required int organisationCount,
      required List<DashboardItem> seasonPrizes,
      required List<DashboardItem> seasonRules,
      required List<DashboardItem> weightingFactors,
      required List<DashboardItem> seasonRaces,
      required List<SeasonDocument> seasonDocuments,
      required List<DashboardItem> aggregateLogs,
      required String documentPath}) {
    return League(
      totalPrizes: this.totalPrizes,
      season: this.season,
      organisationCount: this.organisationCount,
      seasonPrizes: this.seasonPrizes,
      seasonRules: this.seasonRules,
      weightingFactors: this.weightingFactors,
      seasonRaces: this.seasonRaces,
      seasonDocuments: this.seasonDocuments,
      aggregateLogs: this.aggregateLogs,
      documentPath: this.documentPath,
    );
  }
}
