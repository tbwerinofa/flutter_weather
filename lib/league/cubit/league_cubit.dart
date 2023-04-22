import 'package:equatable/equatable.dart';
import 'package:flutter_weather/league/league.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:league_repository/league_repository.dart' show LeagueRepository;

part 'league_cubit.g.dart';
part 'league_state.dart';

class LeagueCubit extends HydratedCubit<LeagueState> {
  LeagueCubit(this._leagueRepository) : super(LeagueState());

  final LeagueRepository _leagueRepository;

  Future<void> fetchLeague(String? city) async {
    if (city == null || city.isEmpty) return;
    print('test 1');
    emit(state.copyWith(status: LeagueStatus.loading));

    try {
      final league = League.fromRepository(
        await _leagueRepository.getLeague(),
      );
      print('finish');
      emit(
        state.copyWith(
          status: LeagueStatus.success,
          league: league.copyWith(
            totalPrizes: league.totalPrizes,
            season: league.season,
            organisationCount: league.organisationCount,
            /*seasonPrizes: league.seasonPrizes,
            seasonRules: league.seasonRules,
            weightingFactors: league.weightingFactors,
            seasonRaces: league.seasonRaces,
            seasonDocuments: league.seasonDocuments,
            aggregateLogs: league.aggregateLogs,*/
            documentPath: league.documentPath,
          ),
        ),
      );
    } catch (e) {
      print(e);
      emit(state.copyWith(status: LeagueStatus.failure));
    }
  }

  Future<void> refreshLeague() async {
    if (!state.status.isSuccess) return;
    if (state.league == League.empty) return;
    try {
      final league = League.fromRepository(
        await _leagueRepository.getLeague(),
      );

      emit(
        state.copyWith(
          status: LeagueStatus.success,
          league: league.copyWith(
            totalPrizes: league.totalPrizes,
            season: league.season,
            organisationCount: league.organisationCount,
            /*seasonPrizes: league.seasonPrizes,
            seasonRules: league.seasonRules,
            weightingFactors: league.weightingFactors,
            seasonRaces: league.seasonRaces,
            seasonDocuments: league.seasonDocuments,
            aggregateLogs: league.aggregateLogs,*/
            documentPath: league.documentPath,
          ),
        ),
      );
    } on Exception {
      emit(state);
    }
  }

  @override
  LeagueState fromJson(Map<String, dynamic> json) => LeagueState.fromJson(json);

  @override
  Map<String, dynamic> toJson(LeagueState state) => state.toJson();
}
