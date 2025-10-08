// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoResponse {
  bool? get success;
  VideoData? get data;
  String? get message;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoResponseCopyWith<VideoResponse> get copyWith =>
      _$VideoResponseCopyWithImpl<VideoResponse>(
          this as VideoResponse, _$identity);

  /// Serializes this VideoResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'VideoResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $VideoResponseCopyWith<$Res> {
  factory $VideoResponseCopyWith(
          VideoResponse value, $Res Function(VideoResponse) _then) =
      _$VideoResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, VideoData? data, String? message});

  $VideoDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VideoResponseCopyWithImpl<$Res>
    implements $VideoResponseCopyWith<$Res> {
  _$VideoResponseCopyWithImpl(this._self, this._then);

  final VideoResponse _self;
  final $Res Function(VideoResponse) _then;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as VideoData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $VideoDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VideoResponse].
extension VideoResponsePatterns on VideoResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool? success, VideoData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool? success, VideoData? data, String? message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoResponse():
        return $default(_that.success, _that.data, _that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool? success, VideoData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoResponse implements VideoResponse {
  const _VideoResponse({this.success, this.data, this.message});
  factory _VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);

  @override
  final bool? success;
  @override
  final VideoData? data;
  @override
  final String? message;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoResponseCopyWith<_VideoResponse> get copyWith =>
      __$VideoResponseCopyWithImpl<_VideoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'VideoResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$VideoResponseCopyWith<$Res>
    implements $VideoResponseCopyWith<$Res> {
  factory _$VideoResponseCopyWith(
          _VideoResponse value, $Res Function(_VideoResponse) _then) =
      __$VideoResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, VideoData? data, String? message});

  @override
  $VideoDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$VideoResponseCopyWithImpl<$Res>
    implements _$VideoResponseCopyWith<$Res> {
  __$VideoResponseCopyWithImpl(this._self, this._then);

  final _VideoResponse _self;
  final $Res Function(_VideoResponse) _then;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_VideoResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as VideoData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $VideoDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$VideoData {
  String? get type;
  List<VideoCategory>? get categories;
  VideoPaginationData? get pagination;

  /// Create a copy of VideoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoDataCopyWith<VideoData> get copyWith =>
      _$VideoDataCopyWithImpl<VideoData>(this as VideoData, _$identity);

  /// Serializes this VideoData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoData &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(categories), pagination);

  @override
  String toString() {
    return 'VideoData(type: $type, categories: $categories, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class $VideoDataCopyWith<$Res> {
  factory $VideoDataCopyWith(VideoData value, $Res Function(VideoData) _then) =
      _$VideoDataCopyWithImpl;
  @useResult
  $Res call(
      {String? type,
      List<VideoCategory>? categories,
      VideoPaginationData? pagination});

  $VideoPaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$VideoDataCopyWithImpl<$Res> implements $VideoDataCopyWith<$Res> {
  _$VideoDataCopyWithImpl(this._self, this._then);

  final VideoData _self;
  final $Res Function(VideoData) _then;

  /// Create a copy of VideoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? categories = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<VideoCategory>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as VideoPaginationData?,
    ));
  }

  /// Create a copy of VideoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoPaginationDataCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $VideoPaginationDataCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VideoData].
extension VideoDataPatterns on VideoData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? type, List<VideoCategory>? categories,
            VideoPaginationData? pagination)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoData() when $default != null:
        return $default(_that.type, _that.categories, _that.pagination);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? type, List<VideoCategory>? categories,
            VideoPaginationData? pagination)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoData():
        return $default(_that.type, _that.categories, _that.pagination);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? type, List<VideoCategory>? categories,
            VideoPaginationData? pagination)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoData() when $default != null:
        return $default(_that.type, _that.categories, _that.pagination);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoData implements VideoData {
  const _VideoData(
      {this.type, final List<VideoCategory>? categories, this.pagination})
      : _categories = categories;
  factory _VideoData.fromJson(Map<String, dynamic> json) =>
      _$VideoDataFromJson(json);

  @override
  final String? type;
  final List<VideoCategory>? _categories;
  @override
  List<VideoCategory>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final VideoPaginationData? pagination;

  /// Create a copy of VideoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoDataCopyWith<_VideoData> get copyWith =>
      __$VideoDataCopyWithImpl<_VideoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoData &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_categories), pagination);

  @override
  String toString() {
    return 'VideoData(type: $type, categories: $categories, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class _$VideoDataCopyWith<$Res>
    implements $VideoDataCopyWith<$Res> {
  factory _$VideoDataCopyWith(
          _VideoData value, $Res Function(_VideoData) _then) =
      __$VideoDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? type,
      List<VideoCategory>? categories,
      VideoPaginationData? pagination});

  @override
  $VideoPaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$VideoDataCopyWithImpl<$Res> implements _$VideoDataCopyWith<$Res> {
  __$VideoDataCopyWithImpl(this._self, this._then);

  final _VideoData _self;
  final $Res Function(_VideoData) _then;

  /// Create a copy of VideoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? categories = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_VideoData(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<VideoCategory>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as VideoPaginationData?,
    ));
  }

  /// Create a copy of VideoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoPaginationDataCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $VideoPaginationDataCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// @nodoc
mixin _$VideoCategory {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  String? get title;
  String? get note;
  String? get position;
  String? get language;
  String? get date;
  String? get menu_id;
  @JsonKey(fromJson: _stringToBool)
  bool? get show_in_menu;
  @JsonKey(fromJson: _stringToBool)
  bool? get show_in_main;
  @JsonKey(fromJson: _stringToInt)
  int? get content_count;
  String? get type;
  List<VideoItem>? get data;

  /// Create a copy of VideoCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoCategoryCopyWith<VideoCategory> get copyWith =>
      _$VideoCategoryCopyWithImpl<VideoCategory>(
          this as VideoCategory, _$identity);

  /// Serializes this VideoCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.menu_id, menu_id) || other.menu_id == menu_id) &&
            (identical(other.show_in_menu, show_in_menu) ||
                other.show_in_menu == show_in_menu) &&
            (identical(other.show_in_main, show_in_main) ||
                other.show_in_main == show_in_main) &&
            (identical(other.content_count, content_count) ||
                other.content_count == content_count) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      note,
      position,
      language,
      date,
      menu_id,
      show_in_menu,
      show_in_main,
      content_count,
      type,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'VideoCategory(id: $id, title: $title, note: $note, position: $position, language: $language, date: $date, menu_id: $menu_id, show_in_menu: $show_in_menu, show_in_main: $show_in_main, content_count: $content_count, type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class $VideoCategoryCopyWith<$Res> {
  factory $VideoCategoryCopyWith(
          VideoCategory value, $Res Function(VideoCategory) _then) =
      _$VideoCategoryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
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
      List<VideoItem>? data});
}

/// @nodoc
class _$VideoCategoryCopyWithImpl<$Res>
    implements $VideoCategoryCopyWith<$Res> {
  _$VideoCategoryCopyWithImpl(this._self, this._then);

  final VideoCategory _self;
  final $Res Function(VideoCategory) _then;

  /// Create a copy of VideoCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? note = freezed,
    Object? position = freezed,
    Object? language = freezed,
    Object? date = freezed,
    Object? menu_id = freezed,
    Object? show_in_menu = freezed,
    Object? show_in_main = freezed,
    Object? content_count = freezed,
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      menu_id: freezed == menu_id
          ? _self.menu_id
          : menu_id // ignore: cast_nullable_to_non_nullable
              as String?,
      show_in_menu: freezed == show_in_menu
          ? _self.show_in_menu
          : show_in_menu // ignore: cast_nullable_to_non_nullable
              as bool?,
      show_in_main: freezed == show_in_main
          ? _self.show_in_main
          : show_in_main // ignore: cast_nullable_to_non_nullable
              as bool?,
      content_count: freezed == content_count
          ? _self.content_count
          : content_count // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VideoItem>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VideoCategory].
extension VideoCategoryPatterns on VideoCategory {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoCategory() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoCategory():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoCategory() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
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
            List<VideoItem>? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoCategory() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.note,
            _that.position,
            _that.language,
            _that.date,
            _that.menu_id,
            _that.show_in_menu,
            _that.show_in_main,
            _that.content_count,
            _that.type,
            _that.data);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
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
            List<VideoItem>? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoCategory():
        return $default(
            _that.id,
            _that.title,
            _that.note,
            _that.position,
            _that.language,
            _that.date,
            _that.menu_id,
            _that.show_in_menu,
            _that.show_in_main,
            _that.content_count,
            _that.type,
            _that.data);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
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
            List<VideoItem>? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoCategory() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.note,
            _that.position,
            _that.language,
            _that.date,
            _that.menu_id,
            _that.show_in_menu,
            _that.show_in_main,
            _that.content_count,
            _that.type,
            _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoCategory implements VideoCategory {
  const _VideoCategory(
      {@JsonKey(fromJson: _stringToInt) this.id,
      this.title,
      this.note,
      this.position,
      this.language,
      this.date,
      this.menu_id,
      @JsonKey(fromJson: _stringToBool) this.show_in_menu,
      @JsonKey(fromJson: _stringToBool) this.show_in_main,
      @JsonKey(fromJson: _stringToInt) this.content_count,
      this.type,
      final List<VideoItem>? data})
      : _data = data;
  factory _VideoCategory.fromJson(Map<String, dynamic> json) =>
      _$VideoCategoryFromJson(json);

  @override
  @JsonKey(fromJson: _stringToInt)
  final int? id;
  @override
  final String? title;
  @override
  final String? note;
  @override
  final String? position;
  @override
  final String? language;
  @override
  final String? date;
  @override
  final String? menu_id;
  @override
  @JsonKey(fromJson: _stringToBool)
  final bool? show_in_menu;
  @override
  @JsonKey(fromJson: _stringToBool)
  final bool? show_in_main;
  @override
  @JsonKey(fromJson: _stringToInt)
  final int? content_count;
  @override
  final String? type;
  final List<VideoItem>? _data;
  @override
  List<VideoItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of VideoCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoCategoryCopyWith<_VideoCategory> get copyWith =>
      __$VideoCategoryCopyWithImpl<_VideoCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.menu_id, menu_id) || other.menu_id == menu_id) &&
            (identical(other.show_in_menu, show_in_menu) ||
                other.show_in_menu == show_in_menu) &&
            (identical(other.show_in_main, show_in_main) ||
                other.show_in_main == show_in_main) &&
            (identical(other.content_count, content_count) ||
                other.content_count == content_count) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      note,
      position,
      language,
      date,
      menu_id,
      show_in_menu,
      show_in_main,
      content_count,
      type,
      const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'VideoCategory(id: $id, title: $title, note: $note, position: $position, language: $language, date: $date, menu_id: $menu_id, show_in_menu: $show_in_menu, show_in_main: $show_in_main, content_count: $content_count, type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$VideoCategoryCopyWith<$Res>
    implements $VideoCategoryCopyWith<$Res> {
  factory _$VideoCategoryCopyWith(
          _VideoCategory value, $Res Function(_VideoCategory) _then) =
      __$VideoCategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
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
      List<VideoItem>? data});
}

/// @nodoc
class __$VideoCategoryCopyWithImpl<$Res>
    implements _$VideoCategoryCopyWith<$Res> {
  __$VideoCategoryCopyWithImpl(this._self, this._then);

  final _VideoCategory _self;
  final $Res Function(_VideoCategory) _then;

  /// Create a copy of VideoCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? note = freezed,
    Object? position = freezed,
    Object? language = freezed,
    Object? date = freezed,
    Object? menu_id = freezed,
    Object? show_in_menu = freezed,
    Object? show_in_main = freezed,
    Object? content_count = freezed,
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_VideoCategory(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      menu_id: freezed == menu_id
          ? _self.menu_id
          : menu_id // ignore: cast_nullable_to_non_nullable
              as String?,
      show_in_menu: freezed == show_in_menu
          ? _self.show_in_menu
          : show_in_menu // ignore: cast_nullable_to_non_nullable
              as bool?,
      show_in_main: freezed == show_in_main
          ? _self.show_in_main
          : show_in_main // ignore: cast_nullable_to_non_nullable
              as bool?,
      content_count: freezed == content_count
          ? _self.content_count
          : content_count // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VideoItem>?,
    ));
  }
}

/// @nodoc
mixin _$VideoItem {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  String? get title;
  String? get summary;
  String? get date;
  String? get visitor_count;
  @JsonKey(fromJson: _stringToBool)
  bool? get is_new;
  String? get priority;
  String? get youtube_id;
  String? get file;

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoItemCopyWith<VideoItem> get copyWith =>
      _$VideoItemCopyWithImpl<VideoItem>(this as VideoItem, _$identity);

  /// Serializes this VideoItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.youtube_id, youtube_id) ||
                other.youtube_id == youtube_id) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, summary, date,
      visitor_count, is_new, priority, youtube_id, file);

  @override
  String toString() {
    return 'VideoItem(id: $id, title: $title, summary: $summary, date: $date, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, youtube_id: $youtube_id, file: $file)';
  }
}

