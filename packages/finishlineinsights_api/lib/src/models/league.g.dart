// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'league.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

League _$LeagueFromJson(Map<String, dynamic> json) => $checkedCreate(
      'League',
      json,
      ($checkedConvert) {
        final val = League(
          totalPrizes:
              $checkedConvert('total_prizes', (v) => (v as num).toDouble()),
          season: $checkedConvert(
              'season', (v) => Season.fromJson(v as Map<String, dynamic>)),
          organisationCount:
              $checkedConvert('organisation_count', (v) => v as int),
          seasonPrizes: $checkedConvert(
              'season_prizes',
              (v) => (v as List<dynamic>)
                  .map((e) => DashboardItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          seasonRules: $checkedConvert(
              'season_rules',
              (v) => (v as List<dynamic>)
                  .map((e) => DashboardItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          weightingFactors: $checkedConvert(
              'weighting_factors',
              (v) => (v as List<dynamic>)
                  .map((e) => DashboardItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          seasonRaces: $checkedConvert(
              'season_races',
              (v) => (v as List<dynamic>)
                  .map((e) => DashboardItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          seasonDocuments: $checkedConvert(
              'season_documents',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => SeasonDocument.fromJson(e as Map<String, dynamic>))
                  .toList()),
          aggregateLogs: $checkedConvert(
              'aggregate_logs',
              (v) => (v as List<dynamic>)
                  .map((e) => DashboardItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          documentPath: $checkedConvert('document_path', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalPrizes': 'total_prizes',
        'organisationCount': 'organisation_count',
        'seasonPrizes': 'season_prizes',
        'seasonRules': 'season_rules',
        'weightingFactors': 'weighting_factors',
        'seasonRaces': 'season_races',
        'seasonDocuments': 'season_documents',
        'aggregateLogs': 'aggregate_logs',
        'documentPath': 'document_path'
      },
    );
