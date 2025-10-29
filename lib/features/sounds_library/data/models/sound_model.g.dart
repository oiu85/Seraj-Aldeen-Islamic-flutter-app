// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SoundResponse _$SoundResponseFromJson(Map<String, dynamic> json) =>
    _SoundResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : SoundData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SoundResponseToJson(_SoundResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_SoundData _$SoundDataFromJson(Map<String, dynamic> json) => _SoundData(
      type: json['type'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => SoundCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : SoundPaginationData.fromJson(
              json['pagination'] as Map<String, dynamic>),
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => PageInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SoundDataToJson(_SoundData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'categories': instance.categories,
      'pagination': instance.pagination,
      'pages': instance.pages,
    };

_SoundCategory _$SoundCategoryFromJson(Map<String, dynamic> json) =>
    _SoundCategory(
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
          ?.map((e) => SoundItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SoundCategoryToJson(_SoundCategory instance) =>
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

_SoundItem _$SoundItemFromJson(Map<String, dynamic> json) => _SoundItem(
      id: _stringToInt(json['id']),
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      date: json['date'] as String?,
      visitor_count: json['visitor_count'] as String?,
      is_new: _stringToBool(json['is_new']),
      priority: json['priority'] as String?,
      file: json['file'] as String?,
      sound_file_url: json['sound_file_url'] as String?,
      soundPic: json['soundPic'] as String?,
      soundSource: json['soundSource'] as String?,
      soundSourceUrl: json['soundSourceUrl'] as String?,
      soundYoutubeId: json['soundYoutubeId'] as String?,
      publisherId: json['publisherId'] as String?,
    );

Map<String, dynamic> _$SoundItemToJson(_SoundItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'date': instance.date,
      'visitor_count': instance.visitor_count,
      'is_new': instance.is_new,
      'priority': instance.priority,
      'file': instance.file,
      'sound_file_url': instance.sound_file_url,
      'soundPic': instance.soundPic,
      'soundSource': instance.soundSource,
      'soundSourceUrl': instance.soundSourceUrl,
      'soundYoutubeId': instance.soundYoutubeId,
      'publisherId': instance.publisherId,
    };

_SoundPaginationData _$SoundPaginationDataFromJson(Map<String, dynamic> json) =>
    _SoundPaginationData(
      currentPage: _stringToInt(json['current_page']),
      perPage: _stringToInt(json['per_page']),
      totalCategories: _stringToInt(json['total_categories']),
      totalPages: _stringToInt(json['total_pages']),
      hasNextPage: _stringToBool(json['has_next_page']),
      hasPreviousPage: _stringToBool(json['has_previous_page']),
      nextPage: _stringToInt(json['next_page']),
      previousPage: _stringToInt(json['previous_page']),
    );

Map<String, dynamic> _$SoundPaginationDataToJson(
        _SoundPaginationData instance) =>
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

_PageInfo _$PageInfoFromJson(Map<String, dynamic> json) => _PageInfo(
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

Map<String, dynamic> _$PageInfoToJson(_PageInfo instance) => <String, dynamic>{
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
          ?.map((e) => SoundItem.fromJson(e as Map<String, dynamic>))
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

_AudioBookSubcategoriesResponse _$AudioBookSubcategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    _AudioBookSubcategoriesResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : AudioBookSubcategoriesData.fromJson(
              json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AudioBookSubcategoriesResponseToJson(
        _AudioBookSubcategoriesResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_AudioBookSubcategoriesData _$AudioBookSubcategoriesDataFromJson(
        Map<String, dynamic> json) =>
    _AudioBookSubcategoriesData(
      parentCategory: json['parent_category'] == null
          ? null
          : CategoryInfo.fromJson(
              json['parent_category'] as Map<String, dynamic>),
      subcategories: (json['subcategories'] as List<dynamic>?)
          ?.map((e) => AudioBookSubcategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AudioBookSubcategoriesDataToJson(
        _AudioBookSubcategoriesData instance) =>
    <String, dynamic>{
      'parent_category': instance.parentCategory,
      'subcategories': instance.subcategories,
    };

_AudioBookSubcategory _$AudioBookSubcategoryFromJson(
        Map<String, dynamic> json) =>
    _AudioBookSubcategory(
      id: _stringToInt(json['id']),
      title: json['title'] as String?,
      note: json['note'] as String?,
      position: json['position'] as String?,
      language: json['language'] as String?,
      date: json['date'] as String?,
      parentId: json['parent_id'] as String?,
      showInMenu: _stringToBool(json['show_in_menu']),
      showInMain: _stringToBool(json['show_in_main']),
      contentCount: _stringToInt(json['content_count']),
    );

Map<String, dynamic> _$AudioBookSubcategoryToJson(
        _AudioBookSubcategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'position': instance.position,
      'language': instance.language,
      'date': instance.date,
      'parent_id': instance.parentId,
      'show_in_menu': instance.showInMenu,
      'show_in_main': instance.showInMain,
      'content_count': instance.contentCount,
    };

_SoundDetailResponse _$SoundDetailResponseFromJson(Map<String, dynamic> json) =>
    _SoundDetailResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : SoundDetailData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SoundDetailResponseToJson(
        _SoundDetailResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_SoundDetailData _$SoundDetailDataFromJson(Map<String, dynamic> json) =>
    _SoundDetailData(
      soundId: _stringToInt(json['sound_id']),
      soundCatId: json['sound_cat_id'] as String?,
      soundTitle: json['sound_title'] as String?,
      soundTs: json['soundTs'] as String?,
      soundSummary: json['sound_summary'] as String?,
      soundDes: json['sound_des'] as String?,
      soundPic: json['sound_pic'] as String?,
      soundPicPos: json['sound_pic_pos'] as String?,
      soundVisitor: _stringToInt(json['sound_visitor']),
      soundIsNew: _stringToBool(json['sound_is_new']),
      soundPriority: json['sound_priority'] as String?,
      soundActiveVote: _stringToBool(json['sound_active_vote']),
      soundActiveHint: _stringToBool(json['sound_active_hint']),
      soundActive: _stringToBool(json['sound_active']),
      soundDate: json['sound_date'] as String?,
      soundPicActive: _stringToBool(json['sound_pic_active']),
      soundLastSound: _stringToBool(json['sound_last_sound']),
      soundPublisherId: json['sound_publisher_id'] as String?,
      soundSource: json['sound_source'] as String?,
      soundSourceUrl: json['sound_source_url'] as String?,
      soundYoutubeId: json['sound_youtube_id'] as String?,
      soundFile: json['sound_file'] as String?,
      soundUserAddHintNsup: _stringToBool(json['sound_user_add_hint_nsup']),
      soundFileUrl: json['sound_file_url'] as String?,
      category: json['category'] == null
          ? null
          : SoundDetailCategory.fromJson(
              json['category'] as Map<String, dynamic>),
      captions: json['captions'] as List<dynamic>?,
      votes: json['votes'] as List<dynamic>?,
    );

Map<String, dynamic> _$SoundDetailDataToJson(_SoundDetailData instance) =>
    <String, dynamic>{
      'sound_id': instance.soundId,
      'sound_cat_id': instance.soundCatId,
      'sound_title': instance.soundTitle,
      'soundTs': instance.soundTs,
      'sound_summary': instance.soundSummary,
      'sound_des': instance.soundDes,
      'sound_pic': instance.soundPic,
      'sound_pic_pos': instance.soundPicPos,
      'sound_visitor': instance.soundVisitor,
      'sound_is_new': instance.soundIsNew,
      'sound_priority': instance.soundPriority,
      'sound_active_vote': instance.soundActiveVote,
      'sound_active_hint': instance.soundActiveHint,
      'sound_active': instance.soundActive,
      'sound_date': instance.soundDate,
      'sound_pic_active': instance.soundPicActive,
      'sound_last_sound': instance.soundLastSound,
      'sound_publisher_id': instance.soundPublisherId,
      'sound_source': instance.soundSource,
      'sound_source_url': instance.soundSourceUrl,
      'sound_youtube_id': instance.soundYoutubeId,
      'sound_file': instance.soundFile,
      'sound_user_add_hint_nsup': instance.soundUserAddHintNsup,
      'sound_file_url': instance.soundFileUrl,
      'category': instance.category,
      'captions': instance.captions,
      'votes': instance.votes,
    };

_SoundDetailCategory _$SoundDetailCategoryFromJson(Map<String, dynamic> json) =>
    _SoundDetailCategory(
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

Map<String, dynamic> _$SoundDetailCategoryToJson(
        _SoundDetailCategory instance) =>
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