/// @nodoc
abstract mixin class $VideoItemCopyWith<$Res> {
  factory $VideoItemCopyWith(VideoItem value, $Res Function(VideoItem) _then) =
      _$VideoItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      String? title,
      String? summary,
      String? date,
      String? visitor_count,
      @JsonKey(fromJson: _stringToBool) bool? is_new,
      String? priority,
      String? youtube_id,
      String? file});
}

/// @nodoc
class _$VideoItemCopyWithImpl<$Res> implements $VideoItemCopyWith<$Res> {
  _$VideoItemCopyWithImpl(this._self, this._then);

  final VideoItem _self;
  final $Res Function(VideoItem) _then;

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? summary = freezed,
    Object? date = freezed,
    Object? visitor_count = freezed,
    Object? is_new = freezed,
    Object? priority = freezed,
    Object? youtube_id = freezed,
    Object? file = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      visitor_count: freezed == visitor_count
          ? _self.visitor_count
          : visitor_count // ignore: cast_nullable_to_non_nullable
              as String?,
      is_new: freezed == is_new
          ? _self.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as bool?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube_id: freezed == youtube_id
          ? _self.youtube_id
          : youtube_id // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VideoItem].
extension VideoItemPatterns on VideoItem {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoItem() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoItem():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoItem() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(fromJson: _stringToInt) int? id,
            String? title,
            String? summary,
            String? date,
            String? visitor_count,
            @JsonKey(fromJson: _stringToBool) bool? is_new,
            String? priority,
            String? youtube_id,
            String? file)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.youtube_id,
            _that.file);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(fromJson: _stringToInt) int? id,
            String? title,
            String? summary,
            String? date,
            String? visitor_count,
            @JsonKey(fromJson: _stringToBool) bool? is_new,
            String? priority,
            String? youtube_id,
            String? file)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoItem():
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.youtube_id,
            _that.file);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(fromJson: _stringToInt) int? id,
            String? title,
            String? summary,
            String? date,
            String? visitor_count,
            @JsonKey(fromJson: _stringToBool) bool? is_new,
            String? priority,
            String? youtube_id,
            String? file)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.youtube_id,
            _that.file);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoItem implements VideoItem {
  const _VideoItem(
      {@JsonKey(fromJson: _stringToInt) this.id,
      this.title,
      this.summary,
      this.date,
      this.visitor_count,
      @JsonKey(fromJson: _stringToBool) this.is_new,
      this.priority,
      this.youtube_id,
      this.file});
  factory _VideoItem.fromJson(Map<String, dynamic> json) =>
      _$VideoItemFromJson(json);

  @override
  @JsonKey(fromJson: _stringToInt)
  final int? id;
  @override
  final String? title;
  @override
  final String? summary;
  @override
  final String? date;
  @override
  final String? visitor_count;
  @override
  @JsonKey(fromJson: _stringToBool)
  final bool? is_new;
  @override
  final String? priority;
  @override
  final String? youtube_id;
  @override
  final String? file;

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoItemCopyWith<_VideoItem> get copyWith =>
      __$VideoItemCopyWithImpl<_VideoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.youtube_id, youtube_id) ||
                other.youtube_id == youtube_id) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, summary, date,
      visitor_count, is_new, priority, youtube_id, file);

  @override
  String toString() {
    return 'VideoItem(id: $id, title: $title, summary: $summary, date: $date, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, youtube_id: $youtube_id, file: $file)';
  }
}

/// @nodoc
abstract mixin class _$VideoItemCopyWith<$Res>
    implements $VideoItemCopyWith<$Res> {
  factory _$VideoItemCopyWith(
          _VideoItem value, $Res Function(_VideoItem) _then) =
      __$VideoItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      String? title,
      String? summary,
      String? date,
      String? visitor_count,
      @JsonKey(fromJson: _stringToBool) bool? is_new,
      String? priority,
      String? youtube_id,
      String? file});
}

/// @nodoc
class __$VideoItemCopyWithImpl<$Res> implements _$VideoItemCopyWith<$Res> {
  __$VideoItemCopyWithImpl(this._self, this._then);

  final _VideoItem _self;
  final $Res Function(_VideoItem) _then;

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? summary = freezed,
    Object? date = freezed,
    Object? visitor_count = freezed,
    Object? is_new = freezed,
    Object? priority = freezed,
    Object? youtube_id = freezed,
    Object? file = freezed,
  }) {
    return _then(_VideoItem(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      visitor_count: freezed == visitor_count
          ? _self.visitor_count
          : visitor_count // ignore: cast_nullable_to_non_nullable
              as String?,
      is_new: freezed == is_new
          ? _self.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as bool?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube_id: freezed == youtube_id
          ? _self.youtube_id
          : youtube_id // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$VideoPaginationData {
  @JsonKey(name: 'current_page', fromJson: _stringToInt)
  int? get currentPage;
  @JsonKey(name: 'per_page', fromJson: _stringToInt)
  int? get perPage;
  @JsonKey(name: 'total_categories', fromJson: _stringToInt)
  int? get totalCategories;
  @JsonKey(name: 'total_pages', fromJson: _stringToInt)
  int? get totalPages;
  @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
  bool? get hasNextPage;
  @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
  bool? get hasPreviousPage;
  @JsonKey(name: 'next_page', fromJson: _stringToInt)
  int? get nextPage;
  @JsonKey(name: 'previous_page', fromJson: _stringToInt)
  int? get previousPage;

  /// Create a copy of VideoPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoPaginationDataCopyWith<VideoPaginationData> get copyWith =>
      _$VideoPaginationDataCopyWithImpl<VideoPaginationData>(
          this as VideoPaginationData, _$identity);

  /// Serializes this VideoPaginationData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoPaginationData &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalCategories, totalCategories) ||
                other.totalCategories == totalCategories) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.previousPage, previousPage) ||
                other.previousPage == previousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      perPage,
      totalCategories,
      totalPages,
      hasNextPage,
      hasPreviousPage,
      nextPage,
      previousPage);

  @override
  String toString() {
    return 'VideoPaginationData(currentPage: $currentPage, perPage: $perPage, totalCategories: $totalCategories, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class $VideoPaginationDataCopyWith<$Res> {
  factory $VideoPaginationDataCopyWith(
          VideoPaginationData value, $Res Function(VideoPaginationData) _then) =
      _$VideoPaginationDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
      @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
      @JsonKey(name: 'total_categories', fromJson: _stringToInt)
      int? totalCategories,
      @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
      @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
      bool? hasNextPage,
      @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
      bool? hasPreviousPage,
      @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
      @JsonKey(name: 'previous_page', fromJson: _stringToInt)
      int? previousPage});
}

/// @nodoc
class _$VideoPaginationDataCopyWithImpl<$Res>
    implements $VideoPaginationDataCopyWith<$Res> {
  _$VideoPaginationDataCopyWithImpl(this._self, this._then);

  final VideoPaginationData _self;
  final $Res Function(VideoPaginationData) _then;

  /// Create a copy of VideoPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalCategories = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
    Object? hasPreviousPage = freezed,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
  }) {
    return _then(_self.copyWith(
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCategories: freezed == totalCategories
          ? _self.totalCategories
          : totalCategories // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _self.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _self.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      nextPage: freezed == nextPage
          ? _self.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      previousPage: freezed == previousPage
          ? _self.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VideoPaginationData].
extension VideoPaginationDataPatterns on VideoPaginationData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoPaginationData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoPaginationData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoPaginationData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoPaginationData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoPaginationData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoPaginationData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'current_page', fromJson: _stringToInt)
            int? currentPage,
            @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
            @JsonKey(name: 'total_categories', fromJson: _stringToInt)
            int? totalCategories,
            @JsonKey(name: 'total_pages', fromJson: _stringToInt)
            int? totalPages,
            @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
            bool? hasNextPage,
            @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
            bool? hasPreviousPage,
            @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
            @JsonKey(name: 'previous_page', fromJson: _stringToInt)
            int? previousPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoPaginationData() when $default != null:
        return $default(
            _that.currentPage,
            _that.perPage,
            _that.totalCategories,
            _that.totalPages,
            _that.hasNextPage,
            _that.hasPreviousPage,
            _that.nextPage,
            _that.previousPage);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'current_page', fromJson: _stringToInt)
            int? currentPage,
            @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
            @JsonKey(name: 'total_categories', fromJson: _stringToInt)
            int? totalCategories,
            @JsonKey(name: 'total_pages', fromJson: _stringToInt)
            int? totalPages,
            @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
            bool? hasNextPage,
            @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
            bool? hasPreviousPage,
            @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
            @JsonKey(name: 'previous_page', fromJson: _stringToInt)
            int? previousPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoPaginationData():
        return $default(
            _that.currentPage,
            _that.perPage,
            _that.totalCategories,
            _that.totalPages,
            _that.hasNextPage,
            _that.hasPreviousPage,
            _that.nextPage,
            _that.previousPage);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'current_page', fromJson: _stringToInt)
            int? currentPage,
            @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
            @JsonKey(name: 'total_categories', fromJson: _stringToInt)
            int? totalCategories,
            @JsonKey(name: 'total_pages', fromJson: _stringToInt)
            int? totalPages,
            @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
            bool? hasNextPage,
            @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
            bool? hasPreviousPage,
            @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
            @JsonKey(name: 'previous_page', fromJson: _stringToInt)
            int? previousPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoPaginationData() when $default != null:
        return $default(
            _that.currentPage,
            _that.perPage,
            _that.totalCategories,
            _that.totalPages,
            _that.hasNextPage,
            _that.hasPreviousPage,
            _that.nextPage,
            _that.previousPage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoPaginationData implements VideoPaginationData {
  const _VideoPaginationData(
      {@JsonKey(name: 'current_page', fromJson: _stringToInt) this.currentPage,
      @JsonKey(name: 'per_page', fromJson: _stringToInt) this.perPage,
      @JsonKey(name: 'total_categories', fromJson: _stringToInt)
      this.totalCategories,
      @JsonKey(name: 'total_pages', fromJson: _stringToInt) this.totalPages,
      @JsonKey(name: 'has_next_page', fromJson: _stringToBool) this.hasNextPage,
      @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
      this.hasPreviousPage,
      @JsonKey(name: 'next_page', fromJson: _stringToInt) this.nextPage,
      @JsonKey(name: 'previous_page', fromJson: _stringToInt)
      this.previousPage});
  factory _VideoPaginationData.fromJson(Map<String, dynamic> json) =>
      _$VideoPaginationDataFromJson(json);

  @override
  @JsonKey(name: 'current_page', fromJson: _stringToInt)
  final int? currentPage;
  @override
  @JsonKey(name: 'per_page', fromJson: _stringToInt)
  final int? perPage;
  @override
  @JsonKey(name: 'total_categories', fromJson: _stringToInt)
  final int? totalCategories;
  @override
  @JsonKey(name: 'total_pages', fromJson: _stringToInt)
  final int? totalPages;
  @override
  @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
  final bool? hasNextPage;
  @override
  @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
  final bool? hasPreviousPage;
  @override
  @JsonKey(name: 'next_page', fromJson: _stringToInt)
  final int? nextPage;
  @override
  @JsonKey(name: 'previous_page', fromJson: _stringToInt)
  final int? previousPage;

  /// Create a copy of VideoPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoPaginationDataCopyWith<_VideoPaginationData> get copyWith =>
      __$VideoPaginationDataCopyWithImpl<_VideoPaginationData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoPaginationDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoPaginationData &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalCategories, totalCategories) ||
                other.totalCategories == totalCategories) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.previousPage, previousPage) ||
                other.previousPage == previousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      perPage,
      totalCategories,
      totalPages,
      hasNextPage,
      hasPreviousPage,
      nextPage,
      previousPage);

  @override
  String toString() {
    return 'VideoPaginationData(currentPage: $currentPage, perPage: $perPage, totalCategories: $totalCategories, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class _$VideoPaginationDataCopyWith<$Res>
    implements $VideoPaginationDataCopyWith<$Res> {
  factory _$VideoPaginationDataCopyWith(_VideoPaginationData value,
          $Res Function(_VideoPaginationData) _then) =
      __$VideoPaginationDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
      @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
      @JsonKey(name: 'total_categories', fromJson: _stringToInt)
      int? totalCategories,
      @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
      @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
      bool? hasNextPage,
      @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
      bool? hasPreviousPage,
      @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
      @JsonKey(name: 'previous_page', fromJson: _stringToInt)
      int? previousPage});
}

