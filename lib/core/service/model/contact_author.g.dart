// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactAuthor _$ContactAuthorFromJson(Map<String, dynamic> json) =>
    ContactAuthor(
      email: json['email'] as String?,
      authNote: json['authNote'] as String?,
    );

Map<String, dynamic> _$ContactAuthorToJson(ContactAuthor instance) =>
    <String, dynamic>{
      'email': instance.email,
      'authNote': instance.authNote,
    };

BaseContactAuthor _$BaseContactAuthorFromJson(Map<String, dynamic> json) =>
    BaseContactAuthor(
      contactAuthor: json['contactAuthor'] == null
          ? null
          : ContactAuthor.fromJson(
              json['contactAuthor'] as Map<String, dynamic>),
    )
      ..day = json['day'] as String?
      ..comment = json['comment'] as String?
      ..maxTemp = json['maxTemp'] == null
          ? null
          : MaxTemp.fromJson(json['maxTemp'] as Map<String, dynamic>)
      ..minTemp = json['minTemp'] == null
          ? null
          : MaxTemp.fromJson(json['minTemp'] as Map<String, dynamic>)
      ..iconURL = json['iconURL'] as String?;

Map<String, dynamic> _$BaseContactAuthorToJson(BaseContactAuthor instance) =>
    <String, dynamic>{
      'day': instance.day,
      'comment': instance.comment,
      'maxTemp': instance.maxTemp,
      'minTemp': instance.minTemp,
      'iconURL': instance.iconURL,
      'contactAuthor': instance.contactAuthor,
    };
