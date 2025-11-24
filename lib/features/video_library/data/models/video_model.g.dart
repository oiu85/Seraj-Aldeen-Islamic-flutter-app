// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoResponse _$VideoResponseFromJson(Map<String, dynamic> json) =>
    _VideoResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : VideoData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$VideoResponseToJson(_VideoResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_VideoData _$VideoDataFromJson(Map<String, dynamic> json) => _VideoData(
      type: json['type'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => VideoCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : VideoPaginationData.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VideoDataToJson(_VideoData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'categories': instance.categories,
      'pagination': instance.pagination,
    };

_VideoCategory _$VideoCategoryFromJson(Map<String, dynamic> json) =>
    _VideoCategory(
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
          ?.map((e) => VideoItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VideoCategoryToJson(_VideoCategory instance) =>
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

_VideoItem _$VideoItemFromJson(Map<String, dynamic> json) => _VideoItem(
      id: _stringToInt(json['id']),
      title: _dynamicToString(json['title']),
      summary: _dynamicToString(json['summary']),
      date: _dynamicToString(json['date']),
      visitor_count: _dynamicToString(json['visitor_count']),
      is_new: _stringToBool(json['is_new']),
      priority: _dynamicToString(json['priority']),
      youtube_id: _dynamicToString(json['youtube_id']),
      file: _dynamicToString(json['file']),
    );

Map<String, dynamic> _$VideoItemToJson(_VideoItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'date': instance.date,
      'visitor_count': instance.visitor_count,
      'is_new': instance.is_new,
      'priority': instance.priority,
      'youtube_id': instance.youtube_id,
      'file': instance.file,
    };

_VideoPaginationData _$VideoPaginationDataFromJson(Map<String, dynamic> json) =>
    _VideoPaginationData(
      currentPage: _stringToInt(json['current_page']),
      perPage: _stringToInt(json['per_page']),
      totalCategories: _stringToInt(json['total_categories']),
      totalPages: _stringToInt(json['total_pages']),
      hasNextPage: _stringToBool(json['has_next_page']),
      hasPreviousPage: _stringToBool(json['has_previous_page']),
      nextPage: _stringToInt(json['next_page']),
      previousPage: _stringToInt(json['previous_page']),
    );

Map<String, dynamic> _$VideoPaginationDataToJson(
        _VideoPaginationData instance) =>
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

_CategoryVideoContentResponse _$CategoryVideoContentResponseFromJson(
        Map<String, dynamic> json) =>
    _CategoryVideoContentResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : CategoryVideoContentData.fromJson(
              json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CategoryVideoContentResponseToJson(
        _CategoryVideoContentResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_CategoryVideoContentData _$CategoryVideoContentDataFromJson(
        Map<String, dynamic> json) =>
    _CategoryVideoContentData(
      category: json['category'] == null
          ? null
          : VideoCategoryInfo.fromJson(
              json['category'] as Map<String, dynamic>),
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => VideoItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : VideoContentPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryVideoContentDataToJson(
        _CategoryVideoContentData instance) =>
    <String, dynamic>{
      'category': instance.category,
      'content': instance.content,
      'pagination': instance.pagination,
    };

_VideoCategoryInfo _$VideoCategoryInfoFromJson(Map<String, dynamic> json) =>
    _VideoCategoryInfo(
      id: _stringToInt(json['id']),
      title: _dynamicToString(json['title']),
      note: _dynamicToString(json['note']),
      type: _dynamicToString(json['type']),
      position: _dynamicToString(json['position']),
      language: _dynamicToString(json['language']),
    );

Map<String, dynamic> _$VideoCategoryInfoToJson(_VideoCategoryInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'type': instance.type,
      'position': instance.position,
      'language': instance.language,
    };

_VideoContentPagination _$VideoContentPaginationFromJson(
        Map<String, dynamic> json) =>
    _VideoContentPagination(
      currentPage: _stringToInt(json['current_page']),
      perPage: _stringToInt(json['per_page']),
      totalItems: _stringToInt(json['total_items']),
      totalPages: _stringToInt(json['total_pages']),
      hasNextPage: _stringToBool(json['has_next_page']),
      hasPreviousPage: _stringToBool(json['has_previous_page']),
      nextPage: _stringToInt(json['next_page']),
      previousPage: _stringToInt(json['previous_page']),
    );

Map<String, dynamic> _$VideoContentPaginationToJson(
        _VideoContentPagination instance) =>
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

_VideoDetailResponse _$VideoDetailResponseFromJson(Map<String, dynamic> json) =>
    _VideoDetailResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : VideoDetailData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$VideoDetailResponseToJson(
        _VideoDetailResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_VideoDetailData _$VideoDetailDataFromJson(Map<String, dynamic> json) =>
    _VideoDetailData(
      videoId: _stringToInt(json['video_id']),
      videoCatId: _dynamicToString(json['video_cat_id']),
      videoTitle: _dynamicToString(json['video_title']),
      videoTs: _dynamicToString(json['video_ts']),
      videoSummary: _dynamicToString(json['video_summary']),
      videoDes: _dynamicToString(json['video_des']),
      videoPic: _dynamicToString(json['video_pic']),
      videoPicPos: _dynamicToString(json['video_pic_pos']),
      videoVisitor: _stringToInt(json['video_visitor']),
      videoIsNew: _stringToBool(json['video_is_new']),
      videoPriority: _dynamicToString(json['video_priority']),
      videoActiveVote: _stringToBool(json['video_active_vote']),
      videoActiveHint: _stringToBool(json['video_active_hint']),
      videoActive: _stringToBool(json['video_active']),
      videoDate: _dynamicToString(json['video_date']),
      videoPicActive: _stringToBool(json['video_pic_active']),
      videoLastVideo: _stringToBool(json['video_last_video']),
      videoPublisherId: _dynamicToString(json['video_publisher_id']),
      videoSource: _dynamicToString(json['video_source']),
      videoSourceUrl: _dynamicToString(json['video_source_url']),
      videoYoutubeId: _dynamicToString(json['video_youtube_id']),
      videoFile: _dynamicToString(json['video_file']),
      videoUserAddHintNsup: _stringToBool(json['video_user_add_hint_nsup']),
      videoFileUrl: _dynamicToString(json['video_file_url']),
      category: json['category'] == null
          ? null
          : VideoDetailCategory.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VideoDetailDataToJson(_VideoDetailData instance) =>
    <String, dynamic>{
      'video_id': instance.videoId,
      'video_cat_id': instance.videoCatId,
      'video_title': instance.videoTitle,
      'video_ts': instance.videoTs,
      'video_summary': instance.videoSummary,
      'video_des': instance.videoDes,
      'video_pic': instance.videoPic,
      'video_pic_pos': instance.videoPicPos,
      'video_visitor': instance.videoVisitor,
      'video_is_new': instance.videoIsNew,
      'video_priority': instance.videoPriority,
      'video_active_vote': instance.videoActiveVote,
      'video_active_hint': instance.videoActiveHint,
      'video_active': instance.videoActive,
      'video_date': instance.videoDate,
      'video_pic_active': instance.videoPicActive,
      'video_last_video': instance.videoLastVideo,
      'video_publisher_id': instance.videoPublisherId,
      'video_source': instance.videoSource,
      'video_source_url': instance.videoSourceUrl,
      'video_youtube_id': instance.videoYoutubeId,
      'video_file': instance.videoFile,
      'video_user_add_hint_nsup': instance.videoUserAddHintNsup,
      'video_file_url': instance.videoFileUrl,
      'category': instance.category,
    };

_VideoDetailCategory _$VideoDetailCategoryFromJson(Map<String, dynamic> json) =>
    _VideoDetailCategory(
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

Map<String, dynamic> _$VideoDetailCategoryToJson(
        _VideoDetailCategory instance) =>
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
