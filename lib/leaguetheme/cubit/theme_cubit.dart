import 'package:flutter/material.dart';
import 'package:flutter_weather/league/league.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class LeagueThemeCubit extends HydratedCubit<Color> {
  LeagueThemeCubit() : super(defaultColor);

  static const defaultColor = Color(0xFF2196F3);

  void updateTheme(League? league) {
    if (league != null) emit(Colors.lightBlueAccent);
  }

  @override
  Color fromJson(Map<String, dynamic> json) {
    return Color(int.parse(json['color'] as String));
  }

  @override
  Map<String, dynamic> toJson(Color state) {
    return <String, String>{'color': '${state.value}'};
  }
}