/// @nodoc
class __$VideoPaginationDataCopyWithImpl<$Res>
    implements _$VideoPaginationDataCopyWith<$Res> {
  __$VideoPaginationDataCopyWithImpl(this._self, this._then);

  final _VideoPaginationData _self;
  final $Res Function(_VideoPaginationData) _then;

  /// Create a copy of VideoPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalCategories = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
    Object? hasPreviousPage = freezed,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
  }) {
    return _then(_VideoPaginationData(
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCategories: freezed == totalCategories
          ? _self.totalCategories
          : totalCategories // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _self.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _self.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      nextPage: freezed == nextPage
          ? _self.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      previousPage: freezed == previousPage
          ? _self.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$CategoryVideoContentResponse {
  bool? get success;
  CategoryVideoContentData? get data;
  String? get message;

  /// Create a copy of CategoryVideoContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryVideoContentResponseCopyWith<CategoryVideoContentResponse>
      get copyWith => _$CategoryVideoContentResponseCopyWithImpl<
              CategoryVideoContentResponse>(
          this as CategoryVideoContentResponse, _$identity);

  /// Serializes this CategoryVideoContentResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryVideoContentResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'CategoryVideoContentResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $CategoryVideoContentResponseCopyWith<$Res> {
  factory $CategoryVideoContentResponseCopyWith(
          CategoryVideoContentResponse value,
          $Res Function(CategoryVideoContentResponse) _then) =
      _$CategoryVideoContentResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, CategoryVideoContentData? data, String? message});

  $CategoryVideoContentDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CategoryVideoContentResponseCopyWithImpl<$Res>
    implements $CategoryVideoContentResponseCopyWith<$Res> {
  _$CategoryVideoContentResponseCopyWithImpl(this._self, this._then);

  final CategoryVideoContentResponse _self;
  final $Res Function(CategoryVideoContentResponse) _then;

  /// Create a copy of CategoryVideoContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryVideoContentData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CategoryVideoContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryVideoContentDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $CategoryVideoContentDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CategoryVideoContentResponse].
extension CategoryVideoContentResponsePatterns on CategoryVideoContentResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CategoryVideoContentResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CategoryVideoContentResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CategoryVideoContentResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool? success, CategoryVideoContentData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool? success, CategoryVideoContentData? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentResponse():
        return $default(_that.success, _that.data, _that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool? success, CategoryVideoContentData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryVideoContentResponse implements CategoryVideoContentResponse {
  const _CategoryVideoContentResponse({this.success, this.data, this.message});
  factory _CategoryVideoContentResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryVideoContentResponseFromJson(json);

  @override
  final bool? success;
  @override
  final CategoryVideoContentData? data;
  @override
  final String? message;

  /// Create a copy of CategoryVideoContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryVideoContentResponseCopyWith<_CategoryVideoContentResponse>
      get copyWith => __$CategoryVideoContentResponseCopyWithImpl<
          _CategoryVideoContentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryVideoContentResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryVideoContentResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'CategoryVideoContentResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$CategoryVideoContentResponseCopyWith<$Res>
    implements $CategoryVideoContentResponseCopyWith<$Res> {
  factory _$CategoryVideoContentResponseCopyWith(
          _CategoryVideoContentResponse value,
          $Res Function(_CategoryVideoContentResponse) _then) =
      __$CategoryVideoContentResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, CategoryVideoContentData? data, String? message});

  @override
  $CategoryVideoContentDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$CategoryVideoContentResponseCopyWithImpl<$Res>
    implements _$CategoryVideoContentResponseCopyWith<$Res> {
  __$CategoryVideoContentResponseCopyWithImpl(this._self, this._then);

  final _CategoryVideoContentResponse _self;
  final $Res Function(_CategoryVideoContentResponse) _then;

  /// Create a copy of CategoryVideoContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_CategoryVideoContentResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryVideoContentData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CategoryVideoContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryVideoContentDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $CategoryVideoContentDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$CategoryVideoContentData {
  VideoCategoryInfo? get category;
  List<VideoItem>? get content;
  VideoContentPagination? get pagination;

  /// Create a copy of CategoryVideoContentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryVideoContentDataCopyWith<CategoryVideoContentData> get copyWith =>
      _$CategoryVideoContentDataCopyWithImpl<CategoryVideoContentData>(
          this as CategoryVideoContentData, _$identity);

  /// Serializes this CategoryVideoContentData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryVideoContentData &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category,
      const DeepCollectionEquality().hash(content), pagination);

  @override
  String toString() {
    return 'CategoryVideoContentData(category: $category, content: $content, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class $CategoryVideoContentDataCopyWith<$Res> {
  factory $CategoryVideoContentDataCopyWith(CategoryVideoContentData value,
          $Res Function(CategoryVideoContentData) _then) =
      _$CategoryVideoContentDataCopyWithImpl;
  @useResult
  $Res call(
      {VideoCategoryInfo? category,
      List<VideoItem>? content,
      VideoContentPagination? pagination});

  $VideoCategoryInfoCopyWith<$Res>? get category;
  $VideoContentPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$CategoryVideoContentDataCopyWithImpl<$Res>
    implements $CategoryVideoContentDataCopyWith<$Res> {
  _$CategoryVideoContentDataCopyWithImpl(this._self, this._then);

  final CategoryVideoContentData _self;
  final $Res Function(CategoryVideoContentData) _then;

  /// Create a copy of CategoryVideoContentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? content = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_self.copyWith(
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as VideoCategoryInfo?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<VideoItem>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as VideoContentPagination?,
    ));
  }

  /// Create a copy of CategoryVideoContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoCategoryInfoCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $VideoCategoryInfoCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }

  /// Create a copy of CategoryVideoContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoContentPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $VideoContentPaginationCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CategoryVideoContentData].
extension CategoryVideoContentDataPatterns on CategoryVideoContentData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CategoryVideoContentData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CategoryVideoContentData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CategoryVideoContentData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(VideoCategoryInfo? category, List<VideoItem>? content,
            VideoContentPagination? pagination)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentData() when $default != null:
        return $default(_that.category, _that.content, _that.pagination);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(VideoCategoryInfo? category, List<VideoItem>? content,
            VideoContentPagination? pagination)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentData():
        return $default(_that.category, _that.content, _that.pagination);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(VideoCategoryInfo? category, List<VideoItem>? content,
            VideoContentPagination? pagination)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryVideoContentData() when $default != null:
        return $default(_that.category, _that.content, _that.pagination);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryVideoContentData implements CategoryVideoContentData {
  const _CategoryVideoContentData(
      {this.category, final List<VideoItem>? content, this.pagination})
      : _content = content;
  factory _CategoryVideoContentData.fromJson(Map<String, dynamic> json) =>
      _$CategoryVideoContentDataFromJson(json);

  @override
  final VideoCategoryInfo? category;
  final List<VideoItem>? _content;
  @override
  List<VideoItem>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final VideoContentPagination? pagination;

  /// Create a copy of CategoryVideoContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryVideoContentDataCopyWith<_CategoryVideoContentData> get copyWith =>
      __$CategoryVideoContentDataCopyWithImpl<_CategoryVideoContentData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryVideoContentDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryVideoContentData &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category,
      const DeepCollectionEquality().hash(_content), pagination);

  @override
  String toString() {
    return 'CategoryVideoContentData(category: $category, content: $content, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class _$CategoryVideoContentDataCopyWith<$Res>
    implements $CategoryVideoContentDataCopyWith<$Res> {
  factory _$CategoryVideoContentDataCopyWith(_CategoryVideoContentData value,
          $Res Function(_CategoryVideoContentData) _then) =
      __$CategoryVideoContentDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {VideoCategoryInfo? category,
      List<VideoItem>? content,
      VideoContentPagination? pagination});

  @override
  $VideoCategoryInfoCopyWith<$Res>? get category;
  @override
  $VideoContentPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$CategoryVideoContentDataCopyWithImpl<$Res>
    implements _$CategoryVideoContentDataCopyWith<$Res> {
  __$CategoryVideoContentDataCopyWithImpl(this._self, this._then);

  final _CategoryVideoContentData _self;
  final $Res Function(_CategoryVideoContentData) _then;

  /// Create a copy of CategoryVideoContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = freezed,
    Object? content = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_CategoryVideoContentData(
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as VideoCategoryInfo?,
      content: freezed == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<VideoItem>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as VideoContentPagination?,
    ));
  }

  /// Create a copy of CategoryVideoContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoCategoryInfoCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $VideoCategoryInfoCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }

  /// Create a copy of CategoryVideoContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoContentPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $VideoContentPaginationCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// @nodoc
mixin _$VideoCategoryInfo {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  String? get title;
  String? get note;
  String? get type;
  String? get position;
  String? get language;

  /// Create a copy of VideoCategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoCategoryInfoCopyWith<VideoCategoryInfo> get copyWith =>
      _$VideoCategoryInfoCopyWithImpl<VideoCategoryInfo>(
          this as VideoCategoryInfo, _$identity);

  /// Serializes this VideoCategoryInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoCategoryInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, note, type, position, language);

  @override
  String toString() {
    return 'VideoCategoryInfo(id: $id, title: $title, note: $note, type: $type, position: $position, language: $language)';
  }
}

/// @nodoc
abstract mixin class $VideoCategoryInfoCopyWith<$Res> {
  factory $VideoCategoryInfoCopyWith(
          VideoCategoryInfo value, $Res Function(VideoCategoryInfo) _then) =
      _$VideoCategoryInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      String? title,
      String? note,
      String? type,
      String? position,
      String? language});
}

/// @nodoc
class _$VideoCategoryInfoCopyWithImpl<$Res>
    implements $VideoCategoryInfoCopyWith<$Res> {
  _$VideoCategoryInfoCopyWithImpl(this._self, this._then);

  final VideoCategoryInfo _self;
  final $Res Function(VideoCategoryInfo) _then;

  /// Create a copy of VideoCategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? note = freezed,
    Object? type = freezed,
    Object? position = freezed,
    Object? language = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VideoCategoryInfo].
extension VideoCategoryInfoPatterns on VideoCategoryInfo {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoCategoryInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoCategoryInfo() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoCategoryInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoCategoryInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoCategoryInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoCategoryInfo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(fromJson: _stringToInt) int? id, String? title,
            String? note, String? type, String? position, String? language)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoCategoryInfo() when $default != null:
        return $default(_that.id, _that.title, _that.note, _that.type,
            _that.position, _that.language);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(fromJson: _stringToInt) int? id, String? title,
            String? note, String? type, String? position, String? language)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoCategoryInfo():
        return $default(_that.id, _that.title, _that.note, _that.type,
            _that.position, _that.language);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(fromJson: _stringToInt) int? id, String? title,
            String? note, String? type, String? position, String? language)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoCategoryInfo() when $default != null:
        return $default(_that.id, _that.title, _that.note, _that.type,
            _that.position, _that.language);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoCategoryInfo implements VideoCategoryInfo {
  const _VideoCategoryInfo(
      {@JsonKey(fromJson: _stringToInt) this.id,
      this.title,
      this.note,
      this.type,
      this.position,
      this.language});
  factory _VideoCategoryInfo.fromJson(Map<String, dynamic> json) =>
      _$VideoCategoryInfoFromJson(json);

  @override
  @JsonKey(fromJson: _stringToInt)
  final int? id;
  @override
  final String? title;
  @override
  final String? note;
  @override
  final String? type;
  @override
  final String? position;
  @override
  final String? language;

  /// Create a copy of VideoCategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoCategoryInfoCopyWith<_VideoCategoryInfo> get copyWith =>
      __$VideoCategoryInfoCopyWithImpl<_VideoCategoryInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoCategoryInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoCategoryInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, note, type, position, language);

  @override
  String toString() {
    return 'VideoCategoryInfo(id: $id, title: $title, note: $note, type: $type, position: $position, language: $language)';
  }
}

/// @nodoc
abstract mixin class _$VideoCategoryInfoCopyWith<$Res>
    implements $VideoCategoryInfoCopyWith<$Res> {
  factory _$VideoCategoryInfoCopyWith(
          _VideoCategoryInfo value, $Res Function(_VideoCategoryInfo) _then) =
      __$VideoCategoryInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      String? title,
      String? note,
      String? type,
      String? position,
      String? language});
}

