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
    List<VideoItem>? data,
  }) = _VideoCategory;

  factory VideoCategory.fromJson(Map<String, dynamic> json) =>
      _$VideoCategoryFromJson(json);
}

@freezed
abstract class VideoItem with _$VideoItem {
  const factory VideoItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    String? title,
    String? summary,
    String? date,
    String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    String? priority,
    String? youtube_id,
    String? file,
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
    String? title,
    String? note,
    String? type,
    String? position,
    String? language,
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
    @JsonKey(name: 'video_cat_id') String? videoCatId,
    @JsonKey(name: 'video_title') String? videoTitle,
    @JsonKey(name: 'video_ts') String? videoTs,
    @JsonKey(name: 'video_summary') String? videoSummary,
    @JsonKey(name: 'video_des') String? videoDes,
    @JsonKey(name: 'video_pic') String? videoPic,
    @JsonKey(name: 'video_pic_pos') String? videoPicPos,
    @JsonKey(name: 'video_visitor', fromJson: _stringToInt) int? videoVisitor,
    @JsonKey(name: 'video_is_new', fromJson: _stringToBool) bool? videoIsNew,
    @JsonKey(name: 'video_priority') String? videoPriority,
    @JsonKey(name: 'video_active_vote', fromJson: _stringToBool) bool? videoActiveVote,
    @JsonKey(name: 'video_active_hint', fromJson: _stringToBool) bool? videoActiveHint,
    @JsonKey(name: 'video_active', fromJson: _stringToBool) bool? videoActive,
    @JsonKey(name: 'video_date') String? videoDate,
    @JsonKey(name: 'video_pic_active', fromJson: _stringToBool) bool? videoPicActive,
    @JsonKey(name: 'video_last_video', fromJson: _stringToBool) bool? videoLastVideo,
    @JsonKey(name: 'video_publisher_id') String? videoPublisherId,
    @JsonKey(name: 'video_source') String? videoSource,
    @JsonKey(name: 'video_source_url') String? videoSourceUrl,
    @JsonKey(name: 'video_youtube_id') String? videoYoutubeId,
    @JsonKey(name: 'video_file') String? videoFile,
    @JsonKey(name: 'video_user_add_hint_nsup', fromJson: _stringToBool) bool? videoUserAddHintNsup,
    @JsonKey(name: 'video_file_url') String? videoFileUrl,
    VideoDetailCategory? category,
  }) = _VideoDetailData;

  factory VideoDetailData.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailDataFromJson(json);
}

@freezed
abstract class VideoDetailCategory with _$VideoDetailCategory {
  const factory VideoDetailCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_father_id') String? catFatherId,
    @JsonKey(name: 'cat_menus') String? catMenus,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_sup') String? catSup,
    @JsonKey(name: 'cat_date') String? catDate,
    @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool) bool? catPicActive,
    @JsonKey(name: 'cat_lan') String? catLan,
    @JsonKey(name: 'cat_pos') String? catPos,
    @JsonKey(name: 'cat_active', fromJson: _stringToBool) bool? catActive,
    @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool) bool? catShowMenu,
    @JsonKey(name: 'cat_show_main', fromJson: _stringToBool) bool? catShowMain,
    @JsonKey(name: 'cat_agent') String? catAgent,
  }) = _VideoDetailCategory;

  factory VideoDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailCategoryFromJson(json);
}

