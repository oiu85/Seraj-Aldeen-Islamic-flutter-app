import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

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
abstract class BookResponse with _$BookResponse {
  const factory BookResponse({
    bool? success,
    BookData? data,
    String? message,
  }) = _BookResponse;

  factory BookResponse.fromJson(Map<String, dynamic> json) =>
      _$BookResponseFromJson(json);
}

@freezed
abstract class BookData with _$BookData {
  const factory BookData({
    String? type,
    List<BookCategory>? categories,
    BookPaginationData? pagination,
    List<BookPageInfo>? pages,
  }) = _BookData;

  factory BookData.fromJson(Map<String, dynamic> json) =>
      _$BookDataFromJson(json);
}

@freezed
abstract class BookCategory with _$BookCategory {
  const factory BookCategory({
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
    List<BookItem>? data,
  }) = _BookCategory;

  factory BookCategory.fromJson(Map<String, dynamic> json) =>
      _$BookCategoryFromJson(json);
}

@freezed
abstract class BookItem with _$BookItem {
  const factory BookItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    @JsonKey(fromJson: _dynamicToString) String? title,
    @JsonKey(fromJson: _dynamicToString) String? summary,
    @JsonKey(fromJson: _dynamicToString) String? date,
    @JsonKey(name: 'visitor_count', fromJson: _dynamicToString) String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    @JsonKey(fromJson: _dynamicToString) String? priority,
    @JsonKey(fromJson: _dynamicToString) String? file,
    @JsonKey(fromJson: _dynamicToString) String? format,
    @JsonKey(name: 'publisher_id', fromJson: _dynamicToString) String? publisher_id,
    @JsonKey(name: 'book_file_url', fromJson: _dynamicToString) String? bookFileUrl,
    @JsonKey(name: 'book_file_epub_url', fromJson: _dynamicToString) String? bookFileEpubUrl,
    @JsonKey(name: 'book_file_kfx_url', fromJson: _dynamicToString) String? bookFileKfxUrl,
    @JsonKey(name: 'book_pic_url', fromJson: _dynamicToString) String? bookPicUrl,
  }) = _BookItem;

  factory BookItem.fromJson(Map<String, dynamic> json) =>
      _$BookItemFromJson(json);
}

@freezed
abstract class BookPaginationData with _$BookPaginationData {
  const factory BookPaginationData({
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'total_categories', fromJson: _stringToInt) int? totalCategories,
    @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
    @JsonKey(name: 'has_next_page', fromJson: _stringToBool) bool? hasNextPage,
    @JsonKey(name: 'has_previous_page', fromJson: _stringToBool) bool? hasPreviousPage,
    @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
    @JsonKey(name: 'previous_page', fromJson: _stringToInt) int? previousPage,
  }) = _BookPaginationData;

  factory BookPaginationData.fromJson(Map<String, dynamic> json) =>
      _$BookPaginationDataFromJson(json);
}

@freezed
abstract class BookPageInfo with _$BookPageInfo {
  const factory BookPageInfo({
    @JsonKey(fromJson: _stringToInt) int? id,
    @JsonKey(fromJson: _dynamicToString) String? title,
    @JsonKey(fromJson: _dynamicToString) String? content,
    @JsonKey(fromJson: _dynamicToString) String? language,
    @JsonKey(name: 'visitor_count', fromJson: _dynamicToString) String? visitor_count,
    @JsonKey(fromJson: _dynamicToString) String? priority,
    @JsonKey(fromJson: _dynamicToString) String? date,
    @JsonKey(name: 'menu_id', fromJson: _dynamicToString) String? menu_id,
    @JsonKey(fromJson: _dynamicToString) String? type,
  }) = _BookPageInfo;

  factory BookPageInfo.fromJson(Map<String, dynamic> json) =>
      _$BookPageInfoFromJson(json);
}

// Book Detail Models
@freezed
abstract class BookDetailResponse with _$BookDetailResponse {
  const factory BookDetailResponse({
    bool? success,
    BookDetailData? data,
    String? message,
  }) = _BookDetailResponse;

  factory BookDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BookDetailResponseFromJson(json);
}

@freezed
abstract class BookDetailData with _$BookDetailData {
  const factory BookDetailData({
    @JsonKey(name: 'book_id', fromJson: _stringToInt) int? bookId,
    @JsonKey(name: 'book_cat_id', fromJson: _dynamicToString) String? bookCatId,
    @JsonKey(name: 'book_title', fromJson: _dynamicToString) String? bookTitle,
    @JsonKey(name: 'book_ts', fromJson: _dynamicToString) String? bookTs,
    @JsonKey(name: 'book_summary', fromJson: _dynamicToString) String? bookSummary,
    @JsonKey(name: 'book_des', fromJson: _dynamicToString) String? bookDes,
    @JsonKey(name: 'book_pic', fromJson: _dynamicToString) String? bookPic,
    @JsonKey(name: 'book_pic_pos', fromJson: _dynamicToString) String? bookPicPos,
    @JsonKey(name: 'book_visitor', fromJson: _stringToInt) int? bookVisitor,
    @JsonKey(name: 'book_is_new', fromJson: _stringToBool) bool? bookIsNew,
    @JsonKey(name: 'book_priority', fromJson: _dynamicToString) String? bookPriority,
    @JsonKey(name: 'book_active_vote', fromJson: _stringToBool) bool? bookActiveVote,
    @JsonKey(name: 'book_active_hint', fromJson: _stringToBool) bool? bookActiveHint,
    @JsonKey(name: 'book_active', fromJson: _stringToBool) bool? bookActive,
    @JsonKey(name: 'book_date', fromJson: _dynamicToString) String? bookDate,
    @JsonKey(name: 'book_pic_active', fromJson: _stringToBool) bool? bookPicActive,
    @JsonKey(name: 'book_last_book', fromJson: _stringToBool) bool? bookLastBook,
    @JsonKey(name: 'book_publisher_id', fromJson: _dynamicToString) String? bookPublisherId,
    @JsonKey(name: 'book_source', fromJson: _dynamicToString) String? bookSource,
    @JsonKey(name: 'book_source_url', fromJson: _dynamicToString) String? bookSourceUrl,
    @JsonKey(name: 'book_youtube_id', fromJson: _dynamicToString) String? bookYoutubeId,
    @JsonKey(name: 'book_file', fromJson: _dynamicToString) String? bookFile,
    @JsonKey(name: 'book_file_ePub', fromJson: _dynamicToString) String? bookFileEPub,
    @JsonKey(name: 'book_file_kfx', fromJson: _dynamicToString) String? bookFileKfx,
    @JsonKey(name: 'book_user_add_hint_nsup', fromJson: _stringToBool) bool? bookUserAddHintNsup,
    @JsonKey(name: 'book_file_url', fromJson: _dynamicToString) String? bookFileUrl,
    @JsonKey(name: 'book_file_epub_url', fromJson: _dynamicToString) String? bookFileEpubUrl,
    @JsonKey(name: 'book_file_kfx_url', fromJson: _dynamicToString) String? bookFileKfxUrl,
    @JsonKey(name: 'book_pic_url', fromJson: _dynamicToString) String? bookPicUrl,
    BookDetailCategory? category,
  }) = _BookDetailData;

  factory BookDetailData.fromJson(Map<String, dynamic> json) =>
      _$BookDetailDataFromJson(json);
}

@freezed
abstract class BookDetailCategory with _$BookDetailCategory {
  const factory BookDetailCategory({
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
  }) = _BookDetailCategory;

  factory BookDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$BookDetailCategoryFromJson(json);
}

// Category Books Content Models
@freezed
abstract class CategoryBooksResponse with _$CategoryBooksResponse {
  const factory CategoryBooksResponse({
    bool? success,
    CategoryBooksData? data,
    String? message,
  }) = _CategoryBooksResponse;

  factory CategoryBooksResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryBooksResponseFromJson(json);
}

@freezed
abstract class CategoryBooksData with _$CategoryBooksData {
  const factory CategoryBooksData({
    CategoryInfo? category,
    List<CategoryBookItem>? content,
    CategoryBooksPagination? pagination,
  }) = _CategoryBooksData;

  factory CategoryBooksData.fromJson(Map<String, dynamic> json) =>
      _$CategoryBooksDataFromJson(json);
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
abstract class CategoryBookItem with _$CategoryBookItem {
  const factory CategoryBookItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    @JsonKey(fromJson: _dynamicToString) String? title,
    @JsonKey(fromJson: _dynamicToString) String? summary,
    @JsonKey(fromJson: _dynamicToString) String? date,
    @JsonKey(name: 'visitor_count', fromJson: _dynamicToString) String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    @JsonKey(fromJson: _dynamicToString) String? priority,
    @JsonKey(fromJson: _dynamicToString) String? file,
    @JsonKey(fromJson: _dynamicToString) String? format,
    @JsonKey(name: 'publisher_id', fromJson: _dynamicToString) String? publisher_id,
    @JsonKey(name: 'book_file_url', fromJson: _dynamicToString) String? bookFileUrl,
    @JsonKey(name: 'book_file_epub_url', fromJson: _dynamicToString) String? bookFileEpubUrl,
    @JsonKey(name: 'book_file_kfx_url', fromJson: _dynamicToString) String? bookFileKfxUrl,
    @JsonKey(name: 'book_pic_url', fromJson: _dynamicToString) String? bookPicUrl,
  }) = _CategoryBookItem;

  factory CategoryBookItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryBookItemFromJson(json);
}

@freezed
abstract class CategoryBooksPagination with _$CategoryBooksPagination {
  const factory CategoryBooksPagination({
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'total_items', fromJson: _stringToInt) int? totalItems,
    @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
    @JsonKey(name: 'has_next_page', fromJson: _stringToBool) bool? hasNextPage,
    @JsonKey(name: 'has_previous_page', fromJson: _stringToBool) bool? hasPreviousPage,
    @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
    @JsonKey(name: 'previous_page', fromJson: _stringToInt) int? previousPage,
  }) = _CategoryBooksPagination;

  factory CategoryBooksPagination.fromJson(Map<String, dynamic> json) =>
      _$CategoryBooksPaginationFromJson(json);
}
