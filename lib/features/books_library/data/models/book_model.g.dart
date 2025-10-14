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
      title: json['title'] as String?,
      note: json['note'] as String?,
      position: json['position'] as String?,
      language: json['language'] as String?,
      date: json['date'] as String?,
      menu_id: json['menu_id'] as String?,
      show_in_menu: _stringToBool(json['show_in_menu']),
      show_in_main: _stringToBool(json['show_in_main']),
      content_count: _stringToInt(json['content_count']),
      type: json['type'] as String?,
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
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      date: json['date'] as String?,
      visitor_count: json['visitor_count'] as String?,
      is_new: _stringToBool(json['is_new']),
      priority: json['priority'] as String?,
      file: json['file'] as String?,
      format: json['format'] as String?,
      publisher_id: json['publisher_id'] as String?,
      bookFileUrl: json['book_file_url'] as String?,
      bookFileEpubUrl: json['book_file_epub_url'] as String?,
      bookFileKfxUrl: json['book_file_kfx_url'] as String?,
      bookPicUrl: json['book_pic_url'] as String?,
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
      title: json['title'] as String?,
      content: json['content'] as String?,
      language: json['language'] as String?,
      visitor_count: json['visitor_count'] as String?,
      priority: json['priority'] as String?,
      date: json['date'] as String?,
      menu_id: json['menu_id'] as String?,
      type: json['type'] as String?,
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
      bookCatId: json['book_cat_id'] as String?,
      bookTitle: json['book_title'] as String?,
      bookTs: json['book_ts'] as String?,
      bookSummary: json['book_summary'] as String?,
      bookDes: json['book_des'] as String?,
      bookPic: json['book_pic'] as String?,
      bookPicPos: json['book_pic_pos'] as String?,
      bookVisitor: _stringToInt(json['book_visitor']),
      bookIsNew: _stringToBool(json['book_is_new']),
      bookPriority: json['book_priority'] as String?,
      bookActiveVote: _stringToBool(json['book_active_vote']),
      bookActiveHint: _stringToBool(json['book_active_hint']),
      bookActive: _stringToBool(json['book_active']),
      bookDate: json['book_date'] as String?,
      bookPicActive: _stringToBool(json['book_pic_active']),
      bookLastBook: _stringToBool(json['book_last_book']),
      bookPublisherId: json['book_publisher_id'] as String?,
      bookSource: json['book_source'] as String?,
      bookSourceUrl: json['book_source_url'] as String?,
      bookYoutubeId: json['book_youtube_id'] as String?,
      bookFile: json['book_file'] as String?,
      bookFileEPub: json['book_file_ePub'] as String?,
      bookFileKfx: json['book_file_kfx'] as String?,
      bookUserAddHintNsup: _stringToBool(json['book_user_add_hint_nsup']),
      bookFileUrl: json['book_file_url'] as String?,
      bookFileEpubUrl: json['book_file_epub_url'] as String?,
      bookFileKfxUrl: json['book_file_kfx_url'] as String?,
      bookPicUrl: json['book_pic_url'] as String?,
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
      catFatherId: json['cat_father_id'] as String?,
      catMenus: json['cat_menus'] as String?,
      catTitle: json['cat_title'] as String?,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catSup: json['cat_sup'] as String?,
      catDate: json['cat_date'] as String?,
      catPicActive: _stringToBool(json['cat_pic_active']),
      catLan: json['cat_lan'] as String?,
      catPos: json['cat_pos'] as String?,
      catActive: _stringToBool(json['cat_active']),
      catShowMenu: _stringToBool(json['cat_show_menu']),
      catShowMain: _stringToBool(json['cat_show_main']),
      catAgent: json['cat_agent'] as String?,
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
      title: json['title'] as String?,
      note: json['note'] as String?,
      type: json['type'] as String?,
      position: json['position'] as String?,
      language: json['language'] as String?,
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
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      date: json['date'] as String?,
      visitor_count: json['visitor_count'] as String?,
      is_new: _stringToBool(json['is_new']),
      priority: json['priority'] as String?,
      file: json['file'] as String?,
      format: json['format'] as String?,
      publisher_id: json['publisher_id'] as String?,
      bookFileUrl: json['book_file_url'] as String?,
      bookFileEpubUrl: json['book_file_epub_url'] as String?,
      bookFileKfxUrl: json['book_file_kfx_url'] as String?,
      bookPicUrl: json['book_pic_url'] as String?,
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
