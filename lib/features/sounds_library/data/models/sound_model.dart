import 'package:freezed_annotation/freezed_annotation.dart';

part 'sound_model.freezed.dart';
part 'sound_model.g.dart';

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
abstract class SoundResponse with _$SoundResponse {
  const factory SoundResponse({
    bool? success,
    SoundData? data,
    String? message,
  }) = _SoundResponse;

  factory SoundResponse.fromJson(Map<String, dynamic> json) =>
      _$SoundResponseFromJson(json);
}

@freezed
abstract class SoundData with _$SoundData {
  const factory SoundData({
    String? type,
    List<SoundCategory>? categories,
    SoundPaginationData? pagination,
    List<PageInfo>? pages,
  }) = _SoundData;

  factory SoundData.fromJson(Map<String, dynamic> json) =>
      _$SoundDataFromJson(json);
}

@freezed
abstract class SoundCategory with _$SoundCategory {
  const factory SoundCategory({
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
    List<SoundItem>? data,
  }) = _SoundCategory;

  factory SoundCategory.fromJson(Map<String, dynamic> json) =>
      _$SoundCategoryFromJson(json);
}

@freezed
abstract class SoundItem with _$SoundItem {
  const factory SoundItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    String? title,
    String? summary,
    String? date,
    String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    String? priority,
    String? file,
    String? sound_file_url,
  }) = _SoundItem;

  factory SoundItem.fromJson(Map<String, dynamic> json) =>
      _$SoundItemFromJson(json);
}

@freezed
abstract class SoundPaginationData with _$SoundPaginationData {
  const factory SoundPaginationData({
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'total_categories', fromJson: _stringToInt) int? totalCategories,
    @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
    @JsonKey(name: 'has_next_page', fromJson: _stringToBool) bool? hasNextPage,
    @JsonKey(name: 'has_previous_page', fromJson: _stringToBool) bool? hasPreviousPage,
    @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
    @JsonKey(name: 'previous_page', fromJson: _stringToInt) int? previousPage,
  }) = _SoundPaginationData;

  factory SoundPaginationData.fromJson(Map<String, dynamic> json) =>
      _$SoundPaginationDataFromJson(json);
}

@freezed
abstract class PageInfo with _$PageInfo {
  const factory PageInfo({
    @JsonKey(fromJson: _stringToInt) int? id,
    String? title,
    String? content,
    String? language,
    String? visitor_count,
    String? priority,
    String? date,
    String? menu_id,
    String? type,
  }) = _PageInfo;

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
}

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
    List<SoundItem>? content,
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

// Audio Book Subcategories Models
@freezed
abstract class AudioBookSubcategoriesResponse with _$AudioBookSubcategoriesResponse {
  const factory AudioBookSubcategoriesResponse({
    bool? success,
    AudioBookSubcategoriesData? data,
    String? message,
  }) = _AudioBookSubcategoriesResponse;

  factory AudioBookSubcategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$AudioBookSubcategoriesResponseFromJson(json);
}

@freezed
abstract class AudioBookSubcategoriesData with _$AudioBookSubcategoriesData {
  const factory AudioBookSubcategoriesData({
    @JsonKey(name: 'parent_category') CategoryInfo? parentCategory,
    List<AudioBookSubcategory>? subcategories,
  }) = _AudioBookSubcategoriesData;

  factory AudioBookSubcategoriesData.fromJson(Map<String, dynamic> json) =>
      _$AudioBookSubcategoriesDataFromJson(json);
}

@freezed
abstract class AudioBookSubcategory with _$AudioBookSubcategory {
  const factory AudioBookSubcategory({
    @JsonKey(fromJson: _stringToInt) int? id,
    String? title,
    String? note,
    String? position,
    String? language,
    String? date,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'show_in_menu', fromJson: _stringToBool) bool? showInMenu,
    @JsonKey(name: 'show_in_main', fromJson: _stringToBool) bool? showInMain,
    @JsonKey(name: 'content_count', fromJson: _stringToInt) int? contentCount,
  }) = _AudioBookSubcategory;

  factory AudioBookSubcategory.fromJson(Map<String, dynamic> json) =>
      _$AudioBookSubcategoryFromJson(json);
}
