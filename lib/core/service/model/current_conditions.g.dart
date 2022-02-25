// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_conditions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentConditions _$CurrentConditionsFromJson(Map<String, dynamic> json) =>
    CurrentConditions(
      dayhour: json['dayhour'] as String?,
      temp: json['temp'] == null
          ? null
          : Temp.fromJson(json['temp'] as Map<String, dynamic>),
      precip: json['precip'] as String?,
      humidity: json['humidity'] as String?,
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      iconURL: json['iconURL'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$CurrentConditionsToJson(CurrentConditions instance) =>
    <String, dynamic>{
      'dayhour': instance.dayhour,
      'temp': instance.temp,
      'precip': instance.precip,
      'humidity': instance.humidity,
      'wind': instance.wind,
      'iconURL': instance.iconURL,
      'comment': instance.comment,
    };

Temp _$TempFromJson(Map<String, dynamic> json) => Temp(
      c: json['c'] as int?,
      f: json['f'] as int?,
    );

Map<String, dynamic> _$TempToJson(Temp instance) => <String, dynamic>{
      'c': instance.c,
      'f': instance.f,
    };

Wind _$WindFromJson(Map<String, dynamic> json) => Wind(
      km: json['km'] as int?,
      mile: json['mile'] as int?,
    );

Map<String, dynamic> _$WindToJson(Wind instance) => <String, dynamic>{
      'km': instance.km,
      'mile': instance.mile,
    };

BaseCurrentConditionsModel _$BaseCurrentConditionsModelFromJson(
        Map<String, dynamic> json) =>
    BaseCurrentConditionsModel(
      currentConditions: json['currentConditions'] == null
          ? null
          : CurrentConditions.fromJson(
              json['currentConditions'] as Map<String, dynamic>),
    )..baseModel = json['baseModel'] == null
        ? null
        : RegionModel.fromJson(json['baseModel'] as Map<String, dynamic>);

Map<String, dynamic> _$BaseCurrentConditionsModelToJson(
        BaseCurrentConditionsModel instance) =>
    <String, dynamic>{
      'baseModel': instance.baseModel,
      'currentConditions': instance.currentConditions,
    };
