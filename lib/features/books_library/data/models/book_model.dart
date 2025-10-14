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
    List<BookItem>? data,
  }) = _BookCategory;

  factory BookCategory.fromJson(Map<String, dynamic> json) =>
      _$BookCategoryFromJson(json);
}

@freezed
abstract class BookItem with _$BookItem {
  const factory BookItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    String? title,
    String? summary,
    String? date,
    String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    String? priority,
    String? file,
    String? format,
    String? publisher_id,
    @JsonKey(name: 'book_file_url') String? bookFileUrl,
    @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
    @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
    @JsonKey(name: 'book_pic_url') String? bookPicUrl,
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
    String? title,
    String? content,
    String? language,
    String? visitor_count,
    String? priority,
    String? date,
    String? menu_id,
    String? type,
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
    @JsonKey(name: 'book_cat_id') String? bookCatId,
    @JsonKey(name: 'book_title') String? bookTitle,
    @JsonKey(name: 'book_ts') String? bookTs,
    @JsonKey(name: 'book_summary') String? bookSummary,
    @JsonKey(name: 'book_des') String? bookDes,
    @JsonKey(name: 'book_pic') String? bookPic,
    @JsonKey(name: 'book_pic_pos') String? bookPicPos,
    @JsonKey(name: 'book_visitor', fromJson: _stringToInt) int? bookVisitor,
    @JsonKey(name: 'book_is_new', fromJson: _stringToBool) bool? bookIsNew,
    @JsonKey(name: 'book_priority') String? bookPriority,
    @JsonKey(name: 'book_active_vote', fromJson: _stringToBool) bool? bookActiveVote,
    @JsonKey(name: 'book_active_hint', fromJson: _stringToBool) bool? bookActiveHint,
    @JsonKey(name: 'book_active', fromJson: _stringToBool) bool? bookActive,
    @JsonKey(name: 'book_date') String? bookDate,
    @JsonKey(name: 'book_pic_active', fromJson: _stringToBool) bool? bookPicActive,
    @JsonKey(name: 'book_last_book', fromJson: _stringToBool) bool? bookLastBook,
    @JsonKey(name: 'book_publisher_id') String? bookPublisherId,
    @JsonKey(name: 'book_source') String? bookSource,
    @JsonKey(name: 'book_source_url') String? bookSourceUrl,
    @JsonKey(name: 'book_youtube_id') String? bookYoutubeId,
    @JsonKey(name: 'book_file') String? bookFile,
    @JsonKey(name: 'book_file_ePub') String? bookFileEPub,
    @JsonKey(name: 'book_file_kfx') String? bookFileKfx,
    @JsonKey(name: 'book_user_add_hint_nsup', fromJson: _stringToBool) bool? bookUserAddHintNsup,
    @JsonKey(name: 'book_file_url') String? bookFileUrl,
    @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
    @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
    @JsonKey(name: 'book_pic_url') String? bookPicUrl,
    BookDetailCategory? category,
  }) = _BookDetailData;

  factory BookDetailData.fromJson(Map<String, dynamic> json) =>
      _$BookDetailDataFromJson(json);
}

@freezed
abstract class BookDetailCategory with _$BookDetailCategory {
  const factory BookDetailCategory({
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
abstract class CategoryBookItem with _$CategoryBookItem {
  const factory CategoryBookItem({
    @JsonKey(fromJson: _stringToInt) int? id,
    String? title,
    String? summary,
    String? date,
    String? visitor_count,
    @JsonKey(fromJson: _stringToBool) bool? is_new,
    String? priority,
    String? file,
    String? format,
    String? publisher_id,
    @JsonKey(name: 'book_file_url') String? bookFileUrl,
    @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
    @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
    @JsonKey(name: 'book_pic_url') String? bookPicUrl,
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