/// @nodoc
class __$VideoCategoryInfoCopyWithImpl<$Res>
    implements _$VideoCategoryInfoCopyWith<$Res> {
  __$VideoCategoryInfoCopyWithImpl(this._self, this._then);

  final _VideoCategoryInfo _self;
  final $Res Function(_VideoCategoryInfo) _then;

  /// Create a copy of VideoCategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? note = freezed,
    Object? type = freezed,
    Object? position = freezed,
    Object? language = freezed,
  }) {
    return _then(_VideoCategoryInfo(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$VideoContentPagination {
  @JsonKey(name: 'current_page', fromJson: _stringToInt)
  int? get currentPage;
  @JsonKey(name: 'per_page', fromJson: _stringToInt)
  int? get perPage;
  @JsonKey(name: 'total_items', fromJson: _stringToInt)
  int? get totalItems;
  @JsonKey(name: 'total_pages', fromJson: _stringToInt)
  int? get totalPages;
  @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
  bool? get hasNextPage;
  @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
  bool? get hasPreviousPage;
  @JsonKey(name: 'next_page', fromJson: _stringToInt)
  int? get nextPage;
  @JsonKey(name: 'previous_page', fromJson: _stringToInt)
  int? get previousPage;

  /// Create a copy of VideoContentPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoContentPaginationCopyWith<VideoContentPagination> get copyWith =>
      _$VideoContentPaginationCopyWithImpl<VideoContentPagination>(
          this as VideoContentPagination, _$identity);

  /// Serializes this VideoContentPagination to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoContentPagination &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.previousPage, previousPage) ||
                other.previousPage == previousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, perPage, totalItems,
      totalPages, hasNextPage, hasPreviousPage, nextPage, previousPage);

  @override
  String toString() {
    return 'VideoContentPagination(currentPage: $currentPage, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class $VideoContentPaginationCopyWith<$Res> {
  factory $VideoContentPaginationCopyWith(VideoContentPagination value,
          $Res Function(VideoContentPagination) _then) =
      _$VideoContentPaginationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
      @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
      @JsonKey(name: 'total_items', fromJson: _stringToInt) int? totalItems,
      @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
      @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
      bool? hasNextPage,
      @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
      bool? hasPreviousPage,
      @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
      @JsonKey(name: 'previous_page', fromJson: _stringToInt)
      int? previousPage});
}

/// @nodoc
class _$VideoContentPaginationCopyWithImpl<$Res>
    implements $VideoContentPaginationCopyWith<$Res> {
  _$VideoContentPaginationCopyWithImpl(this._self, this._then);

  final VideoContentPagination _self;
  final $Res Function(VideoContentPagination) _then;

  /// Create a copy of VideoContentPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalItems = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
    Object? hasPreviousPage = freezed,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
  }) {
    return _then(_self.copyWith(
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalItems: freezed == totalItems
          ? _self.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _self.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _self.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      nextPage: freezed == nextPage
          ? _self.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      previousPage: freezed == previousPage
          ? _self.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VideoContentPagination].
extension VideoContentPaginationPatterns on VideoContentPagination {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoContentPagination value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoContentPagination() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoContentPagination value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoContentPagination():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoContentPagination value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoContentPagination() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'current_page', fromJson: _stringToInt)
            int? currentPage,
            @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
            @JsonKey(name: 'total_items', fromJson: _stringToInt)
            int? totalItems,
            @JsonKey(name: 'total_pages', fromJson: _stringToInt)
            int? totalPages,
            @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
            bool? hasNextPage,
            @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
            bool? hasPreviousPage,
            @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
            @JsonKey(name: 'previous_page', fromJson: _stringToInt)
            int? previousPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoContentPagination() when $default != null:
        return $default(
            _that.currentPage,
            _that.perPage,
            _that.totalItems,
            _that.totalPages,
            _that.hasNextPage,
            _that.hasPreviousPage,
            _that.nextPage,
            _that.previousPage);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'current_page', fromJson: _stringToInt)
            int? currentPage,
            @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
            @JsonKey(name: 'total_items', fromJson: _stringToInt)
            int? totalItems,
            @JsonKey(name: 'total_pages', fromJson: _stringToInt)
            int? totalPages,
            @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
            bool? hasNextPage,
            @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
            bool? hasPreviousPage,
            @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
            @JsonKey(name: 'previous_page', fromJson: _stringToInt)
            int? previousPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoContentPagination():
        return $default(
            _that.currentPage,
            _that.perPage,
            _that.totalItems,
            _that.totalPages,
            _that.hasNextPage,
            _that.hasPreviousPage,
            _that.nextPage,
            _that.previousPage);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'current_page', fromJson: _stringToInt)
            int? currentPage,
            @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
            @JsonKey(name: 'total_items', fromJson: _stringToInt)
            int? totalItems,
            @JsonKey(name: 'total_pages', fromJson: _stringToInt)
            int? totalPages,
            @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
            bool? hasNextPage,
            @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
            bool? hasPreviousPage,
            @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
            @JsonKey(name: 'previous_page', fromJson: _stringToInt)
            int? previousPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoContentPagination() when $default != null:
        return $default(
            _that.currentPage,
            _that.perPage,
            _that.totalItems,
            _that.totalPages,
            _that.hasNextPage,
            _that.hasPreviousPage,
            _that.nextPage,
            _that.previousPage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoContentPagination implements VideoContentPagination {
  const _VideoContentPagination(
      {@JsonKey(name: 'current_page', fromJson: _stringToInt) this.currentPage,
      @JsonKey(name: 'per_page', fromJson: _stringToInt) this.perPage,
      @JsonKey(name: 'total_items', fromJson: _stringToInt) this.totalItems,
      @JsonKey(name: 'total_pages', fromJson: _stringToInt) this.totalPages,
      @JsonKey(name: 'has_next_page', fromJson: _stringToBool) this.hasNextPage,
      @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
      this.hasPreviousPage,
      @JsonKey(name: 'next_page', fromJson: _stringToInt) this.nextPage,
      @JsonKey(name: 'previous_page', fromJson: _stringToInt)
      this.previousPage});
  factory _VideoContentPagination.fromJson(Map<String, dynamic> json) =>
      _$VideoContentPaginationFromJson(json);

  @override
  @JsonKey(name: 'current_page', fromJson: _stringToInt)
  final int? currentPage;
  @override
  @JsonKey(name: 'per_page', fromJson: _stringToInt)
  final int? perPage;
  @override
  @JsonKey(name: 'total_items', fromJson: _stringToInt)
  final int? totalItems;
  @override
  @JsonKey(name: 'total_pages', fromJson: _stringToInt)
  final int? totalPages;
  @override
  @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
  final bool? hasNextPage;
  @override
  @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
  final bool? hasPreviousPage;
  @override
  @JsonKey(name: 'next_page', fromJson: _stringToInt)
  final int? nextPage;
  @override
  @JsonKey(name: 'previous_page', fromJson: _stringToInt)
  final int? previousPage;

  /// Create a copy of VideoContentPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoContentPaginationCopyWith<_VideoContentPagination> get copyWith =>
      __$VideoContentPaginationCopyWithImpl<_VideoContentPagination>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoContentPaginationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoContentPagination &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.previousPage, previousPage) ||
                other.previousPage == previousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, perPage, totalItems,
      totalPages, hasNextPage, hasPreviousPage, nextPage, previousPage);

  @override
  String toString() {
    return 'VideoContentPagination(currentPage: $currentPage, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class _$VideoContentPaginationCopyWith<$Res>
    implements $VideoContentPaginationCopyWith<$Res> {
  factory _$VideoContentPaginationCopyWith(_VideoContentPagination value,
          $Res Function(_VideoContentPagination) _then) =
      __$VideoContentPaginationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
      @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
      @JsonKey(name: 'total_items', fromJson: _stringToInt) int? totalItems,
      @JsonKey(name: 'total_pages', fromJson: _stringToInt) int? totalPages,
      @JsonKey(name: 'has_next_page', fromJson: _stringToBool)
      bool? hasNextPage,
      @JsonKey(name: 'has_previous_page', fromJson: _stringToBool)
      bool? hasPreviousPage,
      @JsonKey(name: 'next_page', fromJson: _stringToInt) int? nextPage,
      @JsonKey(name: 'previous_page', fromJson: _stringToInt)
      int? previousPage});
}

