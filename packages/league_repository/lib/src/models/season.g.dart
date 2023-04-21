// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Season _$SeasonFromJson(Map<String, dynamic> json) => Season(
      id: json['id'] as int,
      name: json['name'] as String,
      finYearId: json['finYearId'] as int,
      provinceId: json['provinceId'] as int,
      countryId: json['countryId'] as int,
      organisationIds: (json['organisationIds'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      province: json['province'] as String,
      country: json['country'] as String,
      organisationTypeId: json['organisationTypeId'] as int,
      organisationId: json['organisationId'] as int,
      finYear: json['finYear'] as String,
    );

Map<String, dynamic> _$SeasonToJson(Season instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'finYearId': instance.finYearId,
      'provinceId': instance.provinceId,
      'countryId': instance.countryId,
      'organisationIds': instance.organisationIds,
      'province': instance.province,
      'country': instance.country,
      'organisationTypeId': instance.organisationTypeId,
      'organisationId': instance.organisationId,
      'finYear': instance.finYear,
    };
