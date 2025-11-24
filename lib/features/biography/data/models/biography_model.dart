import 'package:freezed_annotation/freezed_annotation.dart';

part 'biography_model.freezed.dart';
part 'biography_model.g.dart';

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

String? _dynamicToString(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is int) return value.toString();
  if (value is double) return value.toString();
  return value.toString();
}

@freezed
abstract class PageModel with _$PageModel {
  const factory PageModel({
    @JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
    @JsonKey(name: 'pages_title', fromJson: _dynamicToString) String? pagesTitle,
    @JsonKey(name: 'pages_menus', fromJson: _dynamicToString) String? pagesMenus,
    @JsonKey(name: 'pages_priority', fromJson: _stringToInt) int? pagesPriority,
    @JsonKey(name: 'pages_date', fromJson: _dynamicToString) String? pagesDate,
  }) = _PageModel;

  factory PageModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelFromJson(json);
}

@freezed
abstract class PaginationData with _$PaginationData {
  const factory PaginationData({
    @JsonKey(name: 'current_page') int? currentPage,
    List<PageModel>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    int? to,
    int? total,
  }) = _PaginationData;

  factory PaginationData.fromJson(Map<String, dynamic> json) =>
      _$PaginationDataFromJson(json);
}

@freezed
abstract class BiographyResponse with _$BiographyResponse {
  const factory BiographyResponse({
    bool? success,
    PaginationData? data,
    String? message,
  }) = _BiographyResponse;

  factory BiographyResponse.fromJson(Map<String, dynamic> json) =>
      _$BiographyResponseFromJson(json);
}

// Page Detail Models
@freezed
abstract class PageDetailResponse with _$PageDetailResponse {
  const factory PageDetailResponse({
    bool? success,
    PageDetail? data,
    String? message,
  }) = _PageDetailResponse;

  factory PageDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PageDetailResponseFromJson(json);
}

@freezed
abstract class PageDetail with _$PageDetail {
  const factory PageDetail({
    @JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
    @JsonKey(name: 'pages_menus', fromJson: _dynamicToString) String? pagesMenus,
    @JsonKey(name: 'pages_title', fromJson: _dynamicToString) String? pagesTitle,
    @JsonKey(name: 'pages_content', fromJson: _dynamicToString) String? pagesContent,
    @JsonKey(name: 'pages_lan', fromJson: _dynamicToString) String? pagesLan,
    @JsonKey(name: 'pages_visitor', fromJson: _stringToInt) int? pagesVisitor,
    @JsonKey(name: 'pages_priority', fromJson: _dynamicToString) String? pagesPriority,
    @JsonKey(name: 'pages_date', fromJson: _dynamicToString) String? pagesDate,
    @JsonKey(name: 'pages_active', fromJson: _stringToBool) bool? pagesActive,
  }) = _PageDetail;

  factory PageDetail.fromJson(Map<String, dynamic> json) =>
      _$PageDetailFromJson(json);
}