/// @nodoc
class __$VideoContentPaginationCopyWithImpl<$Res>
    implements _$VideoContentPaginationCopyWith<$Res> {
  __$VideoContentPaginationCopyWithImpl(this._self, this._then);

  final _VideoContentPagination _self;
  final $Res Function(_VideoContentPagination) _then;

  /// Create a copy of VideoContentPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalItems = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
    Object? hasPreviousPage = freezed,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
  }) {
    return _then(_VideoContentPagination(
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalItems: freezed == totalItems
          ? _self.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _self.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _self.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      nextPage: freezed == nextPage
          ? _self.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      previousPage: freezed == previousPage
          ? _self.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$VideoDetailResponse {
  bool? get success;
  VideoDetailData? get data;
  String? get message;

  /// Create a copy of VideoDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoDetailResponseCopyWith<VideoDetailResponse> get copyWith =>
      _$VideoDetailResponseCopyWithImpl<VideoDetailResponse>(
          this as VideoDetailResponse, _$identity);

  /// Serializes this VideoDetailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoDetailResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'VideoDetailResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $VideoDetailResponseCopyWith<$Res> {
  factory $VideoDetailResponseCopyWith(
          VideoDetailResponse value, $Res Function(VideoDetailResponse) _then) =
      _$VideoDetailResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, VideoDetailData? data, String? message});

  $VideoDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VideoDetailResponseCopyWithImpl<$Res>
    implements $VideoDetailResponseCopyWith<$Res> {
  _$VideoDetailResponseCopyWithImpl(this._self, this._then);

  final VideoDetailResponse _self;
  final $Res Function(VideoDetailResponse) _then;

  /// Create a copy of VideoDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as VideoDetailData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of VideoDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $VideoDetailDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VideoDetailResponse].
extension VideoDetailResponsePatterns on VideoDetailResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoDetailResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoDetailResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoDetailResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoDetailResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool? success, VideoDetailData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoDetailResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool? success, VideoDetailData? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailResponse():
        return $default(_that.success, _that.data, _that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool? success, VideoDetailData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoDetailResponse implements VideoDetailResponse {
  const _VideoDetailResponse({this.success, this.data, this.message});
  factory _VideoDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailResponseFromJson(json);

  @override
  final bool? success;
  @override
  final VideoDetailData? data;
  @override
  final String? message;

  /// Create a copy of VideoDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoDetailResponseCopyWith<_VideoDetailResponse> get copyWith =>
      __$VideoDetailResponseCopyWithImpl<_VideoDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoDetailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoDetailResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'VideoDetailResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$VideoDetailResponseCopyWith<$Res>
    implements $VideoDetailResponseCopyWith<$Res> {
  factory _$VideoDetailResponseCopyWith(_VideoDetailResponse value,
          $Res Function(_VideoDetailResponse) _then) =
      __$VideoDetailResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, VideoDetailData? data, String? message});

  @override
  $VideoDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$VideoDetailResponseCopyWithImpl<$Res>
    implements _$VideoDetailResponseCopyWith<$Res> {
  __$VideoDetailResponseCopyWithImpl(this._self, this._then);

  final _VideoDetailResponse _self;
  final $Res Function(_VideoDetailResponse) _then;

  /// Create a copy of VideoDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_VideoDetailResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as VideoDetailData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of VideoDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $VideoDetailDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$VideoDetailData {
  @JsonKey(name: 'video_id', fromJson: _stringToInt)
  int? get videoId;
  @JsonKey(name: 'video_cat_id')
  String? get videoCatId;
  @JsonKey(name: 'video_title')
  String? get videoTitle;
  @JsonKey(name: 'video_ts')
  String? get videoTs;
  @JsonKey(name: 'video_summary')
  String? get videoSummary;
  @JsonKey(name: 'video_des')
  String? get videoDes;
  @JsonKey(name: 'video_pic')
  String? get videoPic;
  @JsonKey(name: 'video_pic_pos')
  String? get videoPicPos;
  @JsonKey(name: 'video_visitor', fromJson: _stringToInt)
  int? get videoVisitor;
  @JsonKey(name: 'video_is_new', fromJson: _stringToBool)
  bool? get videoIsNew;
  @JsonKey(name: 'video_priority')
  String? get videoPriority;
  @JsonKey(name: 'video_active_vote', fromJson: _stringToBool)
  bool? get videoActiveVote;
  @JsonKey(name: 'video_active_hint', fromJson: _stringToBool)
  bool? get videoActiveHint;
  @JsonKey(name: 'video_active', fromJson: _stringToBool)
  bool? get videoActive;
  @JsonKey(name: 'video_date')
  String? get videoDate;
  @JsonKey(name: 'video_pic_active', fromJson: _stringToBool)
  bool? get videoPicActive;
  @JsonKey(name: 'video_last_video', fromJson: _stringToBool)
  bool? get videoLastVideo;
  @JsonKey(name: 'video_publisher_id')
  String? get videoPublisherId;
  @JsonKey(name: 'video_source')
  String? get videoSource;
  @JsonKey(name: 'video_source_url')
  String? get videoSourceUrl;
  @JsonKey(name: 'video_youtube_id')
  String? get videoYoutubeId;
  @JsonKey(name: 'video_file')
  String? get videoFile;
  @JsonKey(name: 'video_user_add_hint_nsup', fromJson: _stringToBool)
  bool? get videoUserAddHintNsup;
  @JsonKey(name: 'video_file_url')
  String? get videoFileUrl;
  VideoDetailCategory? get category;

  /// Create a copy of VideoDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoDetailDataCopyWith<VideoDetailData> get copyWith =>
      _$VideoDetailDataCopyWithImpl<VideoDetailData>(
          this as VideoDetailData, _$identity);

  /// Serializes this VideoDetailData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoDetailData &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.videoCatId, videoCatId) ||
                other.videoCatId == videoCatId) &&
            (identical(other.videoTitle, videoTitle) ||
                other.videoTitle == videoTitle) &&
            (identical(other.videoTs, videoTs) || other.videoTs == videoTs) &&
            (identical(other.videoSummary, videoSummary) ||
                other.videoSummary == videoSummary) &&
            (identical(other.videoDes, videoDes) ||
                other.videoDes == videoDes) &&
            (identical(other.videoPic, videoPic) ||
                other.videoPic == videoPic) &&
            (identical(other.videoPicPos, videoPicPos) ||
                other.videoPicPos == videoPicPos) &&
            (identical(other.videoVisitor, videoVisitor) ||
                other.videoVisitor == videoVisitor) &&
            (identical(other.videoIsNew, videoIsNew) ||
                other.videoIsNew == videoIsNew) &&
            (identical(other.videoPriority, videoPriority) ||
                other.videoPriority == videoPriority) &&
            (identical(other.videoActiveVote, videoActiveVote) ||
                other.videoActiveVote == videoActiveVote) &&
            (identical(other.videoActiveHint, videoActiveHint) ||
                other.videoActiveHint == videoActiveHint) &&
            (identical(other.videoActive, videoActive) ||
                other.videoActive == videoActive) &&
            (identical(other.videoDate, videoDate) ||
                other.videoDate == videoDate) &&
            (identical(other.videoPicActive, videoPicActive) ||
                other.videoPicActive == videoPicActive) &&
            (identical(other.videoLastVideo, videoLastVideo) ||
                other.videoLastVideo == videoLastVideo) &&
            (identical(other.videoPublisherId, videoPublisherId) ||
                other.videoPublisherId == videoPublisherId) &&
            (identical(other.videoSource, videoSource) ||
                other.videoSource == videoSource) &&
            (identical(other.videoSourceUrl, videoSourceUrl) ||
                other.videoSourceUrl == videoSourceUrl) &&
            (identical(other.videoYoutubeId, videoYoutubeId) ||
                other.videoYoutubeId == videoYoutubeId) &&
            (identical(other.videoFile, videoFile) ||
                other.videoFile == videoFile) &&
            (identical(other.videoUserAddHintNsup, videoUserAddHintNsup) ||
                other.videoUserAddHintNsup == videoUserAddHintNsup) &&
            (identical(other.videoFileUrl, videoFileUrl) ||
                other.videoFileUrl == videoFileUrl) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        videoId,
        videoCatId,
        videoTitle,
        videoTs,
        videoSummary,
        videoDes,
        videoPic,
        videoPicPos,
        videoVisitor,
        videoIsNew,
        videoPriority,
        videoActiveVote,
        videoActiveHint,
        videoActive,
        videoDate,
        videoPicActive,
        videoLastVideo,
        videoPublisherId,
        videoSource,
        videoSourceUrl,
        videoYoutubeId,
        videoFile,
        videoUserAddHintNsup,
        videoFileUrl,
        category
      ]);

  @override
  String toString() {
    return 'VideoDetailData(videoId: $videoId, videoCatId: $videoCatId, videoTitle: $videoTitle, videoTs: $videoTs, videoSummary: $videoSummary, videoDes: $videoDes, videoPic: $videoPic, videoPicPos: $videoPicPos, videoVisitor: $videoVisitor, videoIsNew: $videoIsNew, videoPriority: $videoPriority, videoActiveVote: $videoActiveVote, videoActiveHint: $videoActiveHint, videoActive: $videoActive, videoDate: $videoDate, videoPicActive: $videoPicActive, videoLastVideo: $videoLastVideo, videoPublisherId: $videoPublisherId, videoSource: $videoSource, videoSourceUrl: $videoSourceUrl, videoYoutubeId: $videoYoutubeId, videoFile: $videoFile, videoUserAddHintNsup: $videoUserAddHintNsup, videoFileUrl: $videoFileUrl, category: $category)';
  }
}

/// @nodoc
abstract mixin class $VideoDetailDataCopyWith<$Res> {
  factory $VideoDetailDataCopyWith(
          VideoDetailData value, $Res Function(VideoDetailData) _then) =
      _$VideoDetailDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'video_id', fromJson: _stringToInt) int? videoId,
      @JsonKey(name: 'video_cat_id') String? videoCatId,
      @JsonKey(name: 'video_title') String? videoTitle,
      @JsonKey(name: 'video_ts') String? videoTs,
      @JsonKey(name: 'video_summary') String? videoSummary,
      @JsonKey(name: 'video_des') String? videoDes,
      @JsonKey(name: 'video_pic') String? videoPic,
      @JsonKey(name: 'video_pic_pos') String? videoPicPos,
      @JsonKey(name: 'video_visitor', fromJson: _stringToInt) int? videoVisitor,
      @JsonKey(name: 'video_is_new', fromJson: _stringToBool) bool? videoIsNew,
      @JsonKey(name: 'video_priority') String? videoPriority,
      @JsonKey(name: 'video_active_vote', fromJson: _stringToBool)
      bool? videoActiveVote,
      @JsonKey(name: 'video_active_hint', fromJson: _stringToBool)
      bool? videoActiveHint,
      @JsonKey(name: 'video_active', fromJson: _stringToBool) bool? videoActive,
      @JsonKey(name: 'video_date') String? videoDate,
      @JsonKey(name: 'video_pic_active', fromJson: _stringToBool)
      bool? videoPicActive,
      @JsonKey(name: 'video_last_video', fromJson: _stringToBool)
      bool? videoLastVideo,
      @JsonKey(name: 'video_publisher_id') String? videoPublisherId,
      @JsonKey(name: 'video_source') String? videoSource,
      @JsonKey(name: 'video_source_url') String? videoSourceUrl,
      @JsonKey(name: 'video_youtube_id') String? videoYoutubeId,
      @JsonKey(name: 'video_file') String? videoFile,
      @JsonKey(name: 'video_user_add_hint_nsup', fromJson: _stringToBool)
      bool? videoUserAddHintNsup,
      @JsonKey(name: 'video_file_url') String? videoFileUrl,
      VideoDetailCategory? category});

  $VideoDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$VideoDetailDataCopyWithImpl<$Res>
    implements $VideoDetailDataCopyWith<$Res> {
  _$VideoDetailDataCopyWithImpl(this._self, this._then);

  final VideoDetailData _self;
  final $Res Function(VideoDetailData) _then;

  /// Create a copy of VideoDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
    Object? videoCatId = freezed,
    Object? videoTitle = freezed,
    Object? videoTs = freezed,
    Object? videoSummary = freezed,
    Object? videoDes = freezed,
    Object? videoPic = freezed,
    Object? videoPicPos = freezed,
    Object? videoVisitor = freezed,
    Object? videoIsNew = freezed,
    Object? videoPriority = freezed,
    Object? videoActiveVote = freezed,
    Object? videoActiveHint = freezed,
    Object? videoActive = freezed,
    Object? videoDate = freezed,
    Object? videoPicActive = freezed,
    Object? videoLastVideo = freezed,
    Object? videoPublisherId = freezed,
    Object? videoSource = freezed,
    Object? videoSourceUrl = freezed,
    Object? videoYoutubeId = freezed,
    Object? videoFile = freezed,
    Object? videoUserAddHintNsup = freezed,
    Object? videoFileUrl = freezed,
    Object? category = freezed,
  }) {
    return _then(_self.copyWith(
      videoId: freezed == videoId
          ? _self.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoCatId: freezed == videoCatId
          ? _self.videoCatId
          : videoCatId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoTitle: freezed == videoTitle
          ? _self.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      videoTs: freezed == videoTs
          ? _self.videoTs
          : videoTs // ignore: cast_nullable_to_non_nullable
              as String?,
      videoSummary: freezed == videoSummary
          ? _self.videoSummary
          : videoSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      videoDes: freezed == videoDes
          ? _self.videoDes
          : videoDes // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPic: freezed == videoPic
          ? _self.videoPic
          : videoPic // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPicPos: freezed == videoPicPos
          ? _self.videoPicPos
          : videoPicPos // ignore: cast_nullable_to_non_nullable
              as String?,
      videoVisitor: freezed == videoVisitor
          ? _self.videoVisitor
          : videoVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      videoIsNew: freezed == videoIsNew
          ? _self.videoIsNew
          : videoIsNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoPriority: freezed == videoPriority
          ? _self.videoPriority
          : videoPriority // ignore: cast_nullable_to_non_nullable
              as String?,
      videoActiveVote: freezed == videoActiveVote
          ? _self.videoActiveVote
          : videoActiveVote // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoActiveHint: freezed == videoActiveHint
          ? _self.videoActiveHint
          : videoActiveHint // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoActive: freezed == videoActive
          ? _self.videoActive
          : videoActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoDate: freezed == videoDate
          ? _self.videoDate
          : videoDate // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPicActive: freezed == videoPicActive
          ? _self.videoPicActive
          : videoPicActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoLastVideo: freezed == videoLastVideo
          ? _self.videoLastVideo
          : videoLastVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoPublisherId: freezed == videoPublisherId
          ? _self.videoPublisherId
          : videoPublisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoSource: freezed == videoSource
          ? _self.videoSource
          : videoSource // ignore: cast_nullable_to_non_nullable
              as String?,
      videoSourceUrl: freezed == videoSourceUrl
          ? _self.videoSourceUrl
          : videoSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoYoutubeId: freezed == videoYoutubeId
          ? _self.videoYoutubeId
          : videoYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoFile: freezed == videoFile
          ? _self.videoFile
          : videoFile // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUserAddHintNsup: freezed == videoUserAddHintNsup
          ? _self.videoUserAddHintNsup
          : videoUserAddHintNsup // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoFileUrl: freezed == videoFileUrl
          ? _self.videoFileUrl
          : videoFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as VideoDetailCategory?,
    ));
  }

  /// Create a copy of VideoDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $VideoDetailCategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VideoDetailData].
