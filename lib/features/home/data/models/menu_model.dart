import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

int? _stringToInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  return null;
}

bool? _stringToBool(dynamic value) {
  if (value == null) return null;
  if (value is bool) return value;
  if (value is int) return value == 1;
  if (value is String) return value.toLowerCase() == 'true' || value == '1';
  return null;
}

@freezed
abstract class MenuModel with _$MenuModel {
  const factory MenuModel({
    @JsonKey(name: 'menus_id', fromJson: _stringToInt) int? menusId,
    @JsonKey(name: 'menus_name') String? menusName,
    @JsonKey(name: 'menus_url') String? menusUrl,
    @JsonKey(name: 'menus_pos') String? menusPos,
    @JsonKey(name: 'menus_priority', fromJson: _stringToInt) int? menusPriority,
    @JsonKey(name: 'menus_lan') String? menusLan,
    @JsonKey(name: 'menus_date') String? menusDate,
    @JsonKey(name: 'menus_active_header', fromJson: _stringToBool) bool? menusActiveHeader,
    @JsonKey(name: 'menus_active', fromJson: _stringToBool) bool? menusActive,
  }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);
}

@freezed
abstract class MenuResponse with _$MenuResponse {
  const factory MenuResponse({
    bool? success,
    List<MenuModel>? data,
    String? message,
  }) = _MenuResponse;

  factory MenuResponse.fromJson(Map<String, dynamic> json) =>
      _$MenuResponseFromJson(json);
}
