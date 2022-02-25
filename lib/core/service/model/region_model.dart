import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class RegionModel {
  String? region;
  RegionModel({this.region});

  factory RegionModel.fromJson(Map<String, dynamic> json) =>
      RegionModel(region: json["region"]);

  Map<String, dynamic> toJson() => {"region": region};
}

class RegionResponseModel {
  RegionModel? baseModel;
  RegionResponseModel({this.baseModel});
  factory RegionResponseModel.fromJson(Map<String, dynamic> json) {
    return RegionResponseModel(
      baseModel: json["region"] == null
          ? null
          : RegionModel.fromJson(json["region"] as Map<String, dynamic>),
    );
  }
}
