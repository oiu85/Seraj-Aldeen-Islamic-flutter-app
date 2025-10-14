// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticleResponse _$ArticleResponseFromJson(Map<String, dynamic> json) =>
    _ArticleResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : ArticleData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ArticleResponseToJson(_ArticleResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_ArticleData _$ArticleDataFromJson(Map<String, dynamic> json) => _ArticleData(
      type: json['type'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => ArticleCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationData.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleDataToJson(_ArticleData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'categories': instance.categories,
      'pagination': instance.pagination,
    };

_ArticleCategory _$ArticleCategoryFromJson(Map<String, dynamic> json) =>
    _ArticleCategory(
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
          ?.map((e) => ArticleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleCategoryToJson(_ArticleCategory instance) =>
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

_ArticleItem _$ArticleItemFromJson(Map<String, dynamic> json) => _ArticleItem(
      id: _stringToInt(json['id']),
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      date: json['date'] as String?,
      visitor_count: json['visitor_count'] as String?,
      is_new: _stringToBool(json['is_new']),
      priority: json['priority'] as String?,
      content: json['content'] as String?,
      picture: json['picture'] as String?,
      publisher_id: json['publisher_id'] as String?,
    );

Map<String, dynamic> _$ArticleItemToJson(_ArticleItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'date': instance.date,
      'visitor_count': instance.visitor_count,
      'is_new': instance.is_new,
      'priority': instance.priority,
      'content': instance.content,
      'picture': instance.picture,
      'publisher_id': instance.publisher_id,
    };

_PaginationData _$PaginationDataFromJson(Map<String, dynamic> json) =>
    _PaginationData(
      currentPage: _stringToInt(json['current_page']),
      perPage: _stringToInt(json['per_page']),
      totalCategories: _stringToInt(json['total_categories']),
      totalPages: _stringToInt(json['total_pages']),
      hasNextPage: _stringToBool(json['has_next_page']),
      hasPreviousPage: _stringToBool(json['has_previous_page']),
      nextPage: _stringToInt(json['next_page']),
      previousPage: _stringToInt(json['previous_page']),
    );

Map<String, dynamic> _$PaginationDataToJson(_PaginationData instance) =>
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

_CategoryContentResponse _$CategoryContentResponseFromJson(
        Map<String, dynamic> json) =>
    _CategoryContentResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : CategoryContentData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CategoryContentResponseToJson(
        _CategoryContentResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_CategoryContentData _$CategoryContentDataFromJson(Map<String, dynamic> json) =>
    _CategoryContentData(
      category: json['category'] == null
          ? null
          : CategoryInfo.fromJson(json['category'] as Map<String, dynamic>),
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => ArticleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : ContentPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryContentDataToJson(
        _CategoryContentData instance) =>
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

_ContentPagination _$ContentPaginationFromJson(Map<String, dynamic> json) =>
    _ContentPagination(
      currentPage: _stringToInt(json['current_page']),
      perPage: _stringToInt(json['per_page']),
      totalItems: _stringToInt(json['total_items']),
      totalPages: _stringToInt(json['total_pages']),
      hasNextPage: _stringToBool(json['has_next_page']),
      hasPreviousPage: _stringToBool(json['has_previous_page']),
      nextPage: _stringToInt(json['next_page']),
      previousPage: _stringToInt(json['previous_page']),
    );

Map<String, dynamic> _$ContentPaginationToJson(_ContentPagination instance) =>
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

_ArticleDetailResponse _$ArticleDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _ArticleDetailResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : ArticleDetail.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ArticleDetailResponseToJson(
        _ArticleDetailResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_ArticleDetail _$ArticleDetailFromJson(Map<String, dynamic> json) =>
    _ArticleDetail(
      articleId: _stringToInt(json['article_id']),
      articleCatId: json['article_cat_id'] as String?,
      articleTitle: json['article_title'] as String?,
      articleTs: json['article_ts'] as String?,
      articleSummary: json['article_summary'] as String?,
      articleDes: json['article_des'] as String?,
      articlePic: json['article_pic'] as String?,
      articlePicPos: json['article_pic_pos'] as String?,
      articleVisitor: _stringToInt(json['article_visitor']),
      articleIsNew: _stringToBool(json['article_is_new']),
      articlePriority: json['article_priority'] as String?,
      articleActiveVote: _stringToBool(json['article_active_vote']),
      articleActiveHint: _stringToBool(json['article_active_hint']),
      articleActive: _stringToBool(json['article_active']),
      articleDate: json['article_date'] as String?,
      articlePicActive: _stringToBool(json['article_pic_active']),
      articleLastArticle: _stringToBool(json['article_last_article']),
      articlePublisherId: json['article_publisher_id'] as String?,
      articleSource: json['article_source'] as String?,
      articleSourceUrl: json['article_source_url'] as String?,
      articleYoutubeId: json['article_youtube_id'] as String?,
      articleFile: json['article_file'] as String?,
      articleUserAddHintNsup: _stringToBool(json['article_user_add_hint_nsup']),
      category: json['category'] == null
          ? null
          : ArticleDetailCategory.fromJson(
              json['category'] as Map<String, dynamic>),
      captions: json['captions'] as List<dynamic>?,
      votes: json['votes'] as List<dynamic>?,
    );

Map<String, dynamic> _$ArticleDetailToJson(_ArticleDetail instance) =>
    <String, dynamic>{
      'article_id': instance.articleId,
      'article_cat_id': instance.articleCatId,
      'article_title': instance.articleTitle,
      'article_ts': instance.articleTs,
      'article_summary': instance.articleSummary,
      'article_des': instance.articleDes,
      'article_pic': instance.articlePic,
      'article_pic_pos': instance.articlePicPos,
      'article_visitor': instance.articleVisitor,
      'article_is_new': instance.articleIsNew,
      'article_priority': instance.articlePriority,
      'article_active_vote': instance.articleActiveVote,
      'article_active_hint': instance.articleActiveHint,
      'article_active': instance.articleActive,
      'article_date': instance.articleDate,
      'article_pic_active': instance.articlePicActive,
      'article_last_article': instance.articleLastArticle,
      'article_publisher_id': instance.articlePublisherId,
      'article_source': instance.articleSource,
      'article_source_url': instance.articleSourceUrl,
      'article_youtube_id': instance.articleYoutubeId,
      'article_file': instance.articleFile,
      'article_user_add_hint_nsup': instance.articleUserAddHintNsup,
      'category': instance.category,
      'captions': instance.captions,
      'votes': instance.votes,
    };

_ArticleDetailCategory _$ArticleDetailCategoryFromJson(
        Map<String, dynamic> json) =>
    _ArticleDetailCategory(
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

Map<String, dynamic> _$ArticleDetailCategoryToJson(
        _ArticleDetailCategory instance) =>
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
