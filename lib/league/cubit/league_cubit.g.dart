// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueState _$LeagueStateFromJson(Map<String, dynamic> json) => $checkedCreate(
      'LeagueState',
      json,
      ($checkedConvert) {
        final val = LeagueState(
          status: $checkedConvert(
              'status',
              (v) =>
                  $enumDecodeNullable(_$LeagueStatusEnumMap, v) ??
                  LeagueStatus.initial),
          league: $checkedConvert(
              'league',
              (v) => v == null
                  ? null
                  : League.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$LeagueStateToJson(LeagueState instance) =>
    <String, dynamic>{
      'status': _$LeagueStatusEnumMap[instance.status]!,
      'league': instance.league.toJson(),
    };

const _$LeagueStatusEnumMap = {
  LeagueStatus.initial: 'initial',
  LeagueStatus.loading: 'loading',
  LeagueStatus.success: 'success',
  LeagueStatus.failure: 'failure',
};
