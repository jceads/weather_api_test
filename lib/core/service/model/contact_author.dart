import 'package:json_annotation/json_annotation.dart';
import 'package:weather_api_test/core/service/model/current_conditions.dart';
import 'package:weather_api_test/core/service/model/next_days.dart';

import 'region_model.dart';

part 'contact_author.g.dart';

@JsonSerializable()
class ContactAuthor {
  String? email;
  String? authNote;

  ContactAuthor({this.email, this.authNote});

  factory ContactAuthor.fromJson(Map<String, dynamic> json) {
    return _$ContactAuthorFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ContactAuthorToJson(this);
  }
}

@JsonSerializable()
class BaseResponseContactAuthor extends BaseResponseNextDay {
  ContactAuthor? contact_author;
  BaseResponseContactAuthor({this.contact_author});
  factory BaseResponseContactAuthor.fromJson(Map<String, dynamic> json) {
    return _$BaseResponseContactAuthorFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$BaseResponseContactAuthorToJson(this);
  }
}
