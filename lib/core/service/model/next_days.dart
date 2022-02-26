import 'package:json_annotation/json_annotation.dart';
import 'package:weather_api_test/core/service/model/current_conditions.dart';

import 'region_model.dart';
part 'next_days.g.dart';

@JsonSerializable()
class NextDay {
  String? day;
  String? comment;
  MaxTemp? maxTemp;
  MaxTemp? minTemp;
  String? iconURL;

  NextDay({this.day, this.comment, this.maxTemp, this.minTemp, this.iconURL});

  factory NextDay.fromJson(Map<String, dynamic> json) {
    return _$NextDayFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NextDayToJson(this);
  }
}

@JsonSerializable()
class MaxTemp {
  int? c;
  int? f;

  MaxTemp({this.c, this.f});

  factory MaxTemp.fromJson(Map<String, dynamic> json) {
    return _$MaxTempFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MaxTempToJson(this);
  }
}

@JsonSerializable()
class BaseResponseNextDay extends BaseResponseCurrentConditions {
  List<NextDay>? next_days;
  BaseResponseNextDay({this.next_days});
  factory BaseResponseNextDay.fromJson(Map<String, dynamic> json) {
    return _$BaseResponseNextDayFromJson(json);
  }
}
