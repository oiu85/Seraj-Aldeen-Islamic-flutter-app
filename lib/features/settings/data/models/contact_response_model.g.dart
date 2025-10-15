// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactResponseModel _$ContactResponseModelFromJson(
        Map<String, dynamic> json) =>
    _ContactResponseModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$ContactResponseModelToJson(
        _ContactResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
