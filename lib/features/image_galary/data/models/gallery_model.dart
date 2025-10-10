import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_model.freezed.dart';
part 'gallery_model.g.dart';

// NOTE: Custom converters for API response handling
bool? _stringToBool(dynamic value) {
  if (value == null) return null;
  if (value is bool) return value;
  if (value is int) return value == 1;
  if (value is String) return value.toLowerCase() == 'true' || value == '1';
  return null;
}

int? _stringToInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  return null;
}

@freezed
abstract class GalleryResponse with _$GalleryResponse {
  const factory GalleryResponse({
    bool? success,
    GalleryData? data,
    String? message,
  }) = _GalleryResponse;

  factory GalleryResponse.fromJson(Map<String, dynamic> json) =>
      _$GalleryResponseFromJson(json);
}

@freezed
abstract class GalleryData with _$GalleryData {
  const factory GalleryData({
    String? type,
    List<GalleryCategory>? categories,
    GalleryPaginationData? pagination,
  }) = _GalleryData;

  factory GalleryData.fromJson(Map<String, dynamic> json) =>
      _$GalleryDataFromJson(json);
}

@freezed
abstract class GalleryCategory with _$GalleryCategory {
  const factory GalleryCategory({
    @JsonKey(fromJson: _stringToInt) int? id,
    String? title,
    String? note,
    String? position,
    String? language,
    String? date,
    String? menu_id,
    @JsonKey(fromJson: _stringToBool) bool? show_in_menu,
    @JsonKey(fromJson: _stringToBool) bool? show_in_main,
    @JsonKey(fromJson: _stringToInt) int? content_count,
    String? type,
    List<GalleryItem>? data,
  }) = _GalleryCategory;

  factory GalleryCategory.fromJson(Map<String, dynamic> json) =>
      _$GalleryCategoryFromJson(json);
}

@freezed
abstract class GalleryItem with _$GalleryItem {
  const factory GalleryItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    String? title,
    String? summary,
    String? date,
    String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    dynamic priority,
    String? picture,
    String? photo_gallery_pic_thumbnail_url,
    String? photo_gallery_pic_full_url,
  }) = _GalleryItem;

  factory GalleryItem.fromJson(Map<String, dynamic> json) =>
      _$GalleryItemFromJson(json);
}

@freezed
abstract class GalleryPaginationData with _$GalleryPaginationData {
  const factory GalleryPaginationData({
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'total_categories', fromJson: _stringToInt) int? totalCategories,
    @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
    @JsonKey(name: 'has_next_page', fromJson: _stringToBool) bool? hasNextPage,
    @JsonKey(name: 'has_previous_page', fromJson: _stringToBool) bool? hasPreviousPage,
    @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
    @JsonKey(name: 'previous_page', fromJson: _stringToInt) int? previousPage,
  }) = _GalleryPaginationData;

  factory GalleryPaginationData.fromJson(Map<String, dynamic> json) =>
      _$GalleryPaginationDataFromJson(json);
}

// Category Content Models
@freezed
abstract class CategoryContentResponse with _$CategoryContentResponse {
  const factory CategoryContentResponse({
    bool? success,
    CategoryContentData? data,
    String? message,
  }) = _CategoryContentResponse;

  factory CategoryContentResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryContentResponseFromJson(json);
}

@freezed
abstract class CategoryContentData with _$CategoryContentData {
  const factory CategoryContentData({
    CategoryInfo? category,
    List<GalleryItem>? content,
    ContentPagination? pagination,
  }) = _CategoryContentData;

  factory CategoryContentData.fromJson(Map<String, dynamic> json) =>
      _$CategoryContentDataFromJson(json);
}

@freezed
abstract class CategoryInfo with _$CategoryInfo {
  const factory CategoryInfo({
    @JsonKey(fromJson: _stringToInt) int? id,
    String? title,
    String? note,
    String? type,
    String? position,
    String? language,
  }) = _CategoryInfo;

  factory CategoryInfo.fromJson(Map<String, dynamic> json) =>
      _$CategoryInfoFromJson(json);
}

@freezed
abstract class ContentPagination with _$ContentPagination {
  const factory ContentPagination({
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'total_items', fromJson: _stringToInt) int? totalItems,
    @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
    @JsonKey(name: 'has_next_page', fromJson: _stringToBool) bool? hasNextPage,
    @JsonKey(name: 'has_previous_page', fromJson: _stringToBool) bool? hasPreviousPage,
    @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
    @JsonKey(name: 'previous_page', fromJson: _stringToInt) int? previousPage,
  }) = _ContentPagination;

  factory ContentPagination.fromJson(Map<String, dynamic> json) =>
      _$ContentPaginationFromJson(json);
}

