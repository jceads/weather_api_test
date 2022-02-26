// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_days.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NextDay _$NextDayFromJson(Map<String, dynamic> json) => NextDay(
      day: json['day'] as String?,
      comment: json['comment'] as String?,
      maxTemp: json['maxTemp'] == null
          ? null
          : MaxTemp.fromJson(json['maxTemp'] as Map<String, dynamic>),
      minTemp: json['minTemp'] == null
          ? null
          : MaxTemp.fromJson(json['minTemp'] as Map<String, dynamic>),
      iconURL: json['iconURL'] as String?,
    );

Map<String, dynamic> _$NextDayToJson(NextDay instance) => <String, dynamic>{
      'day': instance.day,
      'comment': instance.comment,
      'maxTemp': instance.maxTemp,
      'minTemp': instance.minTemp,
      'iconURL': instance.iconURL,
    };

MaxTemp _$MaxTempFromJson(Map<String, dynamic> json) => MaxTemp(
      c: json['c'] as int?,
      f: json['f'] as int?,
    );

Map<String, dynamic> _$MaxTempToJson(MaxTemp instance) => <String, dynamic>{
      'c': instance.c,
      'f': instance.f,
    };

BaseResponseNextDay _$BaseResponseNextDayFromJson(Map<String, dynamic> json) =>
    BaseResponseNextDay(
      next_days: (json['next_days'] as List<dynamic>?)
          ?.map((e) => NextDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..baseModel = json['baseModel'] == null
          ? null
          : RegionModel.fromJson(json['baseModel'] as Map<String, dynamic>)
      ..currentConditions = json['currentConditions'] == null
          ? null
          : CurrentConditions.fromJson(
              json['currentConditions'] as Map<String, dynamic>);

Map<String, dynamic> _$BaseResponseNextDayToJson(
        BaseResponseNextDay instance) =>
    <String, dynamic>{
      'baseModel': instance.baseModel,
      'currentConditions': instance.currentConditions,
      'next_days': instance.next_days,
    };
