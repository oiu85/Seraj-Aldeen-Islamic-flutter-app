// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    _SearchResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : SearchData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SearchResponseToJson(_SearchResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_SearchData _$SearchDataFromJson(Map<String, dynamic> json) => _SearchData(
      keyword: json['keyword'] as String?,
      search_type: json['search_type'] as String?,
      sort_by: json['sort_by'] as String?,
      filters: json['filters'] as String?,
      total_results: _stringToInt(json['total_results']),
      results: json['results'] == null
          ? null
          : SearchResults.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchDataToJson(_SearchData instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'search_type': instance.search_type,
      'sort_by': instance.sort_by,
      'filters': instance.filters,
      'total_results': instance.total_results,
      'results': instance.results,
    };

_SearchResults _$SearchResultsFromJson(Map<String, dynamic> json) =>
    _SearchResults(
      articles: json['articles'] == null
          ? null
          : SearchCategory.fromJson(json['articles'] as Map<String, dynamic>),
      books: json['books'] == null
          ? null
          : SearchCategory.fromJson(json['books'] as Map<String, dynamic>),
      videos: json['videos'] == null
          ? null
          : SearchCategory.fromJson(json['videos'] as Map<String, dynamic>),
      sounds: json['sounds'] == null
          ? null
          : SearchCategory.fromJson(json['sounds'] as Map<String, dynamic>),
      photo_galleries: json['photo_galleries'] == null
          ? null
          : SearchCategory.fromJson(
              json['photo_galleries'] as Map<String, dynamic>),
      pages: json['pages'] == null
          ? null
          : SearchCategory.fromJson(json['pages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchResultsToJson(_SearchResults instance) =>
    <String, dynamic>{
      'articles': instance.articles,
      'books': instance.books,
      'videos': instance.videos,
      'sounds': instance.sounds,
      'photo_galleries': instance.photo_galleries,
      'pages': instance.pages,
    };

_SearchCategory _$SearchCategoryFromJson(Map<String, dynamic> json) =>
    _SearchCategory(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SearchResultItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: _stringToInt(json['count']),
      label: json['label'] as String?,
    );

Map<String, dynamic> _$SearchCategoryToJson(_SearchCategory instance) =>
    <String, dynamic>{
      'data': instance.data,
      'count': instance.count,
      'label': instance.label,
    };

_SearchResultItem _$SearchResultItemFromJson(Map<String, dynamic> json) =>
    _SearchResultItem(
      id: _stringToInt(json['id']),
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      picture: json['picture'] as String?,
      visitor_count: json['visitor_count'] as String?,
      is_new: _stringToBool(json['is_new']),
      priority: json['priority'] as String?,
      date: json['date'] as String?,
      category: json['category'] == null
          ? null
          : SearchItemCategory.fromJson(
              json['category'] as Map<String, dynamic>),
      type: json['type'] as String?,
      type_label: json['type_label'] as String?,
      relevance_score: _stringToInt(json['relevance_score']),
      sound_file_url: json['sound_file_url'] as String?,
      file: json['file'] as String?,
    );

Map<String, dynamic> _$SearchResultItemToJson(_SearchResultItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'description': instance.description,
      'content': instance.content,
      'picture': instance.picture,
      'visitor_count': instance.visitor_count,
      'is_new': instance.is_new,
      'priority': instance.priority,
      'date': instance.date,
      'category': instance.category,
      'type': instance.type,
      'type_label': instance.type_label,
      'relevance_score': instance.relevance_score,
      'sound_file_url': instance.sound_file_url,
      'file': instance.file,
    };

_SearchItemCategory _$SearchItemCategoryFromJson(Map<String, dynamic> json) =>
    _SearchItemCategory(
      cat_id: _stringToInt(json['cat_id']),
      cat_father_id: json['cat_father_id'] as String?,
      cat_menus: json['cat_menus'] as String?,
      cat_title: json['cat_title'] as String?,
      cat_note: json['cat_note'] as String?,
      cat_pic: json['cat_pic'] as String?,
      cat_sup: json['cat_sup'] as String?,
      cat_date: json['cat_date'] as String?,
      cat_pic_active: _stringToBool(json['cat_pic_active']),
      cat_lan: json['cat_lan'] as String?,
      cat_pos: json['cat_pos'] as String?,
      cat_active: _stringToBool(json['cat_active']),
      cat_show_menu: _stringToBool(json['cat_show_menu']),
      cat_show_main: _stringToBool(json['cat_show_main']),
      cat_agent: json['cat_agent'] as String?,
    );

Map<String, dynamic> _$SearchItemCategoryToJson(_SearchItemCategory instance) =>
    <String, dynamic>{
      'cat_id': instance.cat_id,
      'cat_father_id': instance.cat_father_id,
      'cat_menus': instance.cat_menus,
      'cat_title': instance.cat_title,
      'cat_note': instance.cat_note,
      'cat_pic': instance.cat_pic,
      'cat_sup': instance.cat_sup,
      'cat_date': instance.cat_date,
      'cat_pic_active': instance.cat_pic_active,
      'cat_lan': instance.cat_lan,
      'cat_pos': instance.cat_pos,
      'cat_active': instance.cat_active,
      'cat_show_menu': instance.cat_show_menu,
      'cat_show_main': instance.cat_show_main,
      'cat_agent': instance.cat_agent,
    };
