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

String? _dynamicToString(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is int) return value.toString();
  if (value is double) return value.toString();
  return value.toString();
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
    @JsonKey(fromJson: _dynamicToString) String? type,
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
    @JsonKey(fromJson: _dynamicToString) String? title,
    @JsonKey(fromJson: _dynamicToString) String? note,
    @JsonKey(fromJson: _dynamicToString) String? position,
    @JsonKey(fromJson: _dynamicToString) String? language,
    @JsonKey(fromJson: _dynamicToString) String? date,
    @JsonKey(name: 'menu_id', fromJson: _dynamicToString) String? menu_id,
    @JsonKey(fromJson: _stringToBool) bool? show_in_menu,
    @JsonKey(fromJson: _stringToBool) bool? show_in_main,
    @JsonKey(fromJson: _stringToInt) int? content_count,
    @JsonKey(fromJson: _dynamicToString) String? type,
    List<SoundItem>? data,
  }) = _SoundCategory;

  factory SoundCategory.fromJson(Map<String, dynamic> json) =>
      _$SoundCategoryFromJson(json);
}

@freezed
abstract class SoundItem with _$SoundItem {
  const factory SoundItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    @JsonKey(fromJson: _dynamicToString) String? title,
    @JsonKey(fromJson: _dynamicToString) String? summary,
    @JsonKey(fromJson: _dynamicToString) String? date,
    @JsonKey(name: 'visitor_count', fromJson: _dynamicToString) String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    @JsonKey(fromJson: _dynamicToString) String? priority,
    @JsonKey(fromJson: _dynamicToString) String? file,
    @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString) String? sound_file_url,
    // Additional fields for detailed display
    @JsonKey(fromJson: _dynamicToString) String? soundPic,
    @JsonKey(fromJson: _dynamicToString) String? soundSource,
    @JsonKey(fromJson: _dynamicToString) String? soundSourceUrl,
    @JsonKey(fromJson: _dynamicToString) String? soundYoutubeId,
    @JsonKey(fromJson: _dynamicToString) String? publisherId,
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
    @JsonKey(fromJson: _dynamicToString) String? title,
    @JsonKey(fromJson: _dynamicToString) String? content,
    @JsonKey(fromJson: _dynamicToString) String? language,
    @JsonKey(name: 'visitor_count', fromJson: _dynamicToString) String? visitor_count,
    @JsonKey(fromJson: _dynamicToString) String? priority,
    @JsonKey(fromJson: _dynamicToString) String? date,
    @JsonKey(name: 'menu_id', fromJson: _dynamicToString) String? menu_id,
    @JsonKey(fromJson: _dynamicToString) String? type,
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
    @JsonKey(fromJson: _dynamicToString) String? title,
    @JsonKey(fromJson: _dynamicToString) String? note,
    @JsonKey(fromJson: _dynamicToString) String? type,
    @JsonKey(fromJson: _dynamicToString) String? position,
    @JsonKey(fromJson: _dynamicToString) String? language,
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

// Sound Detail Models
@freezed
abstract class SoundDetailResponse with _$SoundDetailResponse {
  const factory SoundDetailResponse({
    bool? success,
    SoundDetailData? data,
    String? message,
  }) = _SoundDetailResponse;

  factory SoundDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$SoundDetailResponseFromJson(json);
}

@freezed
abstract class SoundDetailData with _$SoundDetailData {
  const factory SoundDetailData({
    @JsonKey(name: 'sound_id', fromJson: _stringToInt) int? soundId,
    @JsonKey(name: 'sound_cat_id', fromJson: _dynamicToString) String? soundCatId,
    @JsonKey(name: 'sound_title', fromJson: _dynamicToString) String? soundTitle,
    @JsonKey(fromJson: _dynamicToString) String? soundTs,
    @JsonKey(name: 'sound_summary', fromJson: _dynamicToString) String? soundSummary,
    @JsonKey(name: 'sound_des', fromJson: _dynamicToString) String? soundDes,
    @JsonKey(name: 'sound_pic', fromJson: _dynamicToString) String? soundPic,
    @JsonKey(name: 'sound_pic_pos', fromJson: _dynamicToString) String? soundPicPos,
    @JsonKey(name: 'sound_visitor', fromJson: _stringToInt) int? soundVisitor,
    @JsonKey(name: 'sound_is_new', fromJson: _stringToBool) bool? soundIsNew,
    @JsonKey(name: 'sound_priority', fromJson: _dynamicToString) String? soundPriority,
    @JsonKey(name: 'sound_active_vote', fromJson: _stringToBool) bool? soundActiveVote,
    @JsonKey(name: 'sound_active_hint', fromJson: _stringToBool) bool? soundActiveHint,
    @JsonKey(name: 'sound_active', fromJson: _stringToBool) bool? soundActive,
    @JsonKey(name: 'sound_date', fromJson: _dynamicToString) String? soundDate,
    @JsonKey(name: 'sound_pic_active', fromJson: _stringToBool) bool? soundPicActive,
    @JsonKey(name: 'sound_last_sound', fromJson: _stringToBool) bool? soundLastSound,
    @JsonKey(name: 'sound_publisher_id', fromJson: _dynamicToString) String? soundPublisherId,
    @JsonKey(name: 'sound_source', fromJson: _dynamicToString) String? soundSource,
    @JsonKey(name: 'sound_source_url', fromJson: _dynamicToString) String? soundSourceUrl,
    @JsonKey(name: 'sound_youtube_id', fromJson: _dynamicToString) String? soundYoutubeId,
    @JsonKey(name: 'sound_file', fromJson: _dynamicToString) String? soundFile,
    @JsonKey(name: 'sound_user_add_hint_nsup', fromJson: _stringToBool) bool? soundUserAddHintNsup,
    @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString) String? soundFileUrl,
    SoundDetailCategory? category,
    List<dynamic>? captions,
    List<dynamic>? votes,
  }) = _SoundDetailData;

  factory SoundDetailData.fromJson(Map<String, dynamic> json) =>
      _$SoundDetailDataFromJson(json);
}

@freezed
abstract class SoundDetailCategory with _$SoundDetailCategory {
  const factory SoundDetailCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_father_id', fromJson: _dynamicToString) String? catFatherId,
    @JsonKey(name: 'cat_menus', fromJson: _dynamicToString) String? catMenus,
    @JsonKey(name: 'cat_title', fromJson: _dynamicToString) String? catTitle,
    @JsonKey(name: 'cat_note', fromJson: _dynamicToString) String? catNote,
    @JsonKey(name: 'cat_pic', fromJson: _dynamicToString) String? catPic,
    @JsonKey(name: 'cat_sup', fromJson: _dynamicToString) String? catSup,
    @JsonKey(name: 'cat_date', fromJson: _dynamicToString) String? catDate,
    @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool) bool? catPicActive,
    @JsonKey(name: 'cat_lan', fromJson: _dynamicToString) String? catLan,
    @JsonKey(name: 'cat_pos', fromJson: _dynamicToString) String? catPos,
    @JsonKey(name: 'cat_active', fromJson: _stringToBool) bool? catActive,
    @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool) bool? catShowMenu,
    @JsonKey(name: 'cat_show_main', fromJson: _stringToBool) bool? catShowMain,
    @JsonKey(name: 'cat_agent', fromJson: _dynamicToString) String? catAgent,
  }) = _SoundDetailCategory;

  factory SoundDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$SoundDetailCategoryFromJson(json);
}