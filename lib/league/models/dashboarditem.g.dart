// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboarditem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardItem _$DashboardItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DashboardItem',
      json,
      ($checkedConvert) {
        final val = DashboardItem(
          id: $checkedConvert('id', (v) => v as int),
          finYear: $checkedConvert('fin_year', (v) => v as int),
          group: $checkedConvert('group', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          ordinal: $checkedConvert('ordinal', (v) => v as int),
          count: $checkedConvert('count', (v) => v as int),
          type: $checkedConvert('type', (v) => v as String),
          averageCount:
              $checkedConvert('average_count', (v) => (v as num).toDouble()),
          dateTimeStamp: $checkedConvert('date_time_stamp', (v) => v as String),
          message: $checkedConvert('message', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          icon: $checkedConvert('icon', (v) => v as String),
          finYearMonth: $checkedConvert('fin_year_month', (v) => v as String),
          x: $checkedConvert('x', (v) => v as int),
          y: $checkedConvert('y', (v) => v as int),
          avgPaceMilliseconds: $checkedConvert(
              'avg_pace_milliseconds', (v) => (v as num).toDouble()),
          timeRecordString:
              $checkedConvert('time_record_string', (v) => v as String),
          timeRecord: $checkedConvert('time_record', (v) => v as String),
          averagePace: $checkedConvert('average_pace', (v) => v as String),
          averagePaceString:
              $checkedConvert('average_pace_string', (v) => v as String),
          minValue: $checkedConvert('min_value', (v) => v as int),
          maxValue: $checkedConvert('max_value', (v) => v as int),
          groupCount: $checkedConvert('group_count', (v) => v as int),
          documentGuid: $checkedConvert('document_guid', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          timeString: $checkedConvert('time_string', (v) => v as String),
          amount: $checkedConvert('amount', (v) => (v as num).toDouble()),
          groupOrdinal:
              $checkedConvert('group_ordinal', (v) => (v as num).toDouble()),
          hasChild: $checkedConvert('has_child', (v) => v as bool),
          folder: $checkedConvert('folder', (v) => v as String),
          documentPath: $checkedConvert('document_path', (v) => v as String),
          documentName: $checkedConvert('document_name', (v) => v as String),
          groupId: $checkedConvert('group_id', (v) => v as int),
          gender: $checkedConvert('gender', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'finYear': 'fin_year',
        'averageCount': 'average_count',
        'dateTimeStamp': 'date_time_stamp',
        'finYearMonth': 'fin_year_month',
        'avgPaceMilliseconds': 'avg_pace_milliseconds',
        'timeRecordString': 'time_record_string',
        'timeRecord': 'time_record',
        'averagePace': 'average_pace',
        'averagePaceString': 'average_pace_string',
        'minValue': 'min_value',
        'maxValue': 'max_value',
        'groupCount': 'group_count',
        'documentGuid': 'document_guid',
        'timeString': 'time_string',
        'groupOrdinal': 'group_ordinal',
        'hasChild': 'has_child',
        'documentPath': 'document_path',
        'documentName': 'document_name',
        'groupId': 'group_id'
      },
    );

Map<String, dynamic> _$DashboardItemToJson(DashboardItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fin_year': instance.finYear,
      'group': instance.group,
      'name': instance.name,
      'ordinal': instance.ordinal,
      'count': instance.count,
      'type': instance.type,
      'average_count': instance.averageCount,
      'date_time_stamp': instance.dateTimeStamp,
      'message': instance.message,
      'url': instance.url,
      'icon': instance.icon,
      'fin_year_month': instance.finYearMonth,
      'x': instance.x,
      'y': instance.y,
      'avg_pace_milliseconds': instance.avgPaceMilliseconds,
      'time_record_string': instance.timeRecordString,
      'time_record': instance.timeRecord,
      'average_pace': instance.averagePace,
      'average_pace_string': instance.averagePaceString,
      'min_value': instance.minValue,
      'max_value': instance.maxValue,
      'group_count': instance.groupCount,
      'document_guid': instance.documentGuid,
      'description': instance.description,
      'time_string': instance.timeString,
      'amount': instance.amount,
      'group_ordinal': instance.groupOrdinal,
      'has_child': instance.hasChild,
      'folder': instance.folder,
      'document_path': instance.documentPath,
      'document_name': instance.documentName,
      'group_id': instance.groupId,
      'gender': instance.gender,
    };
