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
    )..baseModel = json['baseModel'] == null
        ? null
        : RegionModel.fromJson(json['baseModel'] as Map<String, dynamic>);

Map<String, dynamic> _$BaseContactAuthorToJson(BaseContactAuthor instance) =>
    <String, dynamic>{
      'baseModel': instance.baseModel,
      'contactAuthor': instance.contactAuthor,
    };