extension VideoDetailDataPatterns on VideoDetailData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoDetailData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoDetailData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoDetailData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoDetailData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'video_id', fromJson: _stringToInt) int? videoId,
            @JsonKey(name: 'video_cat_id') String? videoCatId,
            @JsonKey(name: 'video_title') String? videoTitle,
            @JsonKey(name: 'video_ts') String? videoTs,
            @JsonKey(name: 'video_summary') String? videoSummary,
            @JsonKey(name: 'video_des') String? videoDes,
            @JsonKey(name: 'video_pic') String? videoPic,
            @JsonKey(name: 'video_pic_pos') String? videoPicPos,
            @JsonKey(name: 'video_visitor', fromJson: _stringToInt)
            int? videoVisitor,
            @JsonKey(name: 'video_is_new', fromJson: _stringToBool)
            bool? videoIsNew,
            @JsonKey(name: 'video_priority') String? videoPriority,
            @JsonKey(name: 'video_active_vote', fromJson: _stringToBool)
            bool? videoActiveVote,
            @JsonKey(name: 'video_active_hint', fromJson: _stringToBool)
            bool? videoActiveHint,
            @JsonKey(name: 'video_active', fromJson: _stringToBool)
            bool? videoActive,
            @JsonKey(name: 'video_date') String? videoDate,
            @JsonKey(name: 'video_pic_active', fromJson: _stringToBool)
            bool? videoPicActive,
            @JsonKey(name: 'video_last_video', fromJson: _stringToBool)
            bool? videoLastVideo,
            @JsonKey(name: 'video_publisher_id') String? videoPublisherId,
            @JsonKey(name: 'video_source') String? videoSource,
            @JsonKey(name: 'video_source_url') String? videoSourceUrl,
            @JsonKey(name: 'video_youtube_id') String? videoYoutubeId,
            @JsonKey(name: 'video_file') String? videoFile,
            @JsonKey(name: 'video_user_add_hint_nsup', fromJson: _stringToBool)
            bool? videoUserAddHintNsup,
            @JsonKey(name: 'video_file_url') String? videoFileUrl,
            VideoDetailCategory? category)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoDetailData() when $default != null:
        return $default(
            _that.videoId,
            _that.videoCatId,
            _that.videoTitle,
            _that.videoTs,
            _that.videoSummary,
            _that.videoDes,
            _that.videoPic,
            _that.videoPicPos,
            _that.videoVisitor,
            _that.videoIsNew,
            _that.videoPriority,
            _that.videoActiveVote,
            _that.videoActiveHint,
            _that.videoActive,
            _that.videoDate,
            _that.videoPicActive,
            _that.videoLastVideo,
            _that.videoPublisherId,
            _that.videoSource,
            _that.videoSourceUrl,
            _that.videoYoutubeId,
            _that.videoFile,
            _that.videoUserAddHintNsup,
            _that.videoFileUrl,
            _that.category);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'video_id', fromJson: _stringToInt) int? videoId,
            @JsonKey(name: 'video_cat_id') String? videoCatId,
            @JsonKey(name: 'video_title') String? videoTitle,
            @JsonKey(name: 'video_ts') String? videoTs,
            @JsonKey(name: 'video_summary') String? videoSummary,
            @JsonKey(name: 'video_des') String? videoDes,
            @JsonKey(name: 'video_pic') String? videoPic,
            @JsonKey(name: 'video_pic_pos') String? videoPicPos,
            @JsonKey(name: 'video_visitor', fromJson: _stringToInt)
            int? videoVisitor,
            @JsonKey(name: 'video_is_new', fromJson: _stringToBool)
            bool? videoIsNew,
            @JsonKey(name: 'video_priority') String? videoPriority,
            @JsonKey(name: 'video_active_vote', fromJson: _stringToBool)
            bool? videoActiveVote,
            @JsonKey(name: 'video_active_hint', fromJson: _stringToBool)
            bool? videoActiveHint,
            @JsonKey(name: 'video_active', fromJson: _stringToBool)
            bool? videoActive,
            @JsonKey(name: 'video_date') String? videoDate,
            @JsonKey(name: 'video_pic_active', fromJson: _stringToBool)
            bool? videoPicActive,
            @JsonKey(name: 'video_last_video', fromJson: _stringToBool)
            bool? videoLastVideo,
            @JsonKey(name: 'video_publisher_id') String? videoPublisherId,
            @JsonKey(name: 'video_source') String? videoSource,
            @JsonKey(name: 'video_source_url') String? videoSourceUrl,
            @JsonKey(name: 'video_youtube_id') String? videoYoutubeId,
            @JsonKey(name: 'video_file') String? videoFile,
            @JsonKey(name: 'video_user_add_hint_nsup', fromJson: _stringToBool)
            bool? videoUserAddHintNsup,
            @JsonKey(name: 'video_file_url') String? videoFileUrl,
            VideoDetailCategory? category)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailData():
        return $default(
            _that.videoId,
            _that.videoCatId,
            _that.videoTitle,
            _that.videoTs,
            _that.videoSummary,
            _that.videoDes,
            _that.videoPic,
            _that.videoPicPos,
            _that.videoVisitor,
            _that.videoIsNew,
            _that.videoPriority,
            _that.videoActiveVote,
            _that.videoActiveHint,
            _that.videoActive,
            _that.videoDate,
            _that.videoPicActive,
            _that.videoLastVideo,
            _that.videoPublisherId,
            _that.videoSource,
            _that.videoSourceUrl,
            _that.videoYoutubeId,
            _that.videoFile,
            _that.videoUserAddHintNsup,
            _that.videoFileUrl,
            _that.category);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'video_id', fromJson: _stringToInt) int? videoId,
            @JsonKey(name: 'video_cat_id') String? videoCatId,
            @JsonKey(name: 'video_title') String? videoTitle,
            @JsonKey(name: 'video_ts') String? videoTs,
            @JsonKey(name: 'video_summary') String? videoSummary,
            @JsonKey(name: 'video_des') String? videoDes,
            @JsonKey(name: 'video_pic') String? videoPic,
            @JsonKey(name: 'video_pic_pos') String? videoPicPos,
            @JsonKey(name: 'video_visitor', fromJson: _stringToInt)
            int? videoVisitor,
            @JsonKey(name: 'video_is_new', fromJson: _stringToBool)
            bool? videoIsNew,
            @JsonKey(name: 'video_priority') String? videoPriority,
            @JsonKey(name: 'video_active_vote', fromJson: _stringToBool)
            bool? videoActiveVote,
            @JsonKey(name: 'video_active_hint', fromJson: _stringToBool)
            bool? videoActiveHint,
            @JsonKey(name: 'video_active', fromJson: _stringToBool)
            bool? videoActive,
            @JsonKey(name: 'video_date') String? videoDate,
            @JsonKey(name: 'video_pic_active', fromJson: _stringToBool)
            bool? videoPicActive,
            @JsonKey(name: 'video_last_video', fromJson: _stringToBool)
            bool? videoLastVideo,
            @JsonKey(name: 'video_publisher_id') String? videoPublisherId,
            @JsonKey(name: 'video_source') String? videoSource,
            @JsonKey(name: 'video_source_url') String? videoSourceUrl,
            @JsonKey(name: 'video_youtube_id') String? videoYoutubeId,
            @JsonKey(name: 'video_file') String? videoFile,
            @JsonKey(name: 'video_user_add_hint_nsup', fromJson: _stringToBool)
            bool? videoUserAddHintNsup,
            @JsonKey(name: 'video_file_url') String? videoFileUrl,
            VideoDetailCategory? category)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailData() when $default != null:
        return $default(
            _that.videoId,
            _that.videoCatId,
            _that.videoTitle,
            _that.videoTs,
            _that.videoSummary,
            _that.videoDes,
            _that.videoPic,
            _that.videoPicPos,
            _that.videoVisitor,
            _that.videoIsNew,
            _that.videoPriority,
            _that.videoActiveVote,
            _that.videoActiveHint,
            _that.videoActive,
            _that.videoDate,
            _that.videoPicActive,
            _that.videoLastVideo,
            _that.videoPublisherId,
            _that.videoSource,
            _that.videoSourceUrl,
            _that.videoYoutubeId,
            _that.videoFile,
            _that.videoUserAddHintNsup,
            _that.videoFileUrl,
            _that.category);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoDetailData implements VideoDetailData {
  const _VideoDetailData(
      {@JsonKey(name: 'video_id', fromJson: _stringToInt) this.videoId,
      @JsonKey(name: 'video_cat_id') this.videoCatId,
      @JsonKey(name: 'video_title') this.videoTitle,
      @JsonKey(name: 'video_ts') this.videoTs,
      @JsonKey(name: 'video_summary') this.videoSummary,
      @JsonKey(name: 'video_des') this.videoDes,
      @JsonKey(name: 'video_pic') this.videoPic,
      @JsonKey(name: 'video_pic_pos') this.videoPicPos,
      @JsonKey(name: 'video_visitor', fromJson: _stringToInt) this.videoVisitor,
      @JsonKey(name: 'video_is_new', fromJson: _stringToBool) this.videoIsNew,
      @JsonKey(name: 'video_priority') this.videoPriority,
      @JsonKey(name: 'video_active_vote', fromJson: _stringToBool)
      this.videoActiveVote,
      @JsonKey(name: 'video_active_hint', fromJson: _stringToBool)
      this.videoActiveHint,
      @JsonKey(name: 'video_active', fromJson: _stringToBool) this.videoActive,
      @JsonKey(name: 'video_date') this.videoDate,
      @JsonKey(name: 'video_pic_active', fromJson: _stringToBool)
      this.videoPicActive,
      @JsonKey(name: 'video_last_video', fromJson: _stringToBool)
      this.videoLastVideo,
      @JsonKey(name: 'video_publisher_id') this.videoPublisherId,
      @JsonKey(name: 'video_source') this.videoSource,
      @JsonKey(name: 'video_source_url') this.videoSourceUrl,
      @JsonKey(name: 'video_youtube_id') this.videoYoutubeId,
      @JsonKey(name: 'video_file') this.videoFile,
      @JsonKey(name: 'video_user_add_hint_nsup', fromJson: _stringToBool)
      this.videoUserAddHintNsup,
      @JsonKey(name: 'video_file_url') this.videoFileUrl,
      this.category});
  factory _VideoDetailData.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailDataFromJson(json);

  @override
  @JsonKey(name: 'video_id', fromJson: _stringToInt)
  final int? videoId;
  @override
  @JsonKey(name: 'video_cat_id')
  final String? videoCatId;
  @override
  @JsonKey(name: 'video_title')
  final String? videoTitle;
  @override
  @JsonKey(name: 'video_ts')
  final String? videoTs;
  @override
  @JsonKey(name: 'video_summary')
  final String? videoSummary;
  @override
  @JsonKey(name: 'video_des')
  final String? videoDes;
  @override
  @JsonKey(name: 'video_pic')
  final String? videoPic;
  @override
  @JsonKey(name: 'video_pic_pos')
  final String? videoPicPos;
  @override
  @JsonKey(name: 'video_visitor', fromJson: _stringToInt)
  final int? videoVisitor;
  @override
  @JsonKey(name: 'video_is_new', fromJson: _stringToBool)
  final bool? videoIsNew;
  @override
  @JsonKey(name: 'video_priority')
  final String? videoPriority;
  @override
  @JsonKey(name: 'video_active_vote', fromJson: _stringToBool)
  final bool? videoActiveVote;
  @override
  @JsonKey(name: 'video_active_hint', fromJson: _stringToBool)
  final bool? videoActiveHint;
  @override
  @JsonKey(name: 'video_active', fromJson: _stringToBool)
  final bool? videoActive;
  @override
  @JsonKey(name: 'video_date')
  final String? videoDate;
  @override
  @JsonKey(name: 'video_pic_active', fromJson: _stringToBool)
  final bool? videoPicActive;
  @override
  @JsonKey(name: 'video_last_video', fromJson: _stringToBool)
  final bool? videoLastVideo;
  @override
  @JsonKey(name: 'video_publisher_id')
  final String? videoPublisherId;
  @override
  @JsonKey(name: 'video_source')
  final String? videoSource;
  @override
  @JsonKey(name: 'video_source_url')
  final String? videoSourceUrl;
  @override
  @JsonKey(name: 'video_youtube_id')
  final String? videoYoutubeId;
  @override
  @JsonKey(name: 'video_file')
  final String? videoFile;
  @override
  @JsonKey(name: 'video_user_add_hint_nsup', fromJson: _stringToBool)
  final bool? videoUserAddHintNsup;
  @override
  @JsonKey(name: 'video_file_url')
  final String? videoFileUrl;
  @override
  final VideoDetailCategory? category;

  /// Create a copy of VideoDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoDetailDataCopyWith<_VideoDetailData> get copyWith =>
      __$VideoDetailDataCopyWithImpl<_VideoDetailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoDetailDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoDetailData &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.videoCatId, videoCatId) ||
                other.videoCatId == videoCatId) &&
            (identical(other.videoTitle, videoTitle) ||
                other.videoTitle == videoTitle) &&
            (identical(other.videoTs, videoTs) || other.videoTs == videoTs) &&
            (identical(other.videoSummary, videoSummary) ||
                other.videoSummary == videoSummary) &&
            (identical(other.videoDes, videoDes) ||
                other.videoDes == videoDes) &&
            (identical(other.videoPic, videoPic) ||
                other.videoPic == videoPic) &&
            (identical(other.videoPicPos, videoPicPos) ||
                other.videoPicPos == videoPicPos) &&
            (identical(other.videoVisitor, videoVisitor) ||
                other.videoVisitor == videoVisitor) &&
            (identical(other.videoIsNew, videoIsNew) ||
                other.videoIsNew == videoIsNew) &&
            (identical(other.videoPriority, videoPriority) ||
                other.videoPriority == videoPriority) &&
            (identical(other.videoActiveVote, videoActiveVote) ||
                other.videoActiveVote == videoActiveVote) &&
            (identical(other.videoActiveHint, videoActiveHint) ||
                other.videoActiveHint == videoActiveHint) &&
            (identical(other.videoActive, videoActive) ||
                other.videoActive == videoActive) &&
            (identical(other.videoDate, videoDate) ||
                other.videoDate == videoDate) &&
            (identical(other.videoPicActive, videoPicActive) ||
                other.videoPicActive == videoPicActive) &&
            (identical(other.videoLastVideo, videoLastVideo) ||
                other.videoLastVideo == videoLastVideo) &&
            (identical(other.videoPublisherId, videoPublisherId) ||
                other.videoPublisherId == videoPublisherId) &&
            (identical(other.videoSource, videoSource) ||
                other.videoSource == videoSource) &&
            (identical(other.videoSourceUrl, videoSourceUrl) ||
                other.videoSourceUrl == videoSourceUrl) &&
            (identical(other.videoYoutubeId, videoYoutubeId) ||
                other.videoYoutubeId == videoYoutubeId) &&
            (identical(other.videoFile, videoFile) ||
                other.videoFile == videoFile) &&
            (identical(other.videoUserAddHintNsup, videoUserAddHintNsup) ||
                other.videoUserAddHintNsup == videoUserAddHintNsup) &&
            (identical(other.videoFileUrl, videoFileUrl) ||
                other.videoFileUrl == videoFileUrl) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        videoId,
        videoCatId,
        videoTitle,
        videoTs,
        videoSummary,
        videoDes,
        videoPic,
        videoPicPos,
        videoVisitor,
        videoIsNew,
        videoPriority,
        videoActiveVote,
        videoActiveHint,
        videoActive,
        videoDate,
        videoPicActive,
        videoLastVideo,
        videoPublisherId,
        videoSource,
        videoSourceUrl,
        videoYoutubeId,
        videoFile,
        videoUserAddHintNsup,
        videoFileUrl,
        category
      ]);

  @override
  String toString() {
    return 'VideoDetailData(videoId: $videoId, videoCatId: $videoCatId, videoTitle: $videoTitle, videoTs: $videoTs, videoSummary: $videoSummary, videoDes: $videoDes, videoPic: $videoPic, videoPicPos: $videoPicPos, videoVisitor: $videoVisitor, videoIsNew: $videoIsNew, videoPriority: $videoPriority, videoActiveVote: $videoActiveVote, videoActiveHint: $videoActiveHint, videoActive: $videoActive, videoDate: $videoDate, videoPicActive: $videoPicActive, videoLastVideo: $videoLastVideo, videoPublisherId: $videoPublisherId, videoSource: $videoSource, videoSourceUrl: $videoSourceUrl, videoYoutubeId: $videoYoutubeId, videoFile: $videoFile, videoUserAddHintNsup: $videoUserAddHintNsup, videoFileUrl: $videoFileUrl, category: $category)';
  }
}

