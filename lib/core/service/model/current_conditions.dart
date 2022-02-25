import 'package:json_annotation/json_annotation.dart';
part 'current_conditions.g.dart';

@JsonSerializable()
class CurrentConditions {
  String? dayhour;
  Temp? temp;
  String? precip;
  String? humidity;
  Wind? wind;
  String? iconURL;
  String? comment;

  CurrentConditions(
      {this.dayhour,
      this.temp,
      this.precip,
      this.humidity,
      this.wind,
      this.iconURL,
      this.comment});

  factory CurrentConditions.fromJson(Map<String, dynamic> json) {
    return _$CurrentConditionsFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$CurrentConditionsToJson(this);
  }
}

@JsonSerializable()
class BaseCurrentConditionsModel {
  CurrentConditions? currentConditions;
  BaseCurrentConditionsModel({this.currentConditions});
  factory BaseCurrentConditionsModel.fromJson(Map<String, dynamic> json) {
    return BaseCurrentConditionsModel(
      currentConditions: json["currentConditions"] == null
          ? null
          : CurrentConditions.fromJson(
              json["currentConditions"] as Map<String, dynamic>),
    );
  }
}

@JsonSerializable()
class Temp {
  int? c;
  int? f;

  Temp({this.c, this.f});

  factory Temp.fromJson(Map<String, dynamic> json) {
    return _$TempFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TempToJson(this);
  }
}

@JsonSerializable()
class Wind {
  int? km;
  int? mile;

  Wind({this.km, this.mile});

  factory Wind.fromJson(Map<String, dynamic> json) {
    return _$WindFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$WindToJson(this);
  }
}
