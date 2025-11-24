// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biography_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PageModel _$PageModelFromJson(Map<String, dynamic> json) => _PageModel(
      pagesId: _stringToInt(json['pages_id']),
      pagesTitle: _dynamicToString(json['pages_title']),
      pagesMenus: _dynamicToString(json['pages_menus']),
      pagesPriority: _stringToInt(json['pages_priority']),
      pagesDate: _dynamicToString(json['pages_date']),
    );

Map<String, dynamic> _$PageModelToJson(_PageModel instance) =>
    <String, dynamic>{
      'pages_id': instance.pagesId,
      'pages_title': instance.pagesTitle,
      'pages_menus': instance.pagesMenus,
      'pages_priority': instance.pagesPriority,
      'pages_date': instance.pagesDate,
    };

_PaginationData _$PaginationDataFromJson(Map<String, dynamic> json) =>
    _PaginationData(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationDataToJson(_PaginationData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_BiographyResponse _$BiographyResponseFromJson(Map<String, dynamic> json) =>
    _BiographyResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : PaginationData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BiographyResponseToJson(_BiographyResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_PageDetailResponse _$PageDetailResponseFromJson(Map<String, dynamic> json) =>
    _PageDetailResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : PageDetail.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$PageDetailResponseToJson(_PageDetailResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_PageDetail _$PageDetailFromJson(Map<String, dynamic> json) => _PageDetail(
      pagesId: _stringToInt(json['pages_id']),
      pagesMenus: _dynamicToString(json['pages_menus']),
      pagesTitle: _dynamicToString(json['pages_title']),
      pagesContent: _dynamicToString(json['pages_content']),
      pagesLan: _dynamicToString(json['pages_lan']),
      pagesVisitor: _stringToInt(json['pages_visitor']),
      pagesPriority: _dynamicToString(json['pages_priority']),
      pagesDate: _dynamicToString(json['pages_date']),
      pagesActive: _stringToBool(json['pages_active']),
    );

Map<String, dynamic> _$PageDetailToJson(_PageDetail instance) =>
    <String, dynamic>{
      'pages_id': instance.pagesId,
      'pages_menus': instance.pagesMenus,
      'pages_title': instance.pagesTitle,
      'pages_content': instance.pagesContent,
      'pages_lan': instance.pagesLan,
      'pages_visitor': instance.pagesVisitor,
      'pages_priority': instance.pagesPriority,
      'pages_date': instance.pagesDate,
      'pages_active': instance.pagesActive,
    };
