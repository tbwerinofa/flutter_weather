// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

League _$LeagueFromJson(Map<String, dynamic> json) => League(
      totalPrizes: (json['totalPrizes'] as num).toDouble(),
      season: Season.fromJson(json['season'] as Map<String, dynamic>),
      organisationCount: json['organisationCount'] as int,
      documentPath: json['documentPath'] as String,
    );

Map<String, dynamic> _$LeagueToJson(League instance) => <String, dynamic>{
      'totalPrizes': instance.totalPrizes,
      'season': instance.season,
      'organisationCount': instance.organisationCount,
      'documentPath': instance.documentPath,
    };
