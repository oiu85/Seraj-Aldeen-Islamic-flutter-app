// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookResponse _$BookResponseFromJson(Map<String, dynamic> json) =>
    _BookResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : BookData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BookResponseToJson(_BookResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_BookData _$BookDataFromJson(Map<String, dynamic> json) => _BookData(
      type: json['type'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => BookCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : BookPaginationData.fromJson(
              json['pagination'] as Map<String, dynamic>),
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => BookPageInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BookDataToJson(_BookData instance) => <String, dynamic>{
      'type': instance.type,
      'categories': instance.categories,
      'pagination': instance.pagination,
      'pages': instance.pages,
    };

_BookCategory _$BookCategoryFromJson(Map<String, dynamic> json) =>
    _BookCategory(
      id: _stringToInt(json['id']),
      title: _dynamicToString(json['title']),
      note: _dynamicToString(json['note']),
      position: _dynamicToString(json['position']),
      language: _dynamicToString(json['language']),
      date: _dynamicToString(json['date']),
      menu_id: _dynamicToString(json['menu_id']),
      show_in_menu: _stringToBool(json['show_in_menu']),
      show_in_main: _stringToBool(json['show_in_main']),
      content_count: _stringToInt(json['content_count']),
      type: _dynamicToString(json['type']),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BookItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BookCategoryToJson(_BookCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'position': instance.position,
      'language': instance.language,
      'date': instance.date,
      'menu_id': instance.menu_id,
      'show_in_menu': instance.show_in_menu,
      'show_in_main': instance.show_in_main,
      'content_count': instance.content_count,
      'type': instance.type,
      'data': instance.data,
    };

_BookItem _$BookItemFromJson(Map<String, dynamic> json) => _BookItem(
      id: _stringToInt(json['id']),
      title: _dynamicToString(json['title']),
      summary: _dynamicToString(json['summary']),
      date: _dynamicToString(json['date']),
      visitor_count: _dynamicToString(json['visitor_count']),
      is_new: _stringToBool(json['is_new']),
      priority: _dynamicToString(json['priority']),
      file: _dynamicToString(json['file']),
      format: _dynamicToString(json['format']),
      publisher_id: _dynamicToString(json['publisher_id']),
      bookFileUrl: _dynamicToString(json['book_file_url']),
      bookFileEpubUrl: _dynamicToString(json['book_file_epub_url']),
      bookFileKfxUrl: _dynamicToString(json['book_file_kfx_url']),
      bookPicUrl: _dynamicToString(json['book_pic_url']),
    );

Map<String, dynamic> _$BookItemToJson(_BookItem instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'date': instance.date,
      'visitor_count': instance.visitor_count,
      'is_new': instance.is_new,
      'priority': instance.priority,
      'file': instance.file,
      'format': instance.format,
      'publisher_id': instance.publisher_id,
      'book_file_url': instance.bookFileUrl,
      'book_file_epub_url': instance.bookFileEpubUrl,
      'book_file_kfx_url': instance.bookFileKfxUrl,
      'book_pic_url': instance.bookPicUrl,
    };

_BookPaginationData _$BookPaginationDataFromJson(Map<String, dynamic> json) =>
    _BookPaginationData(
      currentPage: _stringToInt(json['current_page']),
      perPage: _stringToInt(json['per_page']),
      totalCategories: _stringToInt(json['total_categories']),
      totalPages: _stringToInt(json['total_pages']),
      hasNextPage: _stringToBool(json['has_next_page']),
      hasPreviousPage: _stringToBool(json['has_previous_page']),
      nextPage: _stringToInt(json['next_page']),
      previousPage: _stringToInt(json['previous_page']),
    );

Map<String, dynamic> _$BookPaginationDataToJson(_BookPaginationData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'total_categories': instance.totalCategories,
      'total_pages': instance.totalPages,
      'has_next_page': instance.hasNextPage,
      'has_previous_page': instance.hasPreviousPage,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
    };

_BookPageInfo _$BookPageInfoFromJson(Map<String, dynamic> json) =>
    _BookPageInfo(
      id: _stringToInt(json['id']),
      title: _dynamicToString(json['title']),
      content: _dynamicToString(json['content']),
      language: _dynamicToString(json['language']),
      visitor_count: _dynamicToString(json['visitor_count']),
      priority: _dynamicToString(json['priority']),
      date: _dynamicToString(json['date']),
      menu_id: _dynamicToString(json['menu_id']),
      type: _dynamicToString(json['type']),
    );

Map<String, dynamic> _$BookPageInfoToJson(_BookPageInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'language': instance.language,
      'visitor_count': instance.visitor_count,
      'priority': instance.priority,
      'date': instance.date,
      'menu_id': instance.menu_id,
      'type': instance.type,
    };

_BookDetailResponse _$BookDetailResponseFromJson(Map<String, dynamic> json) =>
    _BookDetailResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : BookDetailData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BookDetailResponseToJson(_BookDetailResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_BookDetailData _$BookDetailDataFromJson(Map<String, dynamic> json) =>
    _BookDetailData(
      bookId: _stringToInt(json['book_id']),
      bookCatId: _dynamicToString(json['book_cat_id']),
      bookTitle: _dynamicToString(json['book_title']),
      bookTs: _dynamicToString(json['book_ts']),
      bookSummary: _dynamicToString(json['book_summary']),
      bookDes: _dynamicToString(json['book_des']),
      bookPic: _dynamicToString(json['book_pic']),
      bookPicPos: _dynamicToString(json['book_pic_pos']),
      bookVisitor: _stringToInt(json['book_visitor']),
      bookIsNew: _stringToBool(json['book_is_new']),
      bookPriority: _dynamicToString(json['book_priority']),
      bookActiveVote: _stringToBool(json['book_active_vote']),
      bookActiveHint: _stringToBool(json['book_active_hint']),
      bookActive: _stringToBool(json['book_active']),
      bookDate: _dynamicToString(json['book_date']),
      bookPicActive: _stringToBool(json['book_pic_active']),
      bookLastBook: _stringToBool(json['book_last_book']),
      bookPublisherId: _dynamicToString(json['book_publisher_id']),
      bookSource: _dynamicToString(json['book_source']),
      bookSourceUrl: _dynamicToString(json['book_source_url']),
      bookYoutubeId: _dynamicToString(json['book_youtube_id']),
      bookFile: _dynamicToString(json['book_file']),
      bookFileEPub: _dynamicToString(json['book_file_ePub']),
      bookFileKfx: _dynamicToString(json['book_file_kfx']),
      bookUserAddHintNsup: _stringToBool(json['book_user_add_hint_nsup']),
      bookFileUrl: _dynamicToString(json['book_file_url']),
      bookFileEpubUrl: _dynamicToString(json['book_file_epub_url']),
      bookFileKfxUrl: _dynamicToString(json['book_file_kfx_url']),
      bookPicUrl: _dynamicToString(json['book_pic_url']),
      category: json['category'] == null
          ? null
          : BookDetailCategory.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookDetailDataToJson(_BookDetailData instance) =>
    <String, dynamic>{
      'book_id': instance.bookId,
      'book_cat_id': instance.bookCatId,
      'book_title': instance.bookTitle,
      'book_ts': instance.bookTs,
      'book_summary': instance.bookSummary,
      'book_des': instance.bookDes,
      'book_pic': instance.bookPic,
      'book_pic_pos': instance.bookPicPos,
      'book_visitor': instance.bookVisitor,
      'book_is_new': instance.bookIsNew,
      'book_priority': instance.bookPriority,
      'book_active_vote': instance.bookActiveVote,
      'book_active_hint': instance.bookActiveHint,
      'book_active': instance.bookActive,
      'book_date': instance.bookDate,
      'book_pic_active': instance.bookPicActive,
      'book_last_book': instance.bookLastBook,
      'book_publisher_id': instance.bookPublisherId,
      'book_source': instance.bookSource,
      'book_source_url': instance.bookSourceUrl,
      'book_youtube_id': instance.bookYoutubeId,
      'book_file': instance.bookFile,
      'book_file_ePub': instance.bookFileEPub,
      'book_file_kfx': instance.bookFileKfx,
      'book_user_add_hint_nsup': instance.bookUserAddHintNsup,
      'book_file_url': instance.bookFileUrl,
      'book_file_epub_url': instance.bookFileEpubUrl,
      'book_file_kfx_url': instance.bookFileKfxUrl,
      'book_pic_url': instance.bookPicUrl,
      'category': instance.category,
    };

_BookDetailCategory _$BookDetailCategoryFromJson(Map<String, dynamic> json) =>
    _BookDetailCategory(
      catId: _stringToInt(json['cat_id']),
      catFatherId: _dynamicToString(json['cat_father_id']),
      catMenus: _dynamicToString(json['cat_menus']),
      catTitle: _dynamicToString(json['cat_title']),
      catNote: _dynamicToString(json['cat_note']),
      catPic: _dynamicToString(json['cat_pic']),
      catSup: _dynamicToString(json['cat_sup']),
      catDate: _dynamicToString(json['cat_date']),
      catPicActive: _stringToBool(json['cat_pic_active']),
      catLan: _dynamicToString(json['cat_lan']),
      catPos: _dynamicToString(json['cat_pos']),
      catActive: _stringToBool(json['cat_active']),
      catShowMenu: _stringToBool(json['cat_show_menu']),
      catShowMain: _stringToBool(json['cat_show_main']),
      catAgent: _dynamicToString(json['cat_agent']),
    );

Map<String, dynamic> _$BookDetailCategoryToJson(_BookDetailCategory instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_father_id': instance.catFatherId,
      'cat_menus': instance.catMenus,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_sup': instance.catSup,
      'cat_date': instance.catDate,
      'cat_pic_active': instance.catPicActive,
      'cat_lan': instance.catLan,
      'cat_pos': instance.catPos,
      'cat_active': instance.catActive,
      'cat_show_menu': instance.catShowMenu,
      'cat_show_main': instance.catShowMain,
      'cat_agent': instance.catAgent,
    };

_CategoryBooksResponse _$CategoryBooksResponseFromJson(
        Map<String, dynamic> json) =>
    _CategoryBooksResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : CategoryBooksData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CategoryBooksResponseToJson(
        _CategoryBooksResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_CategoryBooksData _$CategoryBooksDataFromJson(Map<String, dynamic> json) =>
    _CategoryBooksData(
      category: json['category'] == null
          ? null
          : CategoryInfo.fromJson(json['category'] as Map<String, dynamic>),
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => CategoryBookItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : CategoryBooksPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryBooksDataToJson(_CategoryBooksData instance) =>
    <String, dynamic>{
      'category': instance.category,
      'content': instance.content,
      'pagination': instance.pagination,
    };

_CategoryInfo _$CategoryInfoFromJson(Map<String, dynamic> json) =>
    _CategoryInfo(
      id: _stringToInt(json['id']),
      title: _dynamicToString(json['title']),
      note: _dynamicToString(json['note']),
      type: _dynamicToString(json['type']),
      position: _dynamicToString(json['position']),
      language: _dynamicToString(json['language']),
    );

Map<String, dynamic> _$CategoryInfoToJson(_CategoryInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'type': instance.type,
      'position': instance.position,
      'language': instance.language,
    };

_CategoryBookItem _$CategoryBookItemFromJson(Map<String, dynamic> json) =>
    _CategoryBookItem(
      id: _stringToInt(json['id']),
      title: _dynamicToString(json['title']),
      summary: _dynamicToString(json['summary']),
      date: _dynamicToString(json['date']),
      visitor_count: _dynamicToString(json['visitor_count']),
      is_new: _stringToBool(json['is_new']),
      priority: _dynamicToString(json['priority']),
      file: _dynamicToString(json['file']),
      format: _dynamicToString(json['format']),
      publisher_id: _dynamicToString(json['publisher_id']),
      bookFileUrl: _dynamicToString(json['book_file_url']),
      bookFileEpubUrl: _dynamicToString(json['book_file_epub_url']),
      bookFileKfxUrl: _dynamicToString(json['book_file_kfx_url']),
      bookPicUrl: _dynamicToString(json['book_pic_url']),
    );

Map<String, dynamic> _$CategoryBookItemToJson(_CategoryBookItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'date': instance.date,
      'visitor_count': instance.visitor_count,
      'is_new': instance.is_new,
      'priority': instance.priority,
      'file': instance.file,
      'format': instance.format,
      'publisher_id': instance.publisher_id,
      'book_file_url': instance.bookFileUrl,
      'book_file_epub_url': instance.bookFileEpubUrl,
      'book_file_kfx_url': instance.bookFileKfxUrl,
      'book_pic_url': instance.bookPicUrl,
    };

_CategoryBooksPagination _$CategoryBooksPaginationFromJson(
        Map<String, dynamic> json) =>
    _CategoryBooksPagination(
      currentPage: _stringToInt(json['current_page']),
      perPage: _stringToInt(json['per_page']),
      totalItems: _stringToInt(json['total_items']),
      totalPages: _stringToInt(json['total_pages']),
      hasNextPage: _stringToBool(json['has_next_page']),
      hasPreviousPage: _stringToBool(json['has_previous_page']),
      nextPage: _stringToInt(json['next_page']),
      previousPage: _stringToInt(json['previous_page']),
    );

Map<String, dynamic> _$CategoryBooksPaginationToJson(
        _CategoryBooksPagination instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'has_next_page': instance.hasNextPage,
      'has_previous_page': instance.hasPreviousPage,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
    };
