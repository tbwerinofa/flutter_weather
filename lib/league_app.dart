import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/leaguetheme/theme.dart';
import 'package:flutter_weather/league/league.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:league_repository/league_repository.dart';

class LeagueApp extends StatelessWidget {
  const LeagueApp({super.key, required LeagueRepository leagueRepository})
      : _weatherRepository = leagueRepository;

  final LeagueRepository _weatherRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _weatherRepository,
      child: BlocProvider(
        create: (_) => LeagueThemeCubit(),
        child: const LeagueAppView(),
      ),
    );
  }
}

class LeagueAppView extends StatelessWidget {
  const LeagueAppView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<LeagueThemeCubit, Color>(
      builder: (context, color) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: color,
            textTheme: GoogleFonts.rajdhaniTextTheme(),
            appBarTheme: AppBarTheme(
              titleTextStyle: GoogleFonts.rajdhaniTextTheme(textTheme)
                  .apply(bodyColor: Colors.white)
                  .titleLarge,
            ),
          ),
          home: const LeaguePage(),
        );
      },
    );
  }
}
