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
          documentPath: $checkedConvert('document_path', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalPrizes': 'total_prizes',
        'organisationCount': 'organisation_count',
        'documentPath': 'document_path'
      },
    );
