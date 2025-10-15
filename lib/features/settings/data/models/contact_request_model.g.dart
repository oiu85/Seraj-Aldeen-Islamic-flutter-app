// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactRequestModel _$ContactRequestModelFromJson(Map<String, dynamic> json) =>
    _ContactRequestModel(
      senderName: json['sender_name'] as String,
      senderEmail: json['sender_email'] as String,
      senderPhone: json['sender_phone'] as String,
      senderCountry: json['sender_country'] as String,
      senderMessage: json['sender_message'] as String,
    );

Map<String, dynamic> _$ContactRequestModelToJson(
        _ContactRequestModel instance) =>
    <String, dynamic>{
      'sender_name': instance.senderName,
      'sender_email': instance.senderEmail,
      'sender_phone': instance.senderPhone,
      'sender_country': instance.senderCountry,
      'sender_message': instance.senderMessage,
    };
