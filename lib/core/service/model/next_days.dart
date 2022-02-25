import 'package:json_annotation/json_annotation.dart';
import 'package:weather_api_test/core/service/model/current_conditions.dart';
part 'next_days.g.dart';

@JsonSerializable()
class NextDays {
  String? day;
  String? comment;
  MaxTemp? maxTemp;
  MaxTemp? minTemp;
  String? iconURL;

  NextDays({
    this.day,
    this.comment,
    this.maxTemp,
    this.minTemp,
    this.iconURL,
  });

  factory NextDays.fromJson(Map<String, dynamic> json) {
    return _$NextDaysFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NextDaysToJson(this);
  }
}

class MaxTemp {
  int? c;
  int? f;

  MaxTemp({this.c, this.f});

  MaxTemp.fromJson(Map<String, dynamic> json) {
    c = json['c'];
    f = json['f'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['c'] = c;
    data['f'] = f;
    return data;
  }
}

@JsonSerializable()
class BaseNextdaysModel extends BaseCurrentConditionsModel {
  List<NextDays>? results;
  BaseNextdaysModel({this.results});
  factory BaseNextdaysModel.fromJson(Map<String, dynamic> json) {
    return _$BaseNextdaysModelFromJson(json);
  }
}
