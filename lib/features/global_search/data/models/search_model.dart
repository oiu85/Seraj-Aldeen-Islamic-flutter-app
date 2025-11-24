import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_model.freezed.dart';
part 'search_model.g.dart';

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

String? _dynamicToString(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is int) return value.toString();
  if (value is double) return value.toString();
  return value.toString();
}

// Main Search Response
@freezed
abstract class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    bool? success,
    SearchData? data,
    String? message,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

// Search Data
@freezed
abstract class SearchData with _$SearchData {
  const factory SearchData({
    @JsonKey(fromJson: _dynamicToString) String? keyword,
    @JsonKey(name: 'search_type', fromJson: _dynamicToString) String? search_type,
    @JsonKey(name: 'sort_by', fromJson: _dynamicToString) String? sort_by,
    @JsonKey(fromJson: _dynamicToString) String? filters,
    @JsonKey(name: 'total_results', fromJson: _stringToInt) int? total_results,
    SearchResults? results,
  }) = _SearchData;

  factory SearchData.fromJson(Map<String, dynamic> json) =>
      _$SearchDataFromJson(json);
}

// Search Results (contains all categories)
@freezed
abstract class SearchResults with _$SearchResults {
  const factory SearchResults({
    SearchCategory? articles,
    SearchCategory? books,
    SearchCategory? videos,
    SearchCategory? sounds,
    SearchCategory? photo_galleries,
    SearchCategory? pages,
  }) = _SearchResults;

  factory SearchResults.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsFromJson(json);
}

// Search Category (wrapper for each type)
@freezed
abstract class SearchCategory with _$SearchCategory {
  const factory SearchCategory({
    List<SearchResultItem>? data,
    @JsonKey(fromJson: _stringToInt) int? count,
    @JsonKey(fromJson: _dynamicToString) String? label,
  }) = _SearchCategory;

  factory SearchCategory.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryFromJson(json);
}

// Search Result Item (unified model for all types)
@freezed
abstract class SearchResultItem with _$SearchResultItem {
  const factory SearchResultItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    @JsonKey(fromJson: _dynamicToString) String? title,
    @JsonKey(fromJson: _dynamicToString) String? summary,
    @JsonKey(fromJson: _dynamicToString) String? description,
    @JsonKey(fromJson: _dynamicToString) String? content,
    @JsonKey(fromJson: _dynamicToString) String? picture,
    @JsonKey(name: 'visitor_count', fromJson: _dynamicToString) String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    @JsonKey(fromJson: _dynamicToString) String? priority,
    @JsonKey(fromJson: _dynamicToString) String? date,
    SearchItemCategory? category,
    @JsonKey(fromJson: _dynamicToString) String? type,
    @JsonKey(name: 'type_label', fromJson: _dynamicToString) String? type_label,
    @JsonKey(name: 'relevance_score', fromJson: _stringToInt) int? relevance_score,
    // Sound-specific field
    @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString) String? sound_file_url,
    // Book-specific field
    @JsonKey(fromJson: _dynamicToString) String? file,
  }) = _SearchResultItem;

  factory SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$SearchResultItemFromJson(json);
}

// Category info in search results
@freezed
abstract class SearchItemCategory with _$SearchItemCategory {
  const factory SearchItemCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? cat_id,
    @JsonKey(name: 'cat_father_id', fromJson: _dynamicToString) String? cat_father_id,
    @JsonKey(name: 'cat_menus', fromJson: _dynamicToString) String? cat_menus,
    @JsonKey(name: 'cat_title', fromJson: _dynamicToString) String? cat_title,
    @JsonKey(name: 'cat_note', fromJson: _dynamicToString) String? cat_note,
    @JsonKey(name: 'cat_pic', fromJson: _dynamicToString) String? cat_pic,
    @JsonKey(name: 'cat_sup', fromJson: _dynamicToString) String? cat_sup,
    @JsonKey(name: 'cat_date', fromJson: _dynamicToString) String? cat_date,
    @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool) bool? cat_pic_active,
    @JsonKey(name: 'cat_lan', fromJson: _dynamicToString) String? cat_lan,
    @JsonKey(name: 'cat_pos', fromJson: _dynamicToString) String? cat_pos,
    @JsonKey(name: 'cat_active', fromJson: _stringToBool) bool? cat_active,
    @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool) bool? cat_show_menu,
    @JsonKey(name: 'cat_show_main', fromJson: _stringToBool) bool? cat_show_main,
    @JsonKey(name: 'cat_agent', fromJson: _dynamicToString) String? cat_agent,
  }) = _SearchItemCategory;

  factory SearchItemCategory.fromJson(Map<String, dynamic> json) =>
      _$SearchItemCategoryFromJson(json);
}

