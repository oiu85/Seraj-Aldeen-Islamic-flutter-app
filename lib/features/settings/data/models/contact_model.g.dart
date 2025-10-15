// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactRequest _$ContactRequestFromJson(Map<String, dynamic> json) =>
    _ContactRequest(
      senderName: json['sender_name'] as String,
      senderEmail: json['sender_email'] as String,
      senderPhone: json['sender_phone'] as String,
      senderCountry: json['sender_country'] as String,
      senderMessage: json['sender_message'] as String,
    );

Map<String, dynamic> _$ContactRequestToJson(_ContactRequest instance) =>
    <String, dynamic>{
      'sender_name': instance.senderName,
      'sender_email': instance.senderEmail,
      'sender_phone': instance.senderPhone,
      'sender_country': instance.senderCountry,
      'sender_message': instance.senderMessage,
    };

_ContactResponse _$ContactResponseFromJson(Map<String, dynamic> json) =>
    _ContactResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$ContactResponseToJson(_ContactResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
