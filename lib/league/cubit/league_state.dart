part of 'league_cubit.dart';

enum LeagueStatus { initial, loading, success, failure }

extension LeagueStatusX on LeagueStatus {
  bool get isInitial => this == LeagueStatus.initial;
  bool get isLoading => this == LeagueStatus.loading;
  bool get isSuccess => this == LeagueStatus.success;
  bool get isFailure => this == LeagueStatus.failure;
}

@JsonSerializable()
class LeagueState extends Equatable {
  LeagueState({
    this.status = LeagueStatus.initial,
    League? league,
  }) : league = league ?? League.empty;

  factory LeagueState.fromJson(Map<String, dynamic> json) =>
      _$LeagueStateFromJson(json);

  final LeagueStatus status;
  final League league;

  LeagueState copyWith({
    LeagueStatus? status,
    League? league,
  }) {
    return LeagueState(
      status: status ?? this.status,
      league: league ?? this.league,
    );
  }

  Map<String, dynamic> toJson() => _$LeagueStateToJson(this);

  @override
  List<Object?> get props => [status, league];
}
