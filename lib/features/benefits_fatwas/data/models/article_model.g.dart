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
      type: _dynamicToString(json['type']),
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
      title: _dynamicToString(json['title']),
      summary: _dynamicToString(json['summary']),
      date: _dynamicToString(json['date']),
      visitor_count: _dynamicToString(json['visitor_count']),
      is_new: _stringToBool(json['is_new']),
      priority: _dynamicToString(json['priority']),
      content: _dynamicToString(json['content']),
      picture: _dynamicToString(json['picture']),
      publisher_id: _dynamicToString(json['publisher_id']),
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
      articleCatId: _dynamicToString(json['article_cat_id']),
      articleTitle: _dynamicToString(json['article_title']),
      articleTs: _dynamicToString(json['article_ts']),
      articleSummary: _dynamicToString(json['article_summary']),
      articleDes: _dynamicToString(json['article_des']),
      articlePic: _dynamicToString(json['article_pic']),
      articlePicPos: _dynamicToString(json['article_pic_pos']),
      articleVisitor: _stringToInt(json['article_visitor']),
      articleIsNew: _stringToBool(json['article_is_new']),
      articlePriority: _dynamicToString(json['article_priority']),
      articleActiveVote: _stringToBool(json['article_active_vote']),
      articleActiveHint: _stringToBool(json['article_active_hint']),
      articleActive: _stringToBool(json['article_active']),
      articleDate: _dynamicToString(json['article_date']),
      articlePicActive: _stringToBool(json['article_pic_active']),
      articleLastArticle: _stringToBool(json['article_last_article']),
      articlePublisherId: _dynamicToString(json['article_publisher_id']),
      articleSource: _dynamicToString(json['article_source']),
      articleSourceUrl: _dynamicToString(json['article_source_url']),
      articleYoutubeId: _dynamicToString(json['article_youtube_id']),
      articleFile: _dynamicToString(json['article_file']),
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
