import 'package:json_annotation/json_annotation.dart';

part 'dashboarditem.g.dart';

@JsonSerializable()
class DashboardItem {
  const DashboardItem({
    required this.id,
    required this.finYear,
    required this.group,
    required this.name,
    required this.ordinal,
    required this.count,
    required this.type,
    required this.averageCount,
    required this.dateTimeStamp,
    required this.message,
    required this.url,
    required this.icon,
    required this.finYearMonth,
    required this.x,
    required this.y,
    required this.avgPaceMilliseconds,
    required this.timeRecordString,
    required this.timeRecord,
    required this.averagePace,
    required this.averagePaceString,
    required this.minValue,
    required this.maxValue,
    required this.groupCount,
    required this.documentGuid,
    required this.description,
    required this.timeString,
    required this.amount,
    required this.groupOrdinal,
    required this.hasChild,
    required this.folder,
    required this.documentPath,
    required this.documentName,
    required this.groupId,
    required this.gender,
  });

  factory DashboardItem.fromJson(Map<String, dynamic> json) =>
      _$DashboardItemFromJson(json);

  final int id;
  final int finYear;
  final String group;
  final String name;
  final int ordinal;
  final int count;
  final String type;
  final double averageCount;
  final String dateTimeStamp;
  final String message;
  final String url;
  final String icon;
  final String finYearMonth;
  final int x;
  final int y;
  final double avgPaceMilliseconds;
  final String timeRecordString;
  final String timeRecord;
  final String averagePace;
  final String averagePaceString;
  final int minValue;
  final int maxValue;
  final int groupCount;
  final String documentGuid;
  final String description;
  final String timeString;
  final double amount;
  final double groupOrdinal;
  final bool hasChild;
  final String folder;
  final String documentPath;
  final String documentName;
  final int groupId;
  final String gender;
}