/// @nodoc
abstract mixin class _$VideoDetailDataCopyWith<$Res>
    implements $VideoDetailDataCopyWith<$Res> {
  factory _$VideoDetailDataCopyWith(
          _VideoDetailData value, $Res Function(_VideoDetailData) _then) =
      __$VideoDetailDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'video_id', fromJson: _stringToInt) int? videoId,
      @JsonKey(name: 'video_cat_id') String? videoCatId,
      @JsonKey(name: 'video_title') String? videoTitle,
      @JsonKey(name: 'video_ts') String? videoTs,
      @JsonKey(name: 'video_summary') String? videoSummary,
      @JsonKey(name: 'video_des') String? videoDes,
      @JsonKey(name: 'video_pic') String? videoPic,
      @JsonKey(name: 'video_pic_pos') String? videoPicPos,
      @JsonKey(name: 'video_visitor', fromJson: _stringToInt) int? videoVisitor,
      @JsonKey(name: 'video_is_new', fromJson: _stringToBool) bool? videoIsNew,
      @JsonKey(name: 'video_priority') String? videoPriority,
      @JsonKey(name: 'video_active_vote', fromJson: _stringToBool)
      bool? videoActiveVote,
      @JsonKey(name: 'video_active_hint', fromJson: _stringToBool)
      bool? videoActiveHint,
      @JsonKey(name: 'video_active', fromJson: _stringToBool) bool? videoActive,
      @JsonKey(name: 'video_date') String? videoDate,
      @JsonKey(name: 'video_pic_active', fromJson: _stringToBool)
      bool? videoPicActive,
      @JsonKey(name: 'video_last_video', fromJson: _stringToBool)
      bool? videoLastVideo,
      @JsonKey(name: 'video_publisher_id') String? videoPublisherId,
      @JsonKey(name: 'video_source') String? videoSource,
      @JsonKey(name: 'video_source_url') String? videoSourceUrl,
      @JsonKey(name: 'video_youtube_id') String? videoYoutubeId,
      @JsonKey(name: 'video_file') String? videoFile,
      @JsonKey(name: 'video_user_add_hint_nsup', fromJson: _stringToBool)
      bool? videoUserAddHintNsup,
      @JsonKey(name: 'video_file_url') String? videoFileUrl,
      VideoDetailCategory? category});

  @override
  $VideoDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$VideoDetailDataCopyWithImpl<$Res>
    implements _$VideoDetailDataCopyWith<$Res> {
  __$VideoDetailDataCopyWithImpl(this._self, this._then);

  final _VideoDetailData _self;
  final $Res Function(_VideoDetailData) _then;

  /// Create a copy of VideoDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? videoId = freezed,
    Object? videoCatId = freezed,
    Object? videoTitle = freezed,
    Object? videoTs = freezed,
    Object? videoSummary = freezed,
    Object? videoDes = freezed,
    Object? videoPic = freezed,
    Object? videoPicPos = freezed,
    Object? videoVisitor = freezed,
    Object? videoIsNew = freezed,
    Object? videoPriority = freezed,
    Object? videoActiveVote = freezed,
    Object? videoActiveHint = freezed,
    Object? videoActive = freezed,
    Object? videoDate = freezed,
    Object? videoPicActive = freezed,
    Object? videoLastVideo = freezed,
    Object? videoPublisherId = freezed,
    Object? videoSource = freezed,
    Object? videoSourceUrl = freezed,
    Object? videoYoutubeId = freezed,
    Object? videoFile = freezed,
    Object? videoUserAddHintNsup = freezed,
    Object? videoFileUrl = freezed,
    Object? category = freezed,
  }) {
    return _then(_VideoDetailData(
      videoId: freezed == videoId
          ? _self.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoCatId: freezed == videoCatId
          ? _self.videoCatId
          : videoCatId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoTitle: freezed == videoTitle
          ? _self.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      videoTs: freezed == videoTs
          ? _self.videoTs
          : videoTs // ignore: cast_nullable_to_non_nullable
              as String?,
      videoSummary: freezed == videoSummary
          ? _self.videoSummary
          : videoSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      videoDes: freezed == videoDes
          ? _self.videoDes
          : videoDes // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPic: freezed == videoPic
          ? _self.videoPic
          : videoPic // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPicPos: freezed == videoPicPos
          ? _self.videoPicPos
          : videoPicPos // ignore: cast_nullable_to_non_nullable
              as String?,
      videoVisitor: freezed == videoVisitor
          ? _self.videoVisitor
          : videoVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      videoIsNew: freezed == videoIsNew
          ? _self.videoIsNew
          : videoIsNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoPriority: freezed == videoPriority
          ? _self.videoPriority
          : videoPriority // ignore: cast_nullable_to_non_nullable
              as String?,
      videoActiveVote: freezed == videoActiveVote
          ? _self.videoActiveVote
          : videoActiveVote // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoActiveHint: freezed == videoActiveHint
          ? _self.videoActiveHint
          : videoActiveHint // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoActive: freezed == videoActive
          ? _self.videoActive
          : videoActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoDate: freezed == videoDate
          ? _self.videoDate
          : videoDate // ignore: cast_nullable_to_non_nullable
              as String?,
      videoPicActive: freezed == videoPicActive
          ? _self.videoPicActive
          : videoPicActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoLastVideo: freezed == videoLastVideo
          ? _self.videoLastVideo
          : videoLastVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoPublisherId: freezed == videoPublisherId
          ? _self.videoPublisherId
          : videoPublisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoSource: freezed == videoSource
          ? _self.videoSource
          : videoSource // ignore: cast_nullable_to_non_nullable
              as String?,
      videoSourceUrl: freezed == videoSourceUrl
          ? _self.videoSourceUrl
          : videoSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoYoutubeId: freezed == videoYoutubeId
          ? _self.videoYoutubeId
          : videoYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoFile: freezed == videoFile
          ? _self.videoFile
          : videoFile // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUserAddHintNsup: freezed == videoUserAddHintNsup
          ? _self.videoUserAddHintNsup
          : videoUserAddHintNsup // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoFileUrl: freezed == videoFileUrl
          ? _self.videoFileUrl
          : videoFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as VideoDetailCategory?,
    ));
  }

  /// Create a copy of VideoDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $VideoDetailCategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// @nodoc
mixin _$VideoDetailCategory {
  @JsonKey(name: 'cat_id', fromJson: _stringToInt)
  int? get catId;
  @JsonKey(name: 'cat_father_id')
  String? get catFatherId;
  @JsonKey(name: 'cat_menus')
  String? get catMenus;
  @JsonKey(name: 'cat_title')
  String? get catTitle;
  @JsonKey(name: 'cat_note')
  String? get catNote;
  @JsonKey(name: 'cat_pic')
  String? get catPic;
  @JsonKey(name: 'cat_sup')
  String? get catSup;
  @JsonKey(name: 'cat_date')
  String? get catDate;
  @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
  bool? get catPicActive;
  @JsonKey(name: 'cat_lan')
  String? get catLan;
  @JsonKey(name: 'cat_pos')
  String? get catPos;
  @JsonKey(name: 'cat_active', fromJson: _stringToBool)
  bool? get catActive;
  @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
  bool? get catShowMenu;
  @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
  bool? get catShowMain;
  @JsonKey(name: 'cat_agent')
  String? get catAgent;

  /// Create a copy of VideoDetailCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoDetailCategoryCopyWith<VideoDetailCategory> get copyWith =>
      _$VideoDetailCategoryCopyWithImpl<VideoDetailCategory>(
          this as VideoDetailCategory, _$identity);

  /// Serializes this VideoDetailCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoDetailCategory &&
            (identical(other.catId, catId) || other.catId == catId) &&
            (identical(other.catFatherId, catFatherId) ||
                other.catFatherId == catFatherId) &&
            (identical(other.catMenus, catMenus) ||
                other.catMenus == catMenus) &&
            (identical(other.catTitle, catTitle) ||
                other.catTitle == catTitle) &&
            (identical(other.catNote, catNote) || other.catNote == catNote) &&
            (identical(other.catPic, catPic) || other.catPic == catPic) &&
            (identical(other.catSup, catSup) || other.catSup == catSup) &&
            (identical(other.catDate, catDate) || other.catDate == catDate) &&
            (identical(other.catPicActive, catPicActive) ||
                other.catPicActive == catPicActive) &&
            (identical(other.catLan, catLan) || other.catLan == catLan) &&
            (identical(other.catPos, catPos) || other.catPos == catPos) &&
            (identical(other.catActive, catActive) ||
                other.catActive == catActive) &&
            (identical(other.catShowMenu, catShowMenu) ||
                other.catShowMenu == catShowMenu) &&
            (identical(other.catShowMain, catShowMain) ||
                other.catShowMain == catShowMain) &&
            (identical(other.catAgent, catAgent) ||
                other.catAgent == catAgent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      catId,
      catFatherId,
      catMenus,
      catTitle,
      catNote,
      catPic,
      catSup,
      catDate,
      catPicActive,
      catLan,
      catPos,
      catActive,
      catShowMenu,
      catShowMain,
      catAgent);

  @override
  String toString() {
    return 'VideoDetailCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
  }
}

/// @nodoc
abstract mixin class $VideoDetailCategoryCopyWith<$Res> {
  factory $VideoDetailCategoryCopyWith(
          VideoDetailCategory value, $Res Function(VideoDetailCategory) _then) =
      _$VideoDetailCategoryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
      @JsonKey(name: 'cat_father_id') String? catFatherId,
      @JsonKey(name: 'cat_menus') String? catMenus,
      @JsonKey(name: 'cat_title') String? catTitle,
      @JsonKey(name: 'cat_note') String? catNote,
      @JsonKey(name: 'cat_pic') String? catPic,
      @JsonKey(name: 'cat_sup') String? catSup,
      @JsonKey(name: 'cat_date') String? catDate,
      @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
      bool? catPicActive,
      @JsonKey(name: 'cat_lan') String? catLan,
      @JsonKey(name: 'cat_pos') String? catPos,
      @JsonKey(name: 'cat_active', fromJson: _stringToBool) bool? catActive,
      @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
      bool? catShowMenu,
      @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
      bool? catShowMain,
      @JsonKey(name: 'cat_agent') String? catAgent});
}

