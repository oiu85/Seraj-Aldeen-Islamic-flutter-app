import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';

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
abstract class ArticleResponse with _$ArticleResponse {
  const factory ArticleResponse({
    bool? success,
    ArticleData? data,
    String? message,
  }) = _ArticleResponse;

  factory ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseFromJson(json);
}

@freezed
abstract class ArticleData with _$ArticleData {
  const factory ArticleData({
    @JsonKey(fromJson: _dynamicToString) String? type,
    List<ArticleCategory>? categories,
    PaginationData? pagination,
  }) = _ArticleData;

  factory ArticleData.fromJson(Map<String, dynamic> json) =>
      _$ArticleDataFromJson(json);
}

@freezed
abstract class ArticleCategory with _$ArticleCategory {
  const factory ArticleCategory({
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
    List<ArticleItem>? data,
  }) = _ArticleCategory;

  factory ArticleCategory.fromJson(Map<String, dynamic> json) =>
      _$ArticleCategoryFromJson(json);
}

@freezed
abstract class ArticleItem with _$ArticleItem {
  const factory ArticleItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    @JsonKey(fromJson: _dynamicToString) String? title,
    @JsonKey(fromJson: _dynamicToString) String? summary,
    @JsonKey(fromJson: _dynamicToString) String? date,
    @JsonKey(name: 'visitor_count', fromJson: _dynamicToString) String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    @JsonKey(fromJson: _dynamicToString) String? priority,
    @JsonKey(fromJson: _dynamicToString) String? content,
    @JsonKey(fromJson: _dynamicToString) String? picture,
    @JsonKey(name: 'publisher_id', fromJson: _dynamicToString) String? publisher_id,
  }) = _ArticleItem;

  factory ArticleItem.fromJson(Map<String, dynamic> json) =>
      _$ArticleItemFromJson(json);
}

@freezed
abstract class PaginationData with _$PaginationData {
  const factory PaginationData({
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'total_categories', fromJson: _stringToInt) int? totalCategories,
    @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
    @JsonKey(name: 'has_next_page', fromJson: _stringToBool) bool? hasNextPage,
    @JsonKey(name: 'has_previous_page', fromJson: _stringToBool) bool? hasPreviousPage,
    @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
    @JsonKey(name: 'previous_page', fromJson: _stringToInt) int? previousPage,
  }) = _PaginationData;

  factory PaginationData.fromJson(Map<String, dynamic> json) =>
      _$PaginationDataFromJson(json);
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
    List<ArticleItem>? content,
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

// Article Detail Models
@freezed
abstract class ArticleDetailResponse with _$ArticleDetailResponse {
  const factory ArticleDetailResponse({
    bool? success,
    ArticleDetail? data,
    String? message,
  }) = _ArticleDetailResponse;

  factory ArticleDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailResponseFromJson(json);
}

@freezed
abstract class ArticleDetail with _$ArticleDetail {
  const factory ArticleDetail({
    @JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,
    @JsonKey(name: 'article_cat_id', fromJson: _dynamicToString) String? articleCatId,
    @JsonKey(name: 'article_title', fromJson: _dynamicToString) String? articleTitle,
    @JsonKey(name: 'article_ts', fromJson: _dynamicToString) String? articleTs,
    @JsonKey(name: 'article_summary', fromJson: _dynamicToString) String? articleSummary,
    @JsonKey(name: 'article_des', fromJson: _dynamicToString) String? articleDes,
    @JsonKey(name: 'article_pic', fromJson: _dynamicToString) String? articlePic,
    @JsonKey(name: 'article_pic_pos', fromJson: _dynamicToString) String? articlePicPos,
    @JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,
    @JsonKey(name: 'article_is_new', fromJson: _stringToBool) bool? articleIsNew,
    @JsonKey(name: 'article_priority', fromJson: _dynamicToString) String? articlePriority,
    @JsonKey(name: 'article_active_vote', fromJson: _stringToBool) bool? articleActiveVote,
    @JsonKey(name: 'article_active_hint', fromJson: _stringToBool) bool? articleActiveHint,
    @JsonKey(name: 'article_active', fromJson: _stringToBool) bool? articleActive,
    @JsonKey(name: 'article_date', fromJson: _dynamicToString) String? articleDate,
    @JsonKey(name: 'article_pic_active', fromJson: _stringToBool) bool? articlePicActive,
    @JsonKey(name: 'article_last_article', fromJson: _stringToBool) bool? articleLastArticle,
    @JsonKey(name: 'article_publisher_id', fromJson: _dynamicToString) String? articlePublisherId,
    @JsonKey(name: 'article_source', fromJson: _dynamicToString) String? articleSource,
    @JsonKey(name: 'article_source_url', fromJson: _dynamicToString) String? articleSourceUrl,
    @JsonKey(name: 'article_youtube_id', fromJson: _dynamicToString) String? articleYoutubeId,
    @JsonKey(name: 'article_file', fromJson: _dynamicToString) String? articleFile,
    @JsonKey(name: 'article_user_add_hint_nsup', fromJson: _stringToBool) bool? articleUserAddHintNsup,
    ArticleDetailCategory? category,
    List<dynamic>? captions,
    List<dynamic>? votes,
  }) = _ArticleDetail;

  factory ArticleDetail.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailFromJson(json);
}

@freezed
abstract class ArticleDetailCategory with _$ArticleDetailCategory {
  const factory ArticleDetailCategory({
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
  }) = _ArticleDetailCategory;

  factory ArticleDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailCategoryFromJson(json);
}