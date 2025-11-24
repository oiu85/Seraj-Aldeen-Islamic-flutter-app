import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

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
abstract class VideoResponse with _$VideoResponse {
  const factory VideoResponse({
    bool? success,
    VideoData? data,
    String? message,
  }) = _VideoResponse;

  factory VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);
}

@freezed
abstract class VideoData with _$VideoData {
  const factory VideoData({
    String? type,
    List<VideoCategory>? categories,
    VideoPaginationData? pagination,
  }) = _VideoData;

  factory VideoData.fromJson(Map<String, dynamic> json) =>
      _$VideoDataFromJson(json);
}

@freezed
abstract class VideoCategory with _$VideoCategory {
  const factory VideoCategory({
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
    List<VideoItem>? data,
  }) = _VideoCategory;

  factory VideoCategory.fromJson(Map<String, dynamic> json) =>
      _$VideoCategoryFromJson(json);
}

@freezed
abstract class VideoItem with _$VideoItem {
  const factory VideoItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    @JsonKey(fromJson: _dynamicToString) String? title,
    @JsonKey(fromJson: _dynamicToString) String? summary,
    @JsonKey(fromJson: _dynamicToString) String? date,
    @JsonKey(name: 'visitor_count', fromJson: _dynamicToString) String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    @JsonKey(fromJson: _dynamicToString) String? priority,
    @JsonKey(name: 'youtube_id', fromJson: _dynamicToString) String? youtube_id,
    @JsonKey(fromJson: _dynamicToString) String? file,
  }) = _VideoItem;

  factory VideoItem.fromJson(Map<String, dynamic> json) =>
      _$VideoItemFromJson(json);
}

@freezed
abstract class VideoPaginationData with _$VideoPaginationData {
  const factory VideoPaginationData({
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'total_categories', fromJson: _stringToInt) int? totalCategories,
    @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
    @JsonKey(name: 'has_next_page', fromJson: _stringToBool) bool? hasNextPage,
    @JsonKey(name: 'has_previous_page', fromJson: _stringToBool) bool? hasPreviousPage,
    @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
    @JsonKey(name: 'previous_page', fromJson: _stringToInt) int? previousPage,
  }) = _VideoPaginationData;

  factory VideoPaginationData.fromJson(Map<String, dynamic> json) =>
      _$VideoPaginationDataFromJson(json);
}

@freezed
abstract class CategoryVideoContentResponse with _$CategoryVideoContentResponse {
  const factory CategoryVideoContentResponse({
    bool? success,
    CategoryVideoContentData? data,
    String? message,
  }) = _CategoryVideoContentResponse;

  factory CategoryVideoContentResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryVideoContentResponseFromJson(json);
}

@freezed
abstract class CategoryVideoContentData with _$CategoryVideoContentData {
  const factory CategoryVideoContentData({
    VideoCategoryInfo? category,
    List<VideoItem>? content,
    VideoContentPagination? pagination,
  }) = _CategoryVideoContentData;

  factory CategoryVideoContentData.fromJson(Map<String, dynamic> json) =>
      _$CategoryVideoContentDataFromJson(json);
}

@freezed
abstract class VideoCategoryInfo with _$VideoCategoryInfo {
  const factory VideoCategoryInfo({
    @JsonKey(fromJson: _stringToInt) int? id,
    @JsonKey(fromJson: _dynamicToString) String? title,
    @JsonKey(fromJson: _dynamicToString) String? note,
    @JsonKey(fromJson: _dynamicToString) String? type,
    @JsonKey(fromJson: _dynamicToString) String? position,
    @JsonKey(fromJson: _dynamicToString) String? language,
  }) = _VideoCategoryInfo;

  factory VideoCategoryInfo.fromJson(Map<String, dynamic> json) =>
      _$VideoCategoryInfoFromJson(json);
}

@freezed
abstract class VideoContentPagination with _$VideoContentPagination {
  const factory VideoContentPagination({
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'total_items', fromJson: _stringToInt) int? totalItems,
    @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
    @JsonKey(name: 'has_next_page', fromJson: _stringToBool) bool? hasNextPage,
    @JsonKey(name: 'has_previous_page', fromJson: _stringToBool) bool? hasPreviousPage,
    @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
    @JsonKey(name: 'previous_page', fromJson: _stringToInt) int? previousPage,
  }) = _VideoContentPagination;

  factory VideoContentPagination.fromJson(Map<String, dynamic> json) =>
      _$VideoContentPaginationFromJson(json);
}

@freezed
abstract class VideoDetailResponse with _$VideoDetailResponse {
  const factory VideoDetailResponse({
    bool? success,
    VideoDetailData? data,
    String? message,
  }) = _VideoDetailResponse;

  factory VideoDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailResponseFromJson(json);
}

@freezed
abstract class VideoDetailData with _$VideoDetailData {
  const factory VideoDetailData({
    @JsonKey(name: 'video_id', fromJson: _stringToInt) int? videoId,
    @JsonKey(name: 'video_cat_id', fromJson: _dynamicToString) String? videoCatId,
    @JsonKey(name: 'video_title', fromJson: _dynamicToString) String? videoTitle,
    @JsonKey(name: 'video_ts', fromJson: _dynamicToString) String? videoTs,
    @JsonKey(name: 'video_summary', fromJson: _dynamicToString) String? videoSummary,
    @JsonKey(name: 'video_des', fromJson: _dynamicToString) String? videoDes,
    @JsonKey(name: 'video_pic', fromJson: _dynamicToString) String? videoPic,
    @JsonKey(name: 'video_pic_pos', fromJson: _dynamicToString) String? videoPicPos,
    @JsonKey(name: 'video_visitor', fromJson: _stringToInt) int? videoVisitor,
    @JsonKey(name: 'video_is_new', fromJson: _stringToBool) bool? videoIsNew,
    @JsonKey(name: 'video_priority', fromJson: _dynamicToString) String? videoPriority,
    @JsonKey(name: 'video_active_vote', fromJson: _stringToBool) bool? videoActiveVote,
    @JsonKey(name: 'video_active_hint', fromJson: _stringToBool) bool? videoActiveHint,
    @JsonKey(name: 'video_active', fromJson: _stringToBool) bool? videoActive,
    @JsonKey(name: 'video_date', fromJson: _dynamicToString) String? videoDate,
    @JsonKey(name: 'video_pic_active', fromJson: _stringToBool) bool? videoPicActive,
    @JsonKey(name: 'video_last_video', fromJson: _stringToBool) bool? videoLastVideo,
    @JsonKey(name: 'video_publisher_id', fromJson: _dynamicToString) String? videoPublisherId,
    @JsonKey(name: 'video_source', fromJson: _dynamicToString) String? videoSource,
    @JsonKey(name: 'video_source_url', fromJson: _dynamicToString) String? videoSourceUrl,
    @JsonKey(name: 'video_youtube_id', fromJson: _dynamicToString) String? videoYoutubeId,
    @JsonKey(name: 'video_file', fromJson: _dynamicToString) String? videoFile,
    @JsonKey(name: 'video_user_add_hint_nsup', fromJson: _stringToBool) bool? videoUserAddHintNsup,
    @JsonKey(name: 'video_file_url', fromJson: _dynamicToString) String? videoFileUrl,
    VideoDetailCategory? category,
  }) = _VideoDetailData;

  factory VideoDetailData.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailDataFromJson(json);
}

@freezed
abstract class VideoDetailCategory with _$VideoDetailCategory {
  const factory VideoDetailCategory({
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
  }) = _VideoDetailCategory;

  factory VideoDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailCategoryFromJson(json);
}

