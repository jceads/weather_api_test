import 'package:json_annotation/json_annotation.dart';
import 'package:weather_api_test/core/service/model/next_days.dart';

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
class BaseContactAuthor extends NextDays {
  ContactAuthor? contactAuthor;
  BaseContactAuthor({this.contactAuthor});
  factory BaseContactAuthor.fromJson(Map<String, dynamic> json) {
    return _$BaseContactAuthorFromJson(json);
  }
}
