import 'package:json_annotation/json_annotation.dart';

import 'region_model.dart';
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
class BaseNextdaysModel extends RegionResponseModel {
  List<NextDays>? results;
  BaseNextdaysModel({this.results});
  factory BaseNextdaysModel.fromJson(Map<String, dynamic> json) {
    return _$BaseNextdaysModelFromJson(json);
  }
}
