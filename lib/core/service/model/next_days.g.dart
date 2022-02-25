// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_days.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NextDays _$NextDaysFromJson(Map<String, dynamic> json) => NextDays(
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

Map<String, dynamic> _$NextDaysToJson(NextDays instance) => <String, dynamic>{
      'day': instance.day,
      'comment': instance.comment,
      'maxTemp': instance.maxTemp,
      'minTemp': instance.minTemp,
      'iconURL': instance.iconURL,
    };

BaseNextdaysModel _$BaseNextdaysModelFromJson(Map<String, dynamic> json) =>
    BaseNextdaysModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => NextDays.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..baseModel = json['baseModel'] == null
        ? null
        : RegionModel.fromJson(json['baseModel'] as Map<String, dynamic>);

Map<String, dynamic> _$BaseNextdaysModelToJson(BaseNextdaysModel instance) =>
    <String, dynamic>{
      'baseModel': instance.baseModel,
      'results': instance.results,
    };
