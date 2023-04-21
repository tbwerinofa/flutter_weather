// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Season _$SeasonFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Season',
      json,
      ($checkedConvert) {
        final val = Season(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          finYearId: $checkedConvert('fin_year_id', (v) => v as int),
          provinceId: $checkedConvert('province_id', (v) => v as int),
          countryId: $checkedConvert('country_id', (v) => v as int),
          organisationIds: $checkedConvert('organisation_ids',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
          province: $checkedConvert('province', (v) => v as String),
          country: $checkedConvert('country', (v) => v as String),
          organisationTypeId:
              $checkedConvert('organisation_type_id', (v) => v as int),
          organisationId: $checkedConvert('organisation_id', (v) => v as int),
          finYear: $checkedConvert('fin_year', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'finYearId': 'fin_year_id',
        'provinceId': 'province_id',
        'countryId': 'country_id',
        'organisationIds': 'organisation_ids',
        'organisationTypeId': 'organisation_type_id',
        'organisationId': 'organisation_id',
        'finYear': 'fin_year'
      },
    );
