// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

League _$LeagueFromJson(Map<String, dynamic> json) => League(
      totalPrizes: (json['totalPrizes'] as num).toDouble(),
      season: Season.fromJson(json['season'] as Map<String, dynamic>),
      organisationCount: json['organisationCount'] as int,
      seasonPrizes: (json['seasonPrizes'] as List<dynamic>)
          .map((e) => DashboardItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      seasonRules: (json['seasonRules'] as List<dynamic>)
          .map((e) => DashboardItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      weightingFactors: (json['weightingFactors'] as List<dynamic>)
          .map((e) => DashboardItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      seasonRaces: (json['seasonRaces'] as List<dynamic>)
          .map((e) => DashboardItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      seasonDocuments: (json['seasonDocuments'] as List<dynamic>)
          .map((e) => SeasonDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
      aggregateLogs: (json['aggregateLogs'] as List<dynamic>)
          .map((e) => DashboardItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      documentPath: json['documentPath'] as String,
    );

Map<String, dynamic> _$LeagueToJson(League instance) => <String, dynamic>{
      'totalPrizes': instance.totalPrizes,
      'season': instance.season,
      'organisationCount': instance.organisationCount,
      'seasonPrizes': instance.seasonPrizes,
      'seasonRules': instance.seasonRules,
      'weightingFactors': instance.weightingFactors,
      'seasonRaces': instance.seasonRaces,
      'seasonDocuments': instance.seasonDocuments,
      'aggregateLogs': instance.aggregateLogs,
      'documentPath': instance.documentPath,
    };
