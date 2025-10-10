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
    String? keyword,
    String? search_type,
    String? sort_by,
    String? filters,
    @JsonKey(fromJson: _stringToInt) int? total_results,
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
    String? label,
  }) = _SearchCategory;

  factory SearchCategory.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryFromJson(json);
}

// Search Result Item (unified model for all types)
@freezed
abstract class SearchResultItem with _$SearchResultItem {
  const factory SearchResultItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    String? title,
    String? summary,
    String? description,
    String? content,
    String? picture,
    String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    String? priority,
    String? date,
    SearchItemCategory? category,
    String? type,
    String? type_label,
    @JsonKey(fromJson: _stringToInt) int? relevance_score,
    // Sound-specific field
    String? sound_file_url,
    // Book-specific field
    String? file,
  }) = _SearchResultItem;

  factory SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$SearchResultItemFromJson(json);
}

// Category info in search results
@freezed
abstract class SearchItemCategory with _$SearchItemCategory {
  const factory SearchItemCategory({
    @JsonKey(fromJson: _stringToInt) int? cat_id,
    String? cat_father_id,
    String? cat_menus,
    String? cat_title,
    String? cat_note,
    String? cat_pic,
    String? cat_sup,
    String? cat_date,
    @JsonKey(fromJson: _stringToBool) bool? cat_pic_active,
    String? cat_lan,
    String? cat_pos,
    @JsonKey(fromJson: _stringToBool) bool? cat_active,
    @JsonKey(fromJson: _stringToBool) bool? cat_show_menu,
    @JsonKey(fromJson: _stringToBool) bool? cat_show_main,
    String? cat_agent,
  }) = _SearchItemCategory;

  factory SearchItemCategory.fromJson(Map<String, dynamic> json) =>
      _$SearchItemCategoryFromJson(json);
}