/// @nodoc
class _$VideoDetailCategoryCopyWithImpl<$Res>
    implements $VideoDetailCategoryCopyWith<$Res> {
  _$VideoDetailCategoryCopyWithImpl(this._self, this._then);

  final VideoDetailCategory _self;
  final $Res Function(VideoDetailCategory) _then;

  /// Create a copy of VideoDetailCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = freezed,
    Object? catFatherId = freezed,
    Object? catMenus = freezed,
    Object? catTitle = freezed,
    Object? catNote = freezed,
    Object? catPic = freezed,
    Object? catSup = freezed,
    Object? catDate = freezed,
    Object? catPicActive = freezed,
    Object? catLan = freezed,
    Object? catPos = freezed,
    Object? catActive = freezed,
    Object? catShowMenu = freezed,
    Object? catShowMain = freezed,
    Object? catAgent = freezed,
  }) {
    return _then(_self.copyWith(
      catId: freezed == catId
          ? _self.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as int?,
      catFatherId: freezed == catFatherId
          ? _self.catFatherId
          : catFatherId // ignore: cast_nullable_to_non_nullable
              as String?,
      catMenus: freezed == catMenus
          ? _self.catMenus
          : catMenus // ignore: cast_nullable_to_non_nullable
              as String?,
      catTitle: freezed == catTitle
          ? _self.catTitle
          : catTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      catNote: freezed == catNote
          ? _self.catNote
          : catNote // ignore: cast_nullable_to_non_nullable
              as String?,
      catPic: freezed == catPic
          ? _self.catPic
          : catPic // ignore: cast_nullable_to_non_nullable
              as String?,
      catSup: freezed == catSup
          ? _self.catSup
          : catSup // ignore: cast_nullable_to_non_nullable
              as String?,
      catDate: freezed == catDate
          ? _self.catDate
          : catDate // ignore: cast_nullable_to_non_nullable
              as String?,
      catPicActive: freezed == catPicActive
          ? _self.catPicActive
          : catPicActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      catLan: freezed == catLan
          ? _self.catLan
          : catLan // ignore: cast_nullable_to_non_nullable
              as String?,
      catPos: freezed == catPos
          ? _self.catPos
          : catPos // ignore: cast_nullable_to_non_nullable
              as String?,
      catActive: freezed == catActive
          ? _self.catActive
          : catActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      catShowMenu: freezed == catShowMenu
          ? _self.catShowMenu
          : catShowMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
      catShowMain: freezed == catShowMain
          ? _self.catShowMain
          : catShowMain // ignore: cast_nullable_to_non_nullable
              as bool?,
      catAgent: freezed == catAgent
          ? _self.catAgent
          : catAgent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VideoDetailCategory].
extension VideoDetailCategoryPatterns on VideoDetailCategory {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoDetailCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoDetailCategory() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoDetailCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailCategory():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoDetailCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailCategory() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
            @JsonKey(name: 'cat_father_id') String? catFatherId,
            @JsonKey(name: 'cat_menus') String? catMenus,
            @JsonKey(name: 'cat_title') String? catTitle,
            @JsonKey(name: 'cat_note') String? catNote,
            @JsonKey(name: 'cat_pic') String? catPic,
            @JsonKey(name: 'cat_sup') String? catSup,
            @JsonKey(name: 'cat_date') String? catDate,
            @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
            bool? catPicActive,
            @JsonKey(name: 'cat_lan') String? catLan,
            @JsonKey(name: 'cat_pos') String? catPos,
            @JsonKey(name: 'cat_active', fromJson: _stringToBool)
            bool? catActive,
            @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
            bool? catShowMenu,
            @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
            bool? catShowMain,
            @JsonKey(name: 'cat_agent') String? catAgent)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoDetailCategory() when $default != null:
        return $default(
            _that.catId,
            _that.catFatherId,
            _that.catMenus,
            _that.catTitle,
            _that.catNote,
            _that.catPic,
            _that.catSup,
            _that.catDate,
            _that.catPicActive,
            _that.catLan,
            _that.catPos,
            _that.catActive,
            _that.catShowMenu,
            _that.catShowMain,
            _that.catAgent);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
            @JsonKey(name: 'cat_father_id') String? catFatherId,
            @JsonKey(name: 'cat_menus') String? catMenus,
            @JsonKey(name: 'cat_title') String? catTitle,
            @JsonKey(name: 'cat_note') String? catNote,
            @JsonKey(name: 'cat_pic') String? catPic,
            @JsonKey(name: 'cat_sup') String? catSup,
            @JsonKey(name: 'cat_date') String? catDate,
            @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
            bool? catPicActive,
            @JsonKey(name: 'cat_lan') String? catLan,
            @JsonKey(name: 'cat_pos') String? catPos,
            @JsonKey(name: 'cat_active', fromJson: _stringToBool)
            bool? catActive,
            @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
            bool? catShowMenu,
            @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
            bool? catShowMain,
            @JsonKey(name: 'cat_agent') String? catAgent)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailCategory():
        return $default(
            _that.catId,
            _that.catFatherId,
            _that.catMenus,
            _that.catTitle,
            _that.catNote,
            _that.catPic,
            _that.catSup,
            _that.catDate,
            _that.catPicActive,
            _that.catLan,
            _that.catPos,
            _that.catActive,
            _that.catShowMenu,
            _that.catShowMain,
            _that.catAgent);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
            @JsonKey(name: 'cat_father_id') String? catFatherId,
            @JsonKey(name: 'cat_menus') String? catMenus,
            @JsonKey(name: 'cat_title') String? catTitle,
            @JsonKey(name: 'cat_note') String? catNote,
            @JsonKey(name: 'cat_pic') String? catPic,
            @JsonKey(name: 'cat_sup') String? catSup,
            @JsonKey(name: 'cat_date') String? catDate,
            @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
            bool? catPicActive,
            @JsonKey(name: 'cat_lan') String? catLan,
            @JsonKey(name: 'cat_pos') String? catPos,
            @JsonKey(name: 'cat_active', fromJson: _stringToBool)
            bool? catActive,
            @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
            bool? catShowMenu,
            @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
            bool? catShowMain,
            @JsonKey(name: 'cat_agent') String? catAgent)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoDetailCategory() when $default != null:
        return $default(
            _that.catId,
            _that.catFatherId,
            _that.catMenus,
            _that.catTitle,
            _that.catNote,
            _that.catPic,
            _that.catSup,
            _that.catDate,
            _that.catPicActive,
            _that.catLan,
            _that.catPos,
            _that.catActive,
            _that.catShowMenu,
            _that.catShowMain,
            _that.catAgent);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoDetailCategory implements VideoDetailCategory {
  const _VideoDetailCategory(
      {@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId,
      @JsonKey(name: 'cat_father_id') this.catFatherId,
      @JsonKey(name: 'cat_menus') this.catMenus,
      @JsonKey(name: 'cat_title') this.catTitle,
      @JsonKey(name: 'cat_note') this.catNote,
      @JsonKey(name: 'cat_pic') this.catPic,
      @JsonKey(name: 'cat_sup') this.catSup,
      @JsonKey(name: 'cat_date') this.catDate,
      @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
      this.catPicActive,
      @JsonKey(name: 'cat_lan') this.catLan,
      @JsonKey(name: 'cat_pos') this.catPos,
      @JsonKey(name: 'cat_active', fromJson: _stringToBool) this.catActive,
      @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool) this.catShowMenu,
      @JsonKey(name: 'cat_show_main', fromJson: _stringToBool) this.catShowMain,
      @JsonKey(name: 'cat_agent') this.catAgent});
  factory _VideoDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailCategoryFromJson(json);

  @override
  @JsonKey(name: 'cat_id', fromJson: _stringToInt)
  final int? catId;
  @override
  @JsonKey(name: 'cat_father_id')
  final String? catFatherId;
  @override
  @JsonKey(name: 'cat_menus')
  final String? catMenus;
  @override
  @JsonKey(name: 'cat_title')
  final String? catTitle;
  @override
  @JsonKey(name: 'cat_note')
  final String? catNote;
  @override
  @JsonKey(name: 'cat_pic')
  final String? catPic;
  @override
  @JsonKey(name: 'cat_sup')
  final String? catSup;
  @override
  @JsonKey(name: 'cat_date')
  final String? catDate;
  @override
  @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
  final bool? catPicActive;
  @override
  @JsonKey(name: 'cat_lan')
  final String? catLan;
  @override
  @JsonKey(name: 'cat_pos')
  final String? catPos;
  @override
  @JsonKey(name: 'cat_active', fromJson: _stringToBool)
  final bool? catActive;
  @override
  @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
  final bool? catShowMenu;
  @override
  @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
  final bool? catShowMain;
  @override
  @JsonKey(name: 'cat_agent')
  final String? catAgent;

  /// Create a copy of VideoDetailCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoDetailCategoryCopyWith<_VideoDetailCategory> get copyWith =>
      __$VideoDetailCategoryCopyWithImpl<_VideoDetailCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoDetailCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoDetailCategory &&
            (identical(other.catId, catId) || other.catId == catId) &&
            (identical(other.catFatherId, catFatherId) ||
                other.catFatherId == catFatherId) &&
            (identical(other.catMenus, catMenus) ||
                other.catMenus == catMenus) &&
            (identical(other.catTitle, catTitle) ||
                other.catTitle == catTitle) &&
            (identical(other.catNote, catNote) || other.catNote == catNote) &&
            (identical(other.catPic, catPic) || other.catPic == catPic) &&
            (identical(other.catSup, catSup) || other.catSup == catSup) &&
            (identical(other.catDate, catDate) || other.catDate == catDate) &&
            (identical(other.catPicActive, catPicActive) ||
                other.catPicActive == catPicActive) &&
            (identical(other.catLan, catLan) || other.catLan == catLan) &&
            (identical(other.catPos, catPos) || other.catPos == catPos) &&
            (identical(other.catActive, catActive) ||
                other.catActive == catActive) &&
            (identical(other.catShowMenu, catShowMenu) ||
                other.catShowMenu == catShowMenu) &&
            (identical(other.catShowMain, catShowMain) ||
                other.catShowMain == catShowMain) &&
            (identical(other.catAgent, catAgent) ||
                other.catAgent == catAgent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      catId,
      catFatherId,
      catMenus,
      catTitle,
      catNote,
      catPic,
      catSup,
      catDate,
      catPicActive,
      catLan,
      catPos,
      catActive,
      catShowMenu,
      catShowMain,
      catAgent);

  @override
  String toString() {
    return 'VideoDetailCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
  }
}

/// @nodoc
abstract mixin class _$VideoDetailCategoryCopyWith<$Res>
    implements $VideoDetailCategoryCopyWith<$Res> {
  factory _$VideoDetailCategoryCopyWith(_VideoDetailCategory value,
          $Res Function(_VideoDetailCategory) _then) =
      __$VideoDetailCategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
      @JsonKey(name: 'cat_father_id') String? catFatherId,
      @JsonKey(name: 'cat_menus') String? catMenus,
      @JsonKey(name: 'cat_title') String? catTitle,
      @JsonKey(name: 'cat_note') String? catNote,
      @JsonKey(name: 'cat_pic') String? catPic,
      @JsonKey(name: 'cat_sup') String? catSup,
      @JsonKey(name: 'cat_date') String? catDate,
      @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
      bool? catPicActive,
      @JsonKey(name: 'cat_lan') String? catLan,
      @JsonKey(name: 'cat_pos') String? catPos,
      @JsonKey(name: 'cat_active', fromJson: _stringToBool) bool? catActive,
      @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
      bool? catShowMenu,
      @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
      bool? catShowMain,
      @JsonKey(name: 'cat_agent') String? catAgent});
}

/// @nodoc
class __$VideoDetailCategoryCopyWithImpl<$Res>
    implements _$VideoDetailCategoryCopyWith<$Res> {
  __$VideoDetailCategoryCopyWithImpl(this._self, this._then);

  final _VideoDetailCategory _self;
  final $Res Function(_VideoDetailCategory) _then;

  /// Create a copy of VideoDetailCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? catId = freezed,
    Object? catFatherId = freezed,
    Object? catMenus = freezed,
    Object? catTitle = freezed,
    Object? catNote = freezed,
    Object? catPic = freezed,
    Object? catSup = freezed,
    Object? catDate = freezed,
    Object? catPicActive = freezed,
    Object? catLan = freezed,
    Object? catPos = freezed,
    Object? catActive = freezed,
    Object? catShowMenu = freezed,
    Object? catShowMain = freezed,
    Object? catAgent = freezed,
  }) {
    return _then(_VideoDetailCategory(
      catId: freezed == catId
          ? _self.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as int?,
      catFatherId: freezed == catFatherId
          ? _self.catFatherId
          : catFatherId // ignore: cast_nullable_to_non_nullable
              as String?,
      catMenus: freezed == catMenus
          ? _self.catMenus
          : catMenus // ignore: cast_nullable_to_non_nullable
              as String?,
      catTitle: freezed == catTitle
          ? _self.catTitle
          : catTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      catNote: freezed == catNote
          ? _self.catNote
          : catNote // ignore: cast_nullable_to_non_nullable
              as String?,
      catPic: freezed == catPic
          ? _self.catPic
          : catPic // ignore: cast_nullable_to_non_nullable
              as String?,
      catSup: freezed == catSup
          ? _self.catSup
          : catSup // ignore: cast_nullable_to_non_nullable
              as String?,
      catDate: freezed == catDate
          ? _self.catDate
          : catDate // ignore: cast_nullable_to_non_nullable
              as String?,
      catPicActive: freezed == catPicActive
          ? _self.catPicActive
          : catPicActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      catLan: freezed == catLan
          ? _self.catLan
          : catLan // ignore: cast_nullable_to_non_nullable
              as String?,
      catPos: freezed == catPos
          ? _self.catPos
          : catPos // ignore: cast_nullable_to_non_nullable
              as String?,
      catActive: freezed == catActive
          ? _self.catActive
          : catActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      catShowMenu: freezed == catShowMenu
          ? _self.catShowMenu
          : catShowMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
      catShowMain: freezed == catShowMain
          ? _self.catShowMain
          : catShowMain // ignore: cast_nullable_to_non_nullable
              as bool?,
      catAgent: freezed == catAgent
          ? _self.catAgent
          : catAgent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
