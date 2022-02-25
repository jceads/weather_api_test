// To parse this JSON data, do
//
//     final weather = weatherFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'city_model.g.dart';

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));

String weatherToJson(Weather data) => json.encode(data.toJson());

@JsonSerializable()
class Weather {
  Weather({
    this.region,
    this.currentConditions,
    // this.nextDays,
    this.contactAuthor,
    this.dataSource,
  });

  String? region;
  CurrentConditions? currentConditions;
  // List<NextDay>? nextDays;
  ContactAuthor? contactAuthor;
  String? dataSource;

  factory Weather.fromJson(Map<String, dynamic> json) {
    return _$WeatherFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$WeatherToJson(this);
  }
}

class ContactAuthor {
  ContactAuthor({
    this.email,
    this.authNote,
  });

  String? email;
  String? authNote;

  factory ContactAuthor.fromJson(Map<String, dynamic> json) => ContactAuthor(
        email: json["email"],
        authNote: json["auth_note"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "auth_note": authNote,
      };
}

@JsonSerializable()
class CurrentConditions {
  CurrentConditions({
    this.dayhour,
    this.temp,
    this.precip,
    this.humidity,
    this.wind,
    this.iconUrl,
    this.comment,
  });

  String? dayhour;
  Temp? temp;
  String? precip;
  String? humidity;
  Wind? wind;
  String? iconUrl;
  String? comment;

  factory CurrentConditions.fromJson(Map<String, dynamic> json) {
    return _$CurrentConditionsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CurrentConditionsToJson(this);
  }
}

class Temp {
  Temp({
    this.c,
    this.f,
  });

  int? c;
  int? f;

  factory Temp.fromJson(Map<String, dynamic> json) => Temp(
        c: json["c"],
        f: json["f"],
      );

  Map<String, dynamic> toJson() => {
        "c": c,
        "f": f,
      };
}

class Wind {
  Wind({
    this.km,
    this.mile,
  });

  int? km;
  int? mile;

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        km: json["km"],
        mile: json["mile"],
      );

  Map<String, dynamic> toJson() => {
        "km": km,
        "mile": mile,
      };
}

@JsonSerializable()
class NextDay {
  NextDay({
    this.day,
    this.comment,
    this.maxTemp,
    this.minTemp,
    this.iconUrl,
  });

  String? day;
  String? comment;
  Temp? maxTemp;
  Temp? minTemp;
  String? iconUrl;

  factory NextDay.fromJson(Map<String, dynamic> json) {
    return _$NextDayFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$NextDayToJson(this);
  }
}

@JsonSerializable()
class BaseResponseModel {
  List<Weather>? results;
  BaseResponseModel({this.results});
  factory BaseResponseModel.fromJson(Map<String, dynamic> json) {
    return _$BaseResponseModelFromJson(json);
  }
}
