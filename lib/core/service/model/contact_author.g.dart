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

BaseResponseContactAuthor _$BaseResponseContactAuthorFromJson(
        Map<String, dynamic> json) =>
    BaseResponseContactAuthor(
      contact_author: json['contact_author'] == null
          ? null
          : ContactAuthor.fromJson(
              json['contact_author'] as Map<String, dynamic>),
    )
      ..baseModel = json['baseModel'] == null
          ? null
          : RegionModel.fromJson(json['baseModel'] as Map<String, dynamic>)
      ..currentConditions = json['currentConditions'] == null
          ? null
          : CurrentConditions.fromJson(
              json['currentConditions'] as Map<String, dynamic>)
      ..next_days = (json['next_days'] as List<dynamic>?)
          ?.map((e) => NextDay.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$BaseResponseContactAuthorToJson(
        BaseResponseContactAuthor instance) =>
    <String, dynamic>{
      'baseModel': instance.baseModel,
      'currentConditions': instance.currentConditions,
      'next_days': instance.next_days,
      'contact_author': instance.contact_author,
    };
