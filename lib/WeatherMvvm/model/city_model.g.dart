// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      region: json['region'] as String?,
      currentConditions: json['currentConditions'] == null
          ? null
          : CurrentConditions.fromJson(
              json['currentConditions'] as Map<String, dynamic>),
      nextDays: (json['nextDays'] as List<dynamic>?)
          ?.map((e) => NextDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      contactAuthor: json['contactAuthor'] == null
          ? null
          : ContactAuthor.fromJson(
              json['contactAuthor'] as Map<String, dynamic>),
      dataSource: json['dataSource'] as String?,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'region': instance.region,
      'currentConditions': instance.currentConditions,
      'nextDays': instance.nextDays,
      'contactAuthor': instance.contactAuthor,
      'dataSource': instance.dataSource,
    };

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
      iconUrl: json['iconUrl'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$CurrentConditionsToJson(CurrentConditions instance) =>
    <String, dynamic>{
      'dayhour': instance.dayhour,
      'temp': instance.temp,
      'precip': instance.precip,
      'humidity': instance.humidity,
      'wind': instance.wind,
      'iconUrl': instance.iconUrl,
      'comment': instance.comment,
    };

NextDay _$NextDayFromJson(Map<String, dynamic> json) => NextDay(
      day: json['day'] as String?,
      comment: json['comment'] as String?,
      maxTemp: json['maxTemp'] == null
          ? null
          : Temp.fromJson(json['maxTemp'] as Map<String, dynamic>),
      minTemp: json['minTemp'] == null
          ? null
          : Temp.fromJson(json['minTemp'] as Map<String, dynamic>),
      iconUrl: json['iconUrl'] as String?,
    );

Map<String, dynamic> _$NextDayToJson(NextDay instance) => <String, dynamic>{
      'day': instance.day,
      'comment': instance.comment,
      'maxTemp': instance.maxTemp,
      'minTemp': instance.minTemp,
      'iconUrl': instance.iconUrl,
    };

BaseWeatherModel _$BaseWeatherModelFromJson(Map<String, dynamic> json) =>
    BaseWeatherModel(
      results: json['results'] == null
          ? null
          : Weather.fromJson(json['results'] as Map<String, dynamic>),
    )..baseModel = json['baseModel'] == null
        ? null
        : RegionModel.fromJson(json['baseModel'] as Map<String, dynamic>);

Map<String, dynamic> _$BaseWeatherModelToJson(BaseWeatherModel instance) =>
    <String, dynamic>{
      'baseModel': instance.baseModel,
      'results': instance.results,
    };
