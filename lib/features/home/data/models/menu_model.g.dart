// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MenuModel _$MenuModelFromJson(Map<String, dynamic> json) => _MenuModel(
      menusId: _stringToInt(json['menus_id']),
      menusName: _dynamicToString(json['menus_name']),
      menusUrl: _dynamicToString(json['menus_url']),
      menusPos: _dynamicToString(json['menus_pos']),
      menusPriority: _stringToInt(json['menus_priority']),
      menusLan: _dynamicToString(json['menus_lan']),
      menusDate: _dynamicToString(json['menus_date']),
      menusActiveHeader: _stringToBool(json['menus_active_header']),
      menusActive: _stringToBool(json['menus_active']),
    );

Map<String, dynamic> _$MenuModelToJson(_MenuModel instance) =>
    <String, dynamic>{
      'menus_id': instance.menusId,
      'menus_name': instance.menusName,
      'menus_url': instance.menusUrl,
      'menus_pos': instance.menusPos,
      'menus_priority': instance.menusPriority,
      'menus_lan': instance.menusLan,
      'menus_date': instance.menusDate,
      'menus_active_header': instance.menusActiveHeader,
      'menus_active': instance.menusActive,
    };

_MenuResponse _$MenuResponseFromJson(Map<String, dynamic> json) =>
    _MenuResponse(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MenuModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$MenuResponseToJson(_MenuResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
