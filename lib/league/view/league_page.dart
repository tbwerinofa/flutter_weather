import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/search/search.dart';
import 'package:flutter_weather/leaguesettings/settings.dart';
import 'package:flutter_weather/leaguetheme/theme.dart';
import 'package:flutter_weather/league/league.dart';
import 'package:league_repository/league_repository.dart';

class LeaguePage extends StatelessWidget {
  const LeaguePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LeagueCubit(context.read<LeagueRepository>()),
      child: const LeagueView(),
    );
  }
}

class LeagueView extends StatefulWidget {
  const LeagueView({super.key});

  @override
  State<LeagueView> createState() => _LeagueViewState();
}

class _LeagueViewState extends State<LeagueView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WPA League'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push<void>(
                SettingsPage.route(
                  context.read<LeagueCubit>(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: BlocConsumer<LeagueCubit, LeagueState>(
          listener: (context, state) {
            if (state.status.isSuccess) {
              context.read<LeagueThemeCubit>().updateTheme(state.league);
            }
          },
          builder: (context, state) {
            switch (state.status) {
              case LeagueStatus.initial:
                return const LeagueEmpty();
              case LeagueStatus.loading:
                return const LeagueLoading();
              case LeagueStatus.success:
                return LeaguePopulated(
                  league: state.league,
                  onRefresh: () {
                    return context.read<LeagueCubit>().refreshLeague();
                  },
                );
              case LeagueStatus.failure:
                return const LeagueError();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search, semanticLabel: 'Search'),
        onPressed: () async {
          final city = await Navigator.of(context).push(SearchPage.route());
          if (!mounted) return;
          await context.read<LeagueCubit>().fetchLeague(city);
        },
      ),
    );
  }
}
