// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboarditem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardItem _$DashboardItemFromJson(Map<String, dynamic> json) =>
    DashboardItem(
      id: json['id'] as int,
      finYear: json['finYear'] as int,
      group: json['group'] as String,
      name: json['name'] as String,
      ordinal: json['ordinal'] as int,
      count: json['count'] as int,
      type: json['type'] as String,
      averageCount: (json['averageCount'] as num).toDouble(),
      dateTimeStamp: json['dateTimeStamp'] as String,
      message: json['message'] as String,
      url: json['url'] as String,
      icon: json['icon'] as String,
      finYearMonth: json['finYearMonth'] as String,
      x: json['x'] as int,
      y: json['y'] as int,
      avgPaceMilliseconds: (json['avgPaceMilliseconds'] as num).toDouble(),
      timeRecordString: json['timeRecordString'] as String,
      timeRecord: json['timeRecord'] as String,
      averagePace: json['averagePace'] as String,
      averagePaceString: json['averagePaceString'] as String,
      minValue: json['minValue'] as int,
      maxValue: json['maxValue'] as int,
      groupCount: json['groupCount'] as int,
      documentGuid: json['documentGuid'] as String,
      description: json['description'] as String,
      timeString: json['timeString'] as String,
      amount: (json['amount'] as num).toDouble(),
      groupOrdinal: (json['groupOrdinal'] as num).toDouble(),
      hasChild: json['hasChild'] as bool,
      folder: json['folder'] as String,
      documentPath: json['documentPath'] as String,
      documentName: json['documentName'] as String,
      groupId: json['groupId'] as int,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$DashboardItemToJson(DashboardItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'finYear': instance.finYear,
      'group': instance.group,
      'name': instance.name,
      'ordinal': instance.ordinal,
      'count': instance.count,
      'type': instance.type,
      'averageCount': instance.averageCount,
      'dateTimeStamp': instance.dateTimeStamp,
      'message': instance.message,
      'url': instance.url,
      'icon': instance.icon,
      'finYearMonth': instance.finYearMonth,
      'x': instance.x,
      'y': instance.y,
      'avgPaceMilliseconds': instance.avgPaceMilliseconds,
      'timeRecordString': instance.timeRecordString,
      'timeRecord': instance.timeRecord,
      'averagePace': instance.averagePace,
      'averagePaceString': instance.averagePaceString,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
      'groupCount': instance.groupCount,
      'documentGuid': instance.documentGuid,
      'description': instance.description,
      'timeString': instance.timeString,
      'amount': instance.amount,
      'groupOrdinal': instance.groupOrdinal,
      'hasChild': instance.hasChild,
      'folder': instance.folder,
      'documentPath': instance.documentPath,
      'documentName': instance.documentName,
      'groupId': instance.groupId,
      'gender': instance.gender,
    };
