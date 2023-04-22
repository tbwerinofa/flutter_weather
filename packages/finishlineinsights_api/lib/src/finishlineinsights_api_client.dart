import 'dart:async';
import 'dart:convert';
import 'package:finishlineinsights_api/src/models/dashboarditem.dart';
import 'package:finishlineinsights_api/src/models/season.dart';
import 'package:http/http.dart' as http;
import 'package:finishlineinsights_api/finishlineinsights_api.dart';

/// Exception thrown when locationSearch fails.
class LeagueRequestFailure implements Exception {}

/// Exception thrown when the provided location is not found.
class LeagueNotFoundFailure implements Exception {}

/// Exception thrown when getWeather fails.
class WeatherRequestFailure implements Exception {}

/// {@template open_meteo_api_client}
/// Dart API Client which wraps the [Open Meteo API](https://www.finishlineinsights.com).
/// {@endtemplate}
class FinishLineInsightsApiClient {
  /// {@macro open_meteo_api_client}
  FinishLineInsightsApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrlGeocoding = 'www.finishlineinsights.com';

  final http.Client _httpClient;

  /// Finds a [League] `/v1/search/?name=(query)`.
  Future<League> leagueFetch() async {
    final leagueRequest = Uri.https(
      _baseUrlGeocoding,
      '/api/leaguerest/',
    );

    final leagueResponse = await _httpClient.get(leagueRequest, headers: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET,POST,PUT",
      "Access-Control-Allow-Headers": "X-Requested-With,content-type",
      "Access-Control-Allow-Credentials": "true"
    });

    if (leagueResponse.statusCode != 200) {
      throw LeagueRequestFailure();
    }

    final leagueJson = jsonDecode(leagueResponse.body) as Map;

/*
    if (!leagueJson.containsKey('results')) throw LeagueNotFoundFailure();

    final results = leagueJson['results'] as List;

    if (results.isEmpty) throw LeagueNotFoundFailure();
    */

    var seasonJson = leagueJson['season'];

    List<int> organisationIds = seasonJson['organisationIds']
        .map<int>((round) => round as int)
        .toList();

    Season season = Season(
        id: seasonJson['id'],
        name: seasonJson['name'],
        finYearId: seasonJson['finYearId'],
        provinceId: seasonJson['provinceId'],
        countryId: seasonJson['countryId'],
        organisationIds: organisationIds,
        province: seasonJson['province'],
        country: seasonJson['country'],
        organisationTypeId: seasonJson['organisationTypeId'],
        organisationId: seasonJson['organisationId'],
        finYear: (seasonJson['finYear']).toString());

    League league = League(
        totalPrizes: leagueJson['totalPrizes'],
        season: season,
        organisationCount: leagueJson['organisationCount'],
        //seasonPrizes: seasonPrizes,
        //seasonRules: seasonRules,
        //weightingFactors: weightingFactors,
        //seasonRaces: seasonRaces,
        //seasonDocuments: seasonDocuments,
        //aggregateLogs: aggregateLogs,
        documentPath: leagueJson['documentPath']);

    var resultSet = league;

    return resultSet;
  }
}
