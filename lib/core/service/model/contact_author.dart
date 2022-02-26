import 'package:json_annotation/json_annotation.dart';

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
class BaseContactAuthor extends RegionResponseModel {
  ContactAuthor? contactAuthor;
  BaseContactAuthor({this.contactAuthor});
  factory BaseContactAuthor.fromJson(Map<String, dynamic> json) {
    return _$BaseContactAuthorFromJson(json);
  }
}
