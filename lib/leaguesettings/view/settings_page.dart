import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/league/league.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage._();

  static Route<void> route(LeagueCubit leagueCubit) {
    return MaterialPageRoute<void>(
      builder: (_) => BlocProvider.value(
        value: leagueCubit,
        child: const SettingsPage._(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: <Widget>[
          BlocBuilder<LeagueCubit, LeagueState>(
            builder: (context, state) {
              return ListTile(
                title: const Text('Temperature Units'),
                isThreeLine: true,
                subtitle: const Text(
                  'Use metric measurements for temperature units.',
                ),
                trailing: Switch(value: true, onChanged: (_) => {}),
              );
            },
          ),
        ],
      ),
    );
  }
}
