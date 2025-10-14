// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticleResponse {
  bool? get success;
  ArticleData? get data;
  String? get message;

  /// Create a copy of ArticleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ArticleResponseCopyWith<ArticleResponse> get copyWith =>
      _$ArticleResponseCopyWithImpl<ArticleResponse>(
          this as ArticleResponse, _$identity);

  /// Serializes this ArticleResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArticleResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'ArticleResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ArticleResponseCopyWith<$Res> {
  factory $ArticleResponseCopyWith(
          ArticleResponse value, $Res Function(ArticleResponse) _then) =
      _$ArticleResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, ArticleData? data, String? message});

  $ArticleDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ArticleResponseCopyWithImpl<$Res>
    implements $ArticleResponseCopyWith<$Res> {
  _$ArticleResponseCopyWithImpl(this._self, this._then);

  final ArticleResponse _self;
  final $Res Function(ArticleResponse) _then;

  /// Create a copy of ArticleResponse
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
              as ArticleData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ArticleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $ArticleDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ArticleResponse].
extension ArticleResponsePatterns on ArticleResponse {
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
    TResult Function(_ArticleResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleResponse() when $default != null:
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
    TResult Function(_ArticleResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleResponse():
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
    TResult? Function(_ArticleResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleResponse() when $default != null:
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
    TResult Function(bool? success, ArticleData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleResponse() when $default != null:
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
    TResult Function(bool? success, ArticleData? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleResponse():
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
    TResult? Function(bool? success, ArticleData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ArticleResponse implements ArticleResponse {
  const _ArticleResponse({this.success, this.data, this.message});
  factory _ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseFromJson(json);

  @override
  final bool? success;
  @override
  final ArticleData? data;
  @override
  final String? message;

  /// Create a copy of ArticleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ArticleResponseCopyWith<_ArticleResponse> get copyWith =>
      __$ArticleResponseCopyWithImpl<_ArticleResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ArticleResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'ArticleResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ArticleResponseCopyWith<$Res>
    implements $ArticleResponseCopyWith<$Res> {
  factory _$ArticleResponseCopyWith(
          _ArticleResponse value, $Res Function(_ArticleResponse) _then) =
      __$ArticleResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, ArticleData? data, String? message});

  @override
  $ArticleDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$ArticleResponseCopyWithImpl<$Res>
    implements _$ArticleResponseCopyWith<$Res> {
  __$ArticleResponseCopyWithImpl(this._self, this._then);

  final _ArticleResponse _self;
  final $Res Function(_ArticleResponse) _then;

  /// Create a copy of ArticleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_ArticleResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as ArticleData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ArticleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $ArticleDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$ArticleData {
  String? get type;
  List<ArticleCategory>? get categories;
  PaginationData? get pagination;

  /// Create a copy of ArticleData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ArticleDataCopyWith<ArticleData> get copyWith =>
      _$ArticleDataCopyWithImpl<ArticleData>(this as ArticleData, _$identity);

  /// Serializes this ArticleData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArticleData &&
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
    return 'ArticleData(type: $type, categories: $categories, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class $ArticleDataCopyWith<$Res> {
  factory $ArticleDataCopyWith(
          ArticleData value, $Res Function(ArticleData) _then) =
      _$ArticleDataCopyWithImpl;
  @useResult
  $Res call(
      {String? type,
      List<ArticleCategory>? categories,
      PaginationData? pagination});

  $PaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$ArticleDataCopyWithImpl<$Res> implements $ArticleDataCopyWith<$Res> {
  _$ArticleDataCopyWithImpl(this._self, this._then);

  final ArticleData _self;
  final $Res Function(ArticleData) _then;

  /// Create a copy of ArticleData
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
              as List<ArticleCategory>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationData?,
    ));
  }

  /// Create a copy of ArticleData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationDataCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $PaginationDataCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ArticleData].
extension ArticleDataPatterns on ArticleData {
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
    TResult Function(_ArticleData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleData() when $default != null:
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
    TResult Function(_ArticleData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleData():
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
    TResult? Function(_ArticleData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleData() when $default != null:
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
    TResult Function(String? type, List<ArticleCategory>? categories,
            PaginationData? pagination)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleData() when $default != null:
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
    TResult Function(String? type, List<ArticleCategory>? categories,
            PaginationData? pagination)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleData():
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
    TResult? Function(String? type, List<ArticleCategory>? categories,
            PaginationData? pagination)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleData() when $default != null:
        return $default(_that.type, _that.categories, _that.pagination);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ArticleData implements ArticleData {
  const _ArticleData(
      {this.type, final List<ArticleCategory>? categories, this.pagination})
      : _categories = categories;
  factory _ArticleData.fromJson(Map<String, dynamic> json) =>
      _$ArticleDataFromJson(json);

  @override
  final String? type;
  final List<ArticleCategory>? _categories;
  @override
  List<ArticleCategory>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaginationData? pagination;

  /// Create a copy of ArticleData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ArticleDataCopyWith<_ArticleData> get copyWith =>
      __$ArticleDataCopyWithImpl<_ArticleData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ArticleDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleData &&
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
    return 'ArticleData(type: $type, categories: $categories, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class _$ArticleDataCopyWith<$Res>
    implements $ArticleDataCopyWith<$Res> {
  factory _$ArticleDataCopyWith(
          _ArticleData value, $Res Function(_ArticleData) _then) =
      __$ArticleDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? type,
      List<ArticleCategory>? categories,
      PaginationData? pagination});

  @override
  $PaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$ArticleDataCopyWithImpl<$Res> implements _$ArticleDataCopyWith<$Res> {
  __$ArticleDataCopyWithImpl(this._self, this._then);

  final _ArticleData _self;
  final $Res Function(_ArticleData) _then;

  /// Create a copy of ArticleData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? categories = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_ArticleData(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ArticleCategory>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationData?,
    ));
  }

  /// Create a copy of ArticleData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationDataCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $PaginationDataCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// @nodoc
mixin _$ArticleCategory {
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
  List<ArticleItem>? get data;

  /// Create a copy of ArticleCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ArticleCategoryCopyWith<ArticleCategory> get copyWith =>
      _$ArticleCategoryCopyWithImpl<ArticleCategory>(
          this as ArticleCategory, _$identity);

  /// Serializes this ArticleCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArticleCategory &&
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
    return 'ArticleCategory(id: $id, title: $title, note: $note, position: $position, language: $language, date: $date, menu_id: $menu_id, show_in_menu: $show_in_menu, show_in_main: $show_in_main, content_count: $content_count, type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ArticleCategoryCopyWith<$Res> {
  factory $ArticleCategoryCopyWith(
          ArticleCategory value, $Res Function(ArticleCategory) _then) =
      _$ArticleCategoryCopyWithImpl;
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
      List<ArticleItem>? data});
}

/// @nodoc
class _$ArticleCategoryCopyWithImpl<$Res>
    implements $ArticleCategoryCopyWith<$Res> {
  _$ArticleCategoryCopyWithImpl(this._self, this._then);

  final ArticleCategory _self;
  final $Res Function(ArticleCategory) _then;

  /// Create a copy of ArticleCategory
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
              as List<ArticleItem>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ArticleCategory].
extension ArticleCategoryPatterns on ArticleCategory {
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
    TResult Function(_ArticleCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleCategory() when $default != null:
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
    TResult Function(_ArticleCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleCategory():
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
    TResult? Function(_ArticleCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleCategory() when $default != null:
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
            List<ArticleItem>? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleCategory() when $default != null:
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
            List<ArticleItem>? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleCategory():
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
            List<ArticleItem>? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleCategory() when $default != null:
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
class _ArticleCategory implements ArticleCategory {
  const _ArticleCategory(
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
      final List<ArticleItem>? data})
      : _data = data;
  factory _ArticleCategory.fromJson(Map<String, dynamic> json) =>
      _$ArticleCategoryFromJson(json);

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
  final List<ArticleItem>? _data;
  @override
  List<ArticleItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ArticleCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ArticleCategoryCopyWith<_ArticleCategory> get copyWith =>
      __$ArticleCategoryCopyWithImpl<_ArticleCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ArticleCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleCategory &&
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
    return 'ArticleCategory(id: $id, title: $title, note: $note, position: $position, language: $language, date: $date, menu_id: $menu_id, show_in_menu: $show_in_menu, show_in_main: $show_in_main, content_count: $content_count, type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ArticleCategoryCopyWith<$Res>
    implements $ArticleCategoryCopyWith<$Res> {
  factory _$ArticleCategoryCopyWith(
          _ArticleCategory value, $Res Function(_ArticleCategory) _then) =
      __$ArticleCategoryCopyWithImpl;
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
      List<ArticleItem>? data});
}

/// @nodoc
class __$ArticleCategoryCopyWithImpl<$Res>
    implements _$ArticleCategoryCopyWith<$Res> {
  __$ArticleCategoryCopyWithImpl(this._self, this._then);

  final _ArticleCategory _self;
  final $Res Function(_ArticleCategory) _then;

  /// Create a copy of ArticleCategory
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
    return _then(_ArticleCategory(
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
              as List<ArticleItem>?,
    ));
  }
}

/// @nodoc
mixin _$ArticleItem {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  String? get title;
  String? get summary;
  String? get date;
  String? get visitor_count;
  @JsonKey(fromJson: _stringToBool)
  bool? get is_new;
  String? get priority;
  String? get content;
  String? get picture;
  String? get publisher_id;

  /// Create a copy of ArticleItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ArticleItemCopyWith<ArticleItem> get copyWith =>
      _$ArticleItemCopyWithImpl<ArticleItem>(this as ArticleItem, _$identity);

  /// Serializes this ArticleItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArticleItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.publisher_id, publisher_id) ||
                other.publisher_id == publisher_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, summary, date,
      visitor_count, is_new, priority, content, picture, publisher_id);

  @override
  String toString() {
    return 'ArticleItem(id: $id, title: $title, summary: $summary, date: $date, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, content: $content, picture: $picture, publisher_id: $publisher_id)';
  }
}

/// @nodoc
abstract mixin class $ArticleItemCopyWith<$Res> {
  factory $ArticleItemCopyWith(
          ArticleItem value, $Res Function(ArticleItem) _then) =
      _$ArticleItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      String? title,
      String? summary,
      String? date,
      String? visitor_count,
      @JsonKey(fromJson: _stringToBool) bool? is_new,
      String? priority,
      String? content,
      String? picture,
      String? publisher_id});
}

/// @nodoc
class _$ArticleItemCopyWithImpl<$Res> implements $ArticleItemCopyWith<$Res> {
  _$ArticleItemCopyWithImpl(this._self, this._then);

  final ArticleItem _self;
  final $Res Function(ArticleItem) _then;

  /// Create a copy of ArticleItem
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
    Object? content = freezed,
    Object? picture = freezed,
    Object? publisher_id = freezed,
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
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _self.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher_id: freezed == publisher_id
          ? _self.publisher_id
          : publisher_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ArticleItem].
extension ArticleItemPatterns on ArticleItem {
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
    TResult Function(_ArticleItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleItem() when $default != null:
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
    TResult Function(_ArticleItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleItem():
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
    TResult? Function(_ArticleItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleItem() when $default != null:
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
            String? content,
            String? picture,
            String? publisher_id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.content,
            _that.picture,
            _that.publisher_id);
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
            String? content,
            String? picture,
            String? publisher_id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleItem():
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.content,
            _that.picture,
            _that.publisher_id);
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
            String? content,
            String? picture,
            String? publisher_id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.content,
            _that.picture,
            _that.publisher_id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ArticleItem implements ArticleItem {
  const _ArticleItem(
      {@JsonKey(fromJson: _stringToInt) this.id,
      this.title,
      this.summary,
      this.date,
      this.visitor_count,
      @JsonKey(fromJson: _stringToBool) this.is_new,
      this.priority,
      this.content,
      this.picture,
      this.publisher_id});
  factory _ArticleItem.fromJson(Map<String, dynamic> json) =>
      _$ArticleItemFromJson(json);

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
  final String? content;
  @override
  final String? picture;
  @override
  final String? publisher_id;

  /// Create a copy of ArticleItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ArticleItemCopyWith<_ArticleItem> get copyWith =>
      __$ArticleItemCopyWithImpl<_ArticleItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ArticleItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.publisher_id, publisher_id) ||
                other.publisher_id == publisher_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, summary, date,
      visitor_count, is_new, priority, content, picture, publisher_id);

  @override
  String toString() {
    return 'ArticleItem(id: $id, title: $title, summary: $summary, date: $date, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, content: $content, picture: $picture, publisher_id: $publisher_id)';
  }
}

/// @nodoc
abstract mixin class _$ArticleItemCopyWith<$Res>
    implements $ArticleItemCopyWith<$Res> {
  factory _$ArticleItemCopyWith(
          _ArticleItem value, $Res Function(_ArticleItem) _then) =
      __$ArticleItemCopyWithImpl;
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
      String? content,
      String? picture,
      String? publisher_id});
}

/// @nodoc
class __$ArticleItemCopyWithImpl<$Res> implements _$ArticleItemCopyWith<$Res> {
  __$ArticleItemCopyWithImpl(this._self, this._then);

  final _ArticleItem _self;
  final $Res Function(_ArticleItem) _then;

  /// Create a copy of ArticleItem
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
    Object? content = freezed,
    Object? picture = freezed,
    Object? publisher_id = freezed,
  }) {
    return _then(_ArticleItem(
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
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _self.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher_id: freezed == publisher_id
          ? _self.publisher_id
          : publisher_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PaginationData {
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

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginationDataCopyWith<PaginationData> get copyWith =>
      _$PaginationDataCopyWithImpl<PaginationData>(
          this as PaginationData, _$identity);

  /// Serializes this PaginationData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginationData &&
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
    return 'PaginationData(currentPage: $currentPage, perPage: $perPage, totalCategories: $totalCategories, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class $PaginationDataCopyWith<$Res> {
  factory $PaginationDataCopyWith(
          PaginationData value, $Res Function(PaginationData) _then) =
      _$PaginationDataCopyWithImpl;
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
class _$PaginationDataCopyWithImpl<$Res>
    implements $PaginationDataCopyWith<$Res> {
  _$PaginationDataCopyWithImpl(this._self, this._then);

  final PaginationData _self;
  final $Res Function(PaginationData) _then;

  /// Create a copy of PaginationData
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

/// Adds pattern-matching-related methods to [PaginationData].
extension PaginationDataPatterns on PaginationData {
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
    TResult Function(_PaginationData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginationData() when $default != null:
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
    TResult Function(_PaginationData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationData():
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
    TResult? Function(_PaginationData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationData() when $default != null:
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
      case _PaginationData() when $default != null:
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
      case _PaginationData():
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
      case _PaginationData() when $default != null:
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
class _PaginationData implements PaginationData {
  const _PaginationData(
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
  factory _PaginationData.fromJson(Map<String, dynamic> json) =>
      _$PaginationDataFromJson(json);

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

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginationDataCopyWith<_PaginationData> get copyWith =>
      __$PaginationDataCopyWithImpl<_PaginationData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaginationDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationData &&
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
    return 'PaginationData(currentPage: $currentPage, perPage: $perPage, totalCategories: $totalCategories, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class _$PaginationDataCopyWith<$Res>
    implements $PaginationDataCopyWith<$Res> {
  factory _$PaginationDataCopyWith(
          _PaginationData value, $Res Function(_PaginationData) _then) =
      __$PaginationDataCopyWithImpl;
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
class __$PaginationDataCopyWithImpl<$Res>
    implements _$PaginationDataCopyWith<$Res> {
  __$PaginationDataCopyWithImpl(this._self, this._then);

  final _PaginationData _self;
  final $Res Function(_PaginationData) _then;

  /// Create a copy of PaginationData
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
    return _then(_PaginationData(
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
mixin _$CategoryContentResponse {
  bool? get success;
  CategoryContentData? get data;
  String? get message;

  /// Create a copy of CategoryContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryContentResponseCopyWith<CategoryContentResponse> get copyWith =>
      _$CategoryContentResponseCopyWithImpl<CategoryContentResponse>(
          this as CategoryContentResponse, _$identity);

  /// Serializes this CategoryContentResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryContentResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'CategoryContentResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $CategoryContentResponseCopyWith<$Res> {
  factory $CategoryContentResponseCopyWith(CategoryContentResponse value,
          $Res Function(CategoryContentResponse) _then) =
      _$CategoryContentResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, CategoryContentData? data, String? message});

  $CategoryContentDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CategoryContentResponseCopyWithImpl<$Res>
    implements $CategoryContentResponseCopyWith<$Res> {
  _$CategoryContentResponseCopyWithImpl(this._self, this._then);

  final CategoryContentResponse _self;
  final $Res Function(CategoryContentResponse) _then;

  /// Create a copy of CategoryContentResponse
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
              as CategoryContentData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CategoryContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryContentDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $CategoryContentDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CategoryContentResponse].
extension CategoryContentResponsePatterns on CategoryContentResponse {
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
    TResult Function(_CategoryContentResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryContentResponse() when $default != null:
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
    TResult Function(_CategoryContentResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryContentResponse():
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
    TResult? Function(_CategoryContentResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryContentResponse() when $default != null:
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
    TResult Function(bool? success, CategoryContentData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryContentResponse() when $default != null:
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
    TResult Function(bool? success, CategoryContentData? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryContentResponse():
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
            bool? success, CategoryContentData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryContentResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryContentResponse implements CategoryContentResponse {
  const _CategoryContentResponse({this.success, this.data, this.message});
  factory _CategoryContentResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryContentResponseFromJson(json);

  @override
  final bool? success;
  @override
  final CategoryContentData? data;
  @override
  final String? message;

  /// Create a copy of CategoryContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryContentResponseCopyWith<_CategoryContentResponse> get copyWith =>
      __$CategoryContentResponseCopyWithImpl<_CategoryContentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryContentResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryContentResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'CategoryContentResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$CategoryContentResponseCopyWith<$Res>
    implements $CategoryContentResponseCopyWith<$Res> {
  factory _$CategoryContentResponseCopyWith(_CategoryContentResponse value,
          $Res Function(_CategoryContentResponse) _then) =
      __$CategoryContentResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, CategoryContentData? data, String? message});

  @override
  $CategoryContentDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$CategoryContentResponseCopyWithImpl<$Res>
    implements _$CategoryContentResponseCopyWith<$Res> {
  __$CategoryContentResponseCopyWithImpl(this._self, this._then);

  final _CategoryContentResponse _self;
  final $Res Function(_CategoryContentResponse) _then;

  /// Create a copy of CategoryContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_CategoryContentResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryContentData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CategoryContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryContentDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $CategoryContentDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$CategoryContentData {
  CategoryInfo? get category;
  List<ArticleItem>? get content;
  ContentPagination? get pagination;

  /// Create a copy of CategoryContentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryContentDataCopyWith<CategoryContentData> get copyWith =>
      _$CategoryContentDataCopyWithImpl<CategoryContentData>(
          this as CategoryContentData, _$identity);

  /// Serializes this CategoryContentData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryContentData &&
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
    return 'CategoryContentData(category: $category, content: $content, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class $CategoryContentDataCopyWith<$Res> {
  factory $CategoryContentDataCopyWith(
          CategoryContentData value, $Res Function(CategoryContentData) _then) =
      _$CategoryContentDataCopyWithImpl;
  @useResult
  $Res call(
      {CategoryInfo? category,
      List<ArticleItem>? content,
      ContentPagination? pagination});

  $CategoryInfoCopyWith<$Res>? get category;
  $ContentPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$CategoryContentDataCopyWithImpl<$Res>
    implements $CategoryContentDataCopyWith<$Res> {
  _$CategoryContentDataCopyWithImpl(this._self, this._then);

  final CategoryContentData _self;
  final $Res Function(CategoryContentData) _then;

  /// Create a copy of CategoryContentData
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
              as CategoryInfo?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ArticleItem>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as ContentPagination?,
    ));
  }

  /// Create a copy of CategoryContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryInfoCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $CategoryInfoCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }

  /// Create a copy of CategoryContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $ContentPaginationCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CategoryContentData].
extension CategoryContentDataPatterns on CategoryContentData {
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
    TResult Function(_CategoryContentData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryContentData() when $default != null:
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
    TResult Function(_CategoryContentData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryContentData():
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
    TResult? Function(_CategoryContentData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryContentData() when $default != null:
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
    TResult Function(CategoryInfo? category, List<ArticleItem>? content,
            ContentPagination? pagination)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryContentData() when $default != null:
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
    TResult Function(CategoryInfo? category, List<ArticleItem>? content,
            ContentPagination? pagination)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryContentData():
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
    TResult? Function(CategoryInfo? category, List<ArticleItem>? content,
            ContentPagination? pagination)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryContentData() when $default != null:
        return $default(_that.category, _that.content, _that.pagination);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryContentData implements CategoryContentData {
  const _CategoryContentData(
      {this.category, final List<ArticleItem>? content, this.pagination})
      : _content = content;
  factory _CategoryContentData.fromJson(Map<String, dynamic> json) =>
      _$CategoryContentDataFromJson(json);

  @override
  final CategoryInfo? category;
  final List<ArticleItem>? _content;
  @override
  List<ArticleItem>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ContentPagination? pagination;

  /// Create a copy of CategoryContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryContentDataCopyWith<_CategoryContentData> get copyWith =>
      __$CategoryContentDataCopyWithImpl<_CategoryContentData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryContentDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryContentData &&
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
    return 'CategoryContentData(category: $category, content: $content, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class _$CategoryContentDataCopyWith<$Res>
    implements $CategoryContentDataCopyWith<$Res> {
  factory _$CategoryContentDataCopyWith(_CategoryContentData value,
          $Res Function(_CategoryContentData) _then) =
      __$CategoryContentDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CategoryInfo? category,
      List<ArticleItem>? content,
      ContentPagination? pagination});

  @override
  $CategoryInfoCopyWith<$Res>? get category;
  @override
  $ContentPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$CategoryContentDataCopyWithImpl<$Res>
    implements _$CategoryContentDataCopyWith<$Res> {
  __$CategoryContentDataCopyWithImpl(this._self, this._then);

  final _CategoryContentData _self;
  final $Res Function(_CategoryContentData) _then;

  /// Create a copy of CategoryContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = freezed,
    Object? content = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_CategoryContentData(
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryInfo?,
      content: freezed == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ArticleItem>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as ContentPagination?,
    ));
  }

  /// Create a copy of CategoryContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryInfoCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $CategoryInfoCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }

  /// Create a copy of CategoryContentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $ContentPaginationCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// @nodoc
mixin _$CategoryInfo {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  String? get title;
  String? get note;
  String? get type;
  String? get position;
  String? get language;

  /// Create a copy of CategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryInfoCopyWith<CategoryInfo> get copyWith =>
      _$CategoryInfoCopyWithImpl<CategoryInfo>(
          this as CategoryInfo, _$identity);

  /// Serializes this CategoryInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryInfo &&
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
    return 'CategoryInfo(id: $id, title: $title, note: $note, type: $type, position: $position, language: $language)';
  }
}

/// @nodoc
abstract mixin class $CategoryInfoCopyWith<$Res> {
  factory $CategoryInfoCopyWith(
          CategoryInfo value, $Res Function(CategoryInfo) _then) =
      _$CategoryInfoCopyWithImpl;
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
class _$CategoryInfoCopyWithImpl<$Res> implements $CategoryInfoCopyWith<$Res> {
  _$CategoryInfoCopyWithImpl(this._self, this._then);

  final CategoryInfo _self;
  final $Res Function(CategoryInfo) _then;

  /// Create a copy of CategoryInfo
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

/// Adds pattern-matching-related methods to [CategoryInfo].
extension CategoryInfoPatterns on CategoryInfo {
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
    TResult Function(_CategoryInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryInfo() when $default != null:
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
    TResult Function(_CategoryInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryInfo():
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
    TResult? Function(_CategoryInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryInfo() when $default != null:
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
      case _CategoryInfo() when $default != null:
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
      case _CategoryInfo():
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
      case _CategoryInfo() when $default != null:
        return $default(_that.id, _that.title, _that.note, _that.type,
            _that.position, _that.language);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryInfo implements CategoryInfo {
  const _CategoryInfo(
      {@JsonKey(fromJson: _stringToInt) this.id,
      this.title,
      this.note,
      this.type,
      this.position,
      this.language});
  factory _CategoryInfo.fromJson(Map<String, dynamic> json) =>
      _$CategoryInfoFromJson(json);

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

  /// Create a copy of CategoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryInfoCopyWith<_CategoryInfo> get copyWith =>
      __$CategoryInfoCopyWithImpl<_CategoryInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryInfo &&
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
    return 'CategoryInfo(id: $id, title: $title, note: $note, type: $type, position: $position, language: $language)';
  }
}

/// @nodoc
abstract mixin class _$CategoryInfoCopyWith<$Res>
    implements $CategoryInfoCopyWith<$Res> {
  factory _$CategoryInfoCopyWith(
          _CategoryInfo value, $Res Function(_CategoryInfo) _then) =
      __$CategoryInfoCopyWithImpl;
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
class __$CategoryInfoCopyWithImpl<$Res>
    implements _$CategoryInfoCopyWith<$Res> {
  __$CategoryInfoCopyWithImpl(this._self, this._then);

  final _CategoryInfo _self;
  final $Res Function(_CategoryInfo) _then;

  /// Create a copy of CategoryInfo
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
    return _then(_CategoryInfo(
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
mixin _$ContentPagination {
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

  /// Create a copy of ContentPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContentPaginationCopyWith<ContentPagination> get copyWith =>
      _$ContentPaginationCopyWithImpl<ContentPagination>(
          this as ContentPagination, _$identity);

  /// Serializes this ContentPagination to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContentPagination &&
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
    return 'ContentPagination(currentPage: $currentPage, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class $ContentPaginationCopyWith<$Res> {
  factory $ContentPaginationCopyWith(
          ContentPagination value, $Res Function(ContentPagination) _then) =
      _$ContentPaginationCopyWithImpl;
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
class _$ContentPaginationCopyWithImpl<$Res>
    implements $ContentPaginationCopyWith<$Res> {
  _$ContentPaginationCopyWithImpl(this._self, this._then);

  final ContentPagination _self;
  final $Res Function(ContentPagination) _then;

  /// Create a copy of ContentPagination
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

/// Adds pattern-matching-related methods to [ContentPagination].
extension ContentPaginationPatterns on ContentPagination {
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
    TResult Function(_ContentPagination value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContentPagination() when $default != null:
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
    TResult Function(_ContentPagination value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContentPagination():
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
    TResult? Function(_ContentPagination value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContentPagination() when $default != null:
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
      case _ContentPagination() when $default != null:
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
      case _ContentPagination():
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
      case _ContentPagination() when $default != null:
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
class _ContentPagination implements ContentPagination {
  const _ContentPagination(
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
  factory _ContentPagination.fromJson(Map<String, dynamic> json) =>
      _$ContentPaginationFromJson(json);

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

  /// Create a copy of ContentPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContentPaginationCopyWith<_ContentPagination> get copyWith =>
      __$ContentPaginationCopyWithImpl<_ContentPagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContentPaginationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContentPagination &&
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
    return 'ContentPagination(currentPage: $currentPage, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class _$ContentPaginationCopyWith<$Res>
    implements $ContentPaginationCopyWith<$Res> {
  factory _$ContentPaginationCopyWith(
          _ContentPagination value, $Res Function(_ContentPagination) _then) =
      __$ContentPaginationCopyWithImpl;
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
class __$ContentPaginationCopyWithImpl<$Res>
    implements _$ContentPaginationCopyWith<$Res> {
  __$ContentPaginationCopyWithImpl(this._self, this._then);

  final _ContentPagination _self;
  final $Res Function(_ContentPagination) _then;

  /// Create a copy of ContentPagination
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
    return _then(_ContentPagination(
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
mixin _$ArticleDetailResponse {
  bool? get success;
  ArticleDetail? get data;
  String? get message;

  /// Create a copy of ArticleDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ArticleDetailResponseCopyWith<ArticleDetailResponse> get copyWith =>
      _$ArticleDetailResponseCopyWithImpl<ArticleDetailResponse>(
          this as ArticleDetailResponse, _$identity);

  /// Serializes this ArticleDetailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArticleDetailResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'ArticleDetailResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ArticleDetailResponseCopyWith<$Res> {
  factory $ArticleDetailResponseCopyWith(ArticleDetailResponse value,
          $Res Function(ArticleDetailResponse) _then) =
      _$ArticleDetailResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, ArticleDetail? data, String? message});

  $ArticleDetailCopyWith<$Res>? get data;
}

/// @nodoc
class _$ArticleDetailResponseCopyWithImpl<$Res>
    implements $ArticleDetailResponseCopyWith<$Res> {
  _$ArticleDetailResponseCopyWithImpl(this._self, this._then);

  final ArticleDetailResponse _self;
  final $Res Function(ArticleDetailResponse) _then;

  /// Create a copy of ArticleDetailResponse
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
              as ArticleDetail?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ArticleDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleDetailCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $ArticleDetailCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ArticleDetailResponse].
extension ArticleDetailResponsePatterns on ArticleDetailResponse {
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
    TResult Function(_ArticleDetailResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleDetailResponse() when $default != null:
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
    TResult Function(_ArticleDetailResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleDetailResponse():
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
    TResult? Function(_ArticleDetailResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleDetailResponse() when $default != null:
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
    TResult Function(bool? success, ArticleDetail? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleDetailResponse() when $default != null:
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
    TResult Function(bool? success, ArticleDetail? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleDetailResponse():
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
    TResult? Function(bool? success, ArticleDetail? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleDetailResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ArticleDetailResponse implements ArticleDetailResponse {
  const _ArticleDetailResponse({this.success, this.data, this.message});
  factory _ArticleDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailResponseFromJson(json);

  @override
  final bool? success;
  @override
  final ArticleDetail? data;
  @override
  final String? message;

  /// Create a copy of ArticleDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ArticleDetailResponseCopyWith<_ArticleDetailResponse> get copyWith =>
      __$ArticleDetailResponseCopyWithImpl<_ArticleDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ArticleDetailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleDetailResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'ArticleDetailResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ArticleDetailResponseCopyWith<$Res>
    implements $ArticleDetailResponseCopyWith<$Res> {
  factory _$ArticleDetailResponseCopyWith(_ArticleDetailResponse value,
          $Res Function(_ArticleDetailResponse) _then) =
      __$ArticleDetailResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, ArticleDetail? data, String? message});

  @override
  $ArticleDetailCopyWith<$Res>? get data;
}

/// @nodoc
class __$ArticleDetailResponseCopyWithImpl<$Res>
    implements _$ArticleDetailResponseCopyWith<$Res> {
  __$ArticleDetailResponseCopyWithImpl(this._self, this._then);

  final _ArticleDetailResponse _self;
  final $Res Function(_ArticleDetailResponse) _then;

  /// Create a copy of ArticleDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_ArticleDetailResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as ArticleDetail?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ArticleDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleDetailCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $ArticleDetailCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$ArticleDetail {
  @JsonKey(name: 'article_id', fromJson: _stringToInt)
  int? get articleId;
  @JsonKey(name: 'article_cat_id')
  String? get articleCatId;
  @JsonKey(name: 'article_title')
  String? get articleTitle;
  @JsonKey(name: 'article_ts')
  String? get articleTs;
  @JsonKey(name: 'article_summary')
  String? get articleSummary;
  @JsonKey(name: 'article_des')
  String? get articleDes;
  @JsonKey(name: 'article_pic')
  String? get articlePic;
  @JsonKey(name: 'article_pic_pos')
  String? get articlePicPos;
  @JsonKey(name: 'article_visitor', fromJson: _stringToInt)
  int? get articleVisitor;
  @JsonKey(name: 'article_is_new', fromJson: _stringToBool)
  bool? get articleIsNew;
  @JsonKey(name: 'article_priority')
  String? get articlePriority;
  @JsonKey(name: 'article_active_vote', fromJson: _stringToBool)
  bool? get articleActiveVote;
  @JsonKey(name: 'article_active_hint', fromJson: _stringToBool)
  bool? get articleActiveHint;
  @JsonKey(name: 'article_active', fromJson: _stringToBool)
  bool? get articleActive;
  @JsonKey(name: 'article_date')
  String? get articleDate;
  @JsonKey(name: 'article_pic_active', fromJson: _stringToBool)
  bool? get articlePicActive;
  @JsonKey(name: 'article_last_article', fromJson: _stringToBool)
  bool? get articleLastArticle;
  @JsonKey(name: 'article_publisher_id')
  String? get articlePublisherId;
  @JsonKey(name: 'article_source')
  String? get articleSource;
  @JsonKey(name: 'article_source_url')
  String? get articleSourceUrl;
  @JsonKey(name: 'article_youtube_id')
  String? get articleYoutubeId;
  @JsonKey(name: 'article_file')
  String? get articleFile;
  @JsonKey(name: 'article_user_add_hint_nsup', fromJson: _stringToBool)
  bool? get articleUserAddHintNsup;
  ArticleDetailCategory? get category;
  List<dynamic>? get captions;
  List<dynamic>? get votes;

  /// Create a copy of ArticleDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ArticleDetailCopyWith<ArticleDetail> get copyWith =>
      _$ArticleDetailCopyWithImpl<ArticleDetail>(
          this as ArticleDetail, _$identity);

  /// Serializes this ArticleDetail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArticleDetail &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.articleCatId, articleCatId) ||
                other.articleCatId == articleCatId) &&
            (identical(other.articleTitle, articleTitle) ||
                other.articleTitle == articleTitle) &&
            (identical(other.articleTs, articleTs) ||
                other.articleTs == articleTs) &&
            (identical(other.articleSummary, articleSummary) ||
                other.articleSummary == articleSummary) &&
            (identical(other.articleDes, articleDes) ||
                other.articleDes == articleDes) &&
            (identical(other.articlePic, articlePic) ||
                other.articlePic == articlePic) &&
            (identical(other.articlePicPos, articlePicPos) ||
                other.articlePicPos == articlePicPos) &&
            (identical(other.articleVisitor, articleVisitor) ||
                other.articleVisitor == articleVisitor) &&
            (identical(other.articleIsNew, articleIsNew) ||
                other.articleIsNew == articleIsNew) &&
            (identical(other.articlePriority, articlePriority) ||
                other.articlePriority == articlePriority) &&
            (identical(other.articleActiveVote, articleActiveVote) ||
                other.articleActiveVote == articleActiveVote) &&
            (identical(other.articleActiveHint, articleActiveHint) ||
                other.articleActiveHint == articleActiveHint) &&
            (identical(other.articleActive, articleActive) ||
                other.articleActive == articleActive) &&
            (identical(other.articleDate, articleDate) ||
                other.articleDate == articleDate) &&
            (identical(other.articlePicActive, articlePicActive) ||
                other.articlePicActive == articlePicActive) &&
            (identical(other.articleLastArticle, articleLastArticle) ||
                other.articleLastArticle == articleLastArticle) &&
            (identical(other.articlePublisherId, articlePublisherId) ||
                other.articlePublisherId == articlePublisherId) &&
            (identical(other.articleSource, articleSource) ||
                other.articleSource == articleSource) &&
            (identical(other.articleSourceUrl, articleSourceUrl) ||
                other.articleSourceUrl == articleSourceUrl) &&
            (identical(other.articleYoutubeId, articleYoutubeId) ||
                other.articleYoutubeId == articleYoutubeId) &&
            (identical(other.articleFile, articleFile) ||
                other.articleFile == articleFile) &&
            (identical(other.articleUserAddHintNsup, articleUserAddHintNsup) ||
                other.articleUserAddHintNsup == articleUserAddHintNsup) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other.captions, captions) &&
            const DeepCollectionEquality().equals(other.votes, votes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        articleId,
        articleCatId,
        articleTitle,
        articleTs,
        articleSummary,
        articleDes,
        articlePic,
        articlePicPos,
        articleVisitor,
        articleIsNew,
        articlePriority,
        articleActiveVote,
        articleActiveHint,
        articleActive,
        articleDate,
        articlePicActive,
        articleLastArticle,
        articlePublisherId,
        articleSource,
        articleSourceUrl,
        articleYoutubeId,
        articleFile,
        articleUserAddHintNsup,
        category,
        const DeepCollectionEquality().hash(captions),
        const DeepCollectionEquality().hash(votes)
      ]);

  @override
  String toString() {
    return 'ArticleDetail(articleId: $articleId, articleCatId: $articleCatId, articleTitle: $articleTitle, articleTs: $articleTs, articleSummary: $articleSummary, articleDes: $articleDes, articlePic: $articlePic, articlePicPos: $articlePicPos, articleVisitor: $articleVisitor, articleIsNew: $articleIsNew, articlePriority: $articlePriority, articleActiveVote: $articleActiveVote, articleActiveHint: $articleActiveHint, articleActive: $articleActive, articleDate: $articleDate, articlePicActive: $articlePicActive, articleLastArticle: $articleLastArticle, articlePublisherId: $articlePublisherId, articleSource: $articleSource, articleSourceUrl: $articleSourceUrl, articleYoutubeId: $articleYoutubeId, articleFile: $articleFile, articleUserAddHintNsup: $articleUserAddHintNsup, category: $category, captions: $captions, votes: $votes)';
  }
}

/// @nodoc
abstract mixin class $ArticleDetailCopyWith<$Res> {
  factory $ArticleDetailCopyWith(
          ArticleDetail value, $Res Function(ArticleDetail) _then) =
      _$ArticleDetailCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,
      @JsonKey(name: 'article_cat_id') String? articleCatId,
      @JsonKey(name: 'article_title') String? articleTitle,
      @JsonKey(name: 'article_ts') String? articleTs,
      @JsonKey(name: 'article_summary') String? articleSummary,
      @JsonKey(name: 'article_des') String? articleDes,
      @JsonKey(name: 'article_pic') String? articlePic,
      @JsonKey(name: 'article_pic_pos') String? articlePicPos,
      @JsonKey(name: 'article_visitor', fromJson: _stringToInt)
      int? articleVisitor,
      @JsonKey(name: 'article_is_new', fromJson: _stringToBool)
      bool? articleIsNew,
      @JsonKey(name: 'article_priority') String? articlePriority,
      @JsonKey(name: 'article_active_vote', fromJson: _stringToBool)
      bool? articleActiveVote,
      @JsonKey(name: 'article_active_hint', fromJson: _stringToBool)
      bool? articleActiveHint,
      @JsonKey(name: 'article_active', fromJson: _stringToBool)
      bool? articleActive,
      @JsonKey(name: 'article_date') String? articleDate,
      @JsonKey(name: 'article_pic_active', fromJson: _stringToBool)
      bool? articlePicActive,
      @JsonKey(name: 'article_last_article', fromJson: _stringToBool)
      bool? articleLastArticle,
      @JsonKey(name: 'article_publisher_id') String? articlePublisherId,
      @JsonKey(name: 'article_source') String? articleSource,
      @JsonKey(name: 'article_source_url') String? articleSourceUrl,
      @JsonKey(name: 'article_youtube_id') String? articleYoutubeId,
      @JsonKey(name: 'article_file') String? articleFile,
      @JsonKey(name: 'article_user_add_hint_nsup', fromJson: _stringToBool)
      bool? articleUserAddHintNsup,
      ArticleDetailCategory? category,
      List<dynamic>? captions,
      List<dynamic>? votes});

  $ArticleDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$ArticleDetailCopyWithImpl<$Res>
    implements $ArticleDetailCopyWith<$Res> {
  _$ArticleDetailCopyWithImpl(this._self, this._then);

  final ArticleDetail _self;
  final $Res Function(ArticleDetail) _then;

  /// Create a copy of ArticleDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = freezed,
    Object? articleCatId = freezed,
    Object? articleTitle = freezed,
    Object? articleTs = freezed,
    Object? articleSummary = freezed,
    Object? articleDes = freezed,
    Object? articlePic = freezed,
    Object? articlePicPos = freezed,
    Object? articleVisitor = freezed,
    Object? articleIsNew = freezed,
    Object? articlePriority = freezed,
    Object? articleActiveVote = freezed,
    Object? articleActiveHint = freezed,
    Object? articleActive = freezed,
    Object? articleDate = freezed,
    Object? articlePicActive = freezed,
    Object? articleLastArticle = freezed,
    Object? articlePublisherId = freezed,
    Object? articleSource = freezed,
    Object? articleSourceUrl = freezed,
    Object? articleYoutubeId = freezed,
    Object? articleFile = freezed,
    Object? articleUserAddHintNsup = freezed,
    Object? category = freezed,
    Object? captions = freezed,
    Object? votes = freezed,
  }) {
    return _then(_self.copyWith(
      articleId: freezed == articleId
          ? _self.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int?,
      articleCatId: freezed == articleCatId
          ? _self.articleCatId
          : articleCatId // ignore: cast_nullable_to_non_nullable
              as String?,
      articleTitle: freezed == articleTitle
          ? _self.articleTitle
          : articleTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      articleTs: freezed == articleTs
          ? _self.articleTs
          : articleTs // ignore: cast_nullable_to_non_nullable
              as String?,
      articleSummary: freezed == articleSummary
          ? _self.articleSummary
          : articleSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      articleDes: freezed == articleDes
          ? _self.articleDes
          : articleDes // ignore: cast_nullable_to_non_nullable
              as String?,
      articlePic: freezed == articlePic
          ? _self.articlePic
          : articlePic // ignore: cast_nullable_to_non_nullable
              as String?,
      articlePicPos: freezed == articlePicPos
          ? _self.articlePicPos
          : articlePicPos // ignore: cast_nullable_to_non_nullable
              as String?,
      articleVisitor: freezed == articleVisitor
          ? _self.articleVisitor
          : articleVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      articleIsNew: freezed == articleIsNew
          ? _self.articleIsNew
          : articleIsNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      articlePriority: freezed == articlePriority
          ? _self.articlePriority
          : articlePriority // ignore: cast_nullable_to_non_nullable
              as String?,
      articleActiveVote: freezed == articleActiveVote
          ? _self.articleActiveVote
          : articleActiveVote // ignore: cast_nullable_to_non_nullable
              as bool?,
      articleActiveHint: freezed == articleActiveHint
          ? _self.articleActiveHint
          : articleActiveHint // ignore: cast_nullable_to_non_nullable
              as bool?,
      articleActive: freezed == articleActive
          ? _self.articleActive
          : articleActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      articleDate: freezed == articleDate
          ? _self.articleDate
          : articleDate // ignore: cast_nullable_to_non_nullable
              as String?,
      articlePicActive: freezed == articlePicActive
          ? _self.articlePicActive
          : articlePicActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      articleLastArticle: freezed == articleLastArticle
          ? _self.articleLastArticle
          : articleLastArticle // ignore: cast_nullable_to_non_nullable
              as bool?,
      articlePublisherId: freezed == articlePublisherId
          ? _self.articlePublisherId
          : articlePublisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      articleSource: freezed == articleSource
          ? _self.articleSource
          : articleSource // ignore: cast_nullable_to_non_nullable
              as String?,
      articleSourceUrl: freezed == articleSourceUrl
          ? _self.articleSourceUrl
          : articleSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      articleYoutubeId: freezed == articleYoutubeId
          ? _self.articleYoutubeId
          : articleYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      articleFile: freezed == articleFile
          ? _self.articleFile
          : articleFile // ignore: cast_nullable_to_non_nullable
              as String?,
      articleUserAddHintNsup: freezed == articleUserAddHintNsup
          ? _self.articleUserAddHintNsup
          : articleUserAddHintNsup // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as ArticleDetailCategory?,
      captions: freezed == captions
          ? _self.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      votes: freezed == votes
          ? _self.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }

  /// Create a copy of ArticleDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $ArticleDetailCategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ArticleDetail].
extension ArticleDetailPatterns on ArticleDetail {
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
    TResult Function(_ArticleDetail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleDetail() when $default != null:
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
    TResult Function(_ArticleDetail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleDetail():
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
    TResult? Function(_ArticleDetail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleDetail() when $default != null:
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
            @JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,
            @JsonKey(name: 'article_cat_id') String? articleCatId,
            @JsonKey(name: 'article_title') String? articleTitle,
            @JsonKey(name: 'article_ts') String? articleTs,
            @JsonKey(name: 'article_summary') String? articleSummary,
            @JsonKey(name: 'article_des') String? articleDes,
            @JsonKey(name: 'article_pic') String? articlePic,
            @JsonKey(name: 'article_pic_pos') String? articlePicPos,
            @JsonKey(name: 'article_visitor', fromJson: _stringToInt)
            int? articleVisitor,
            @JsonKey(name: 'article_is_new', fromJson: _stringToBool)
            bool? articleIsNew,
            @JsonKey(name: 'article_priority') String? articlePriority,
            @JsonKey(name: 'article_active_vote', fromJson: _stringToBool)
            bool? articleActiveVote,
            @JsonKey(name: 'article_active_hint', fromJson: _stringToBool)
            bool? articleActiveHint,
            @JsonKey(name: 'article_active', fromJson: _stringToBool)
            bool? articleActive,
            @JsonKey(name: 'article_date') String? articleDate,
            @JsonKey(name: 'article_pic_active', fromJson: _stringToBool)
            bool? articlePicActive,
            @JsonKey(name: 'article_last_article', fromJson: _stringToBool)
            bool? articleLastArticle,
            @JsonKey(name: 'article_publisher_id') String? articlePublisherId,
            @JsonKey(name: 'article_source') String? articleSource,
            @JsonKey(name: 'article_source_url') String? articleSourceUrl,
            @JsonKey(name: 'article_youtube_id') String? articleYoutubeId,
            @JsonKey(name: 'article_file') String? articleFile,
            @JsonKey(
                name: 'article_user_add_hint_nsup', fromJson: _stringToBool)
            bool? articleUserAddHintNsup,
            ArticleDetailCategory? category,
            List<dynamic>? captions,
            List<dynamic>? votes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleDetail() when $default != null:
        return $default(
            _that.articleId,
            _that.articleCatId,
            _that.articleTitle,
            _that.articleTs,
            _that.articleSummary,
            _that.articleDes,
            _that.articlePic,
            _that.articlePicPos,
            _that.articleVisitor,
            _that.articleIsNew,
            _that.articlePriority,
            _that.articleActiveVote,
            _that.articleActiveHint,
            _that.articleActive,
            _that.articleDate,
            _that.articlePicActive,
            _that.articleLastArticle,
            _that.articlePublisherId,
            _that.articleSource,
            _that.articleSourceUrl,
            _that.articleYoutubeId,
            _that.articleFile,
            _that.articleUserAddHintNsup,
            _that.category,
            _that.captions,
            _that.votes);
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
            @JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,
            @JsonKey(name: 'article_cat_id') String? articleCatId,
            @JsonKey(name: 'article_title') String? articleTitle,
            @JsonKey(name: 'article_ts') String? articleTs,
            @JsonKey(name: 'article_summary') String? articleSummary,
            @JsonKey(name: 'article_des') String? articleDes,
            @JsonKey(name: 'article_pic') String? articlePic,
            @JsonKey(name: 'article_pic_pos') String? articlePicPos,
            @JsonKey(name: 'article_visitor', fromJson: _stringToInt)
            int? articleVisitor,
            @JsonKey(name: 'article_is_new', fromJson: _stringToBool)
            bool? articleIsNew,
            @JsonKey(name: 'article_priority') String? articlePriority,
            @JsonKey(name: 'article_active_vote', fromJson: _stringToBool)
            bool? articleActiveVote,
            @JsonKey(name: 'article_active_hint', fromJson: _stringToBool)
            bool? articleActiveHint,
            @JsonKey(name: 'article_active', fromJson: _stringToBool)
            bool? articleActive,
            @JsonKey(name: 'article_date') String? articleDate,
            @JsonKey(name: 'article_pic_active', fromJson: _stringToBool)
            bool? articlePicActive,
            @JsonKey(name: 'article_last_article', fromJson: _stringToBool)
            bool? articleLastArticle,
            @JsonKey(name: 'article_publisher_id') String? articlePublisherId,
            @JsonKey(name: 'article_source') String? articleSource,
            @JsonKey(name: 'article_source_url') String? articleSourceUrl,
            @JsonKey(name: 'article_youtube_id') String? articleYoutubeId,
            @JsonKey(name: 'article_file') String? articleFile,
            @JsonKey(
                name: 'article_user_add_hint_nsup', fromJson: _stringToBool)
            bool? articleUserAddHintNsup,
            ArticleDetailCategory? category,
            List<dynamic>? captions,
            List<dynamic>? votes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleDetail():
        return $default(
            _that.articleId,
            _that.articleCatId,
            _that.articleTitle,
            _that.articleTs,
            _that.articleSummary,
            _that.articleDes,
            _that.articlePic,
            _that.articlePicPos,
            _that.articleVisitor,
            _that.articleIsNew,
            _that.articlePriority,
            _that.articleActiveVote,
            _that.articleActiveHint,
            _that.articleActive,
            _that.articleDate,
            _that.articlePicActive,
            _that.articleLastArticle,
            _that.articlePublisherId,
            _that.articleSource,
            _that.articleSourceUrl,
            _that.articleYoutubeId,
            _that.articleFile,
            _that.articleUserAddHintNsup,
            _that.category,
            _that.captions,
            _that.votes);
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
            @JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,
            @JsonKey(name: 'article_cat_id') String? articleCatId,
            @JsonKey(name: 'article_title') String? articleTitle,
            @JsonKey(name: 'article_ts') String? articleTs,
            @JsonKey(name: 'article_summary') String? articleSummary,
            @JsonKey(name: 'article_des') String? articleDes,
            @JsonKey(name: 'article_pic') String? articlePic,
            @JsonKey(name: 'article_pic_pos') String? articlePicPos,
            @JsonKey(name: 'article_visitor', fromJson: _stringToInt)
            int? articleVisitor,
            @JsonKey(name: 'article_is_new', fromJson: _stringToBool)
            bool? articleIsNew,
            @JsonKey(name: 'article_priority') String? articlePriority,
            @JsonKey(name: 'article_active_vote', fromJson: _stringToBool)
            bool? articleActiveVote,
            @JsonKey(name: 'article_active_hint', fromJson: _stringToBool)
            bool? articleActiveHint,
            @JsonKey(name: 'article_active', fromJson: _stringToBool)
            bool? articleActive,
            @JsonKey(name: 'article_date') String? articleDate,
            @JsonKey(name: 'article_pic_active', fromJson: _stringToBool)
            bool? articlePicActive,
            @JsonKey(name: 'article_last_article', fromJson: _stringToBool)
            bool? articleLastArticle,
            @JsonKey(name: 'article_publisher_id') String? articlePublisherId,
            @JsonKey(name: 'article_source') String? articleSource,
            @JsonKey(name: 'article_source_url') String? articleSourceUrl,
            @JsonKey(name: 'article_youtube_id') String? articleYoutubeId,
            @JsonKey(name: 'article_file') String? articleFile,
            @JsonKey(
                name: 'article_user_add_hint_nsup', fromJson: _stringToBool)
            bool? articleUserAddHintNsup,
            ArticleDetailCategory? category,
            List<dynamic>? captions,
            List<dynamic>? votes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleDetail() when $default != null:
        return $default(
            _that.articleId,
            _that.articleCatId,
            _that.articleTitle,
            _that.articleTs,
            _that.articleSummary,
            _that.articleDes,
            _that.articlePic,
            _that.articlePicPos,
            _that.articleVisitor,
            _that.articleIsNew,
            _that.articlePriority,
            _that.articleActiveVote,
            _that.articleActiveHint,
            _that.articleActive,
            _that.articleDate,
            _that.articlePicActive,
            _that.articleLastArticle,
            _that.articlePublisherId,
            _that.articleSource,
            _that.articleSourceUrl,
            _that.articleYoutubeId,
            _that.articleFile,
            _that.articleUserAddHintNsup,
            _that.category,
            _that.captions,
            _that.votes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ArticleDetail implements ArticleDetail {
  const _ArticleDetail(
      {@JsonKey(name: 'article_id', fromJson: _stringToInt) this.articleId,
      @JsonKey(name: 'article_cat_id') this.articleCatId,
      @JsonKey(name: 'article_title') this.articleTitle,
      @JsonKey(name: 'article_ts') this.articleTs,
      @JsonKey(name: 'article_summary') this.articleSummary,
      @JsonKey(name: 'article_des') this.articleDes,
      @JsonKey(name: 'article_pic') this.articlePic,
      @JsonKey(name: 'article_pic_pos') this.articlePicPos,
      @JsonKey(name: 'article_visitor', fromJson: _stringToInt)
      this.articleVisitor,
      @JsonKey(name: 'article_is_new', fromJson: _stringToBool)
      this.articleIsNew,
      @JsonKey(name: 'article_priority') this.articlePriority,
      @JsonKey(name: 'article_active_vote', fromJson: _stringToBool)
      this.articleActiveVote,
      @JsonKey(name: 'article_active_hint', fromJson: _stringToBool)
      this.articleActiveHint,
      @JsonKey(name: 'article_active', fromJson: _stringToBool)
      this.articleActive,
      @JsonKey(name: 'article_date') this.articleDate,
      @JsonKey(name: 'article_pic_active', fromJson: _stringToBool)
      this.articlePicActive,
      @JsonKey(name: 'article_last_article', fromJson: _stringToBool)
      this.articleLastArticle,
      @JsonKey(name: 'article_publisher_id') this.articlePublisherId,
      @JsonKey(name: 'article_source') this.articleSource,
      @JsonKey(name: 'article_source_url') this.articleSourceUrl,
      @JsonKey(name: 'article_youtube_id') this.articleYoutubeId,
      @JsonKey(name: 'article_file') this.articleFile,
      @JsonKey(name: 'article_user_add_hint_nsup', fromJson: _stringToBool)
      this.articleUserAddHintNsup,
      this.category,
      final List<dynamic>? captions,
      final List<dynamic>? votes})
      : _captions = captions,
        _votes = votes;
  factory _ArticleDetail.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailFromJson(json);

  @override
  @JsonKey(name: 'article_id', fromJson: _stringToInt)
  final int? articleId;
  @override
  @JsonKey(name: 'article_cat_id')
  final String? articleCatId;
  @override
  @JsonKey(name: 'article_title')
  final String? articleTitle;
  @override
  @JsonKey(name: 'article_ts')
  final String? articleTs;
  @override
  @JsonKey(name: 'article_summary')
  final String? articleSummary;
  @override
  @JsonKey(name: 'article_des')
  final String? articleDes;
  @override
  @JsonKey(name: 'article_pic')
  final String? articlePic;
  @override
  @JsonKey(name: 'article_pic_pos')
  final String? articlePicPos;
  @override
  @JsonKey(name: 'article_visitor', fromJson: _stringToInt)
  final int? articleVisitor;
  @override
  @JsonKey(name: 'article_is_new', fromJson: _stringToBool)
  final bool? articleIsNew;
  @override
  @JsonKey(name: 'article_priority')
  final String? articlePriority;
  @override
  @JsonKey(name: 'article_active_vote', fromJson: _stringToBool)
  final bool? articleActiveVote;
  @override
  @JsonKey(name: 'article_active_hint', fromJson: _stringToBool)
  final bool? articleActiveHint;
  @override
  @JsonKey(name: 'article_active', fromJson: _stringToBool)
  final bool? articleActive;
  @override
  @JsonKey(name: 'article_date')
  final String? articleDate;
  @override
  @JsonKey(name: 'article_pic_active', fromJson: _stringToBool)
  final bool? articlePicActive;
  @override
  @JsonKey(name: 'article_last_article', fromJson: _stringToBool)
  final bool? articleLastArticle;
  @override
  @JsonKey(name: 'article_publisher_id')
  final String? articlePublisherId;
  @override
  @JsonKey(name: 'article_source')
  final String? articleSource;
  @override
  @JsonKey(name: 'article_source_url')
  final String? articleSourceUrl;
  @override
  @JsonKey(name: 'article_youtube_id')
  final String? articleYoutubeId;
  @override
  @JsonKey(name: 'article_file')
  final String? articleFile;
  @override
  @JsonKey(name: 'article_user_add_hint_nsup', fromJson: _stringToBool)
  final bool? articleUserAddHintNsup;
  @override
  final ArticleDetailCategory? category;
  final List<dynamic>? _captions;
  @override
  List<dynamic>? get captions {
    final value = _captions;
    if (value == null) return null;
    if (_captions is EqualUnmodifiableListView) return _captions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _votes;
  @override
  List<dynamic>? get votes {
    final value = _votes;
    if (value == null) return null;
    if (_votes is EqualUnmodifiableListView) return _votes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ArticleDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ArticleDetailCopyWith<_ArticleDetail> get copyWith =>
      __$ArticleDetailCopyWithImpl<_ArticleDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ArticleDetailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleDetail &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.articleCatId, articleCatId) ||
                other.articleCatId == articleCatId) &&
            (identical(other.articleTitle, articleTitle) ||
                other.articleTitle == articleTitle) &&
            (identical(other.articleTs, articleTs) ||
                other.articleTs == articleTs) &&
            (identical(other.articleSummary, articleSummary) ||
                other.articleSummary == articleSummary) &&
            (identical(other.articleDes, articleDes) ||
                other.articleDes == articleDes) &&
            (identical(other.articlePic, articlePic) ||
                other.articlePic == articlePic) &&
            (identical(other.articlePicPos, articlePicPos) ||
                other.articlePicPos == articlePicPos) &&
            (identical(other.articleVisitor, articleVisitor) ||
                other.articleVisitor == articleVisitor) &&
            (identical(other.articleIsNew, articleIsNew) ||
                other.articleIsNew == articleIsNew) &&
            (identical(other.articlePriority, articlePriority) ||
                other.articlePriority == articlePriority) &&
            (identical(other.articleActiveVote, articleActiveVote) ||
                other.articleActiveVote == articleActiveVote) &&
            (identical(other.articleActiveHint, articleActiveHint) ||
                other.articleActiveHint == articleActiveHint) &&
            (identical(other.articleActive, articleActive) ||
                other.articleActive == articleActive) &&
            (identical(other.articleDate, articleDate) ||
                other.articleDate == articleDate) &&
            (identical(other.articlePicActive, articlePicActive) ||
                other.articlePicActive == articlePicActive) &&
            (identical(other.articleLastArticle, articleLastArticle) ||
                other.articleLastArticle == articleLastArticle) &&
            (identical(other.articlePublisherId, articlePublisherId) ||
                other.articlePublisherId == articlePublisherId) &&
            (identical(other.articleSource, articleSource) ||
                other.articleSource == articleSource) &&
            (identical(other.articleSourceUrl, articleSourceUrl) ||
                other.articleSourceUrl == articleSourceUrl) &&
            (identical(other.articleYoutubeId, articleYoutubeId) ||
                other.articleYoutubeId == articleYoutubeId) &&
            (identical(other.articleFile, articleFile) ||
                other.articleFile == articleFile) &&
            (identical(other.articleUserAddHintNsup, articleUserAddHintNsup) ||
                other.articleUserAddHintNsup == articleUserAddHintNsup) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._captions, _captions) &&
            const DeepCollectionEquality().equals(other._votes, _votes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        articleId,
        articleCatId,
        articleTitle,
        articleTs,
        articleSummary,
        articleDes,
        articlePic,
        articlePicPos,
        articleVisitor,
        articleIsNew,
        articlePriority,
        articleActiveVote,
        articleActiveHint,
        articleActive,
        articleDate,
        articlePicActive,
        articleLastArticle,
        articlePublisherId,
        articleSource,
        articleSourceUrl,
        articleYoutubeId,
        articleFile,
        articleUserAddHintNsup,
        category,
        const DeepCollectionEquality().hash(_captions),
        const DeepCollectionEquality().hash(_votes)
      ]);

  @override
  String toString() {
    return 'ArticleDetail(articleId: $articleId, articleCatId: $articleCatId, articleTitle: $articleTitle, articleTs: $articleTs, articleSummary: $articleSummary, articleDes: $articleDes, articlePic: $articlePic, articlePicPos: $articlePicPos, articleVisitor: $articleVisitor, articleIsNew: $articleIsNew, articlePriority: $articlePriority, articleActiveVote: $articleActiveVote, articleActiveHint: $articleActiveHint, articleActive: $articleActive, articleDate: $articleDate, articlePicActive: $articlePicActive, articleLastArticle: $articleLastArticle, articlePublisherId: $articlePublisherId, articleSource: $articleSource, articleSourceUrl: $articleSourceUrl, articleYoutubeId: $articleYoutubeId, articleFile: $articleFile, articleUserAddHintNsup: $articleUserAddHintNsup, category: $category, captions: $captions, votes: $votes)';
  }
}

/// @nodoc
abstract mixin class _$ArticleDetailCopyWith<$Res>
    implements $ArticleDetailCopyWith<$Res> {
  factory _$ArticleDetailCopyWith(
          _ArticleDetail value, $Res Function(_ArticleDetail) _then) =
      __$ArticleDetailCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,
      @JsonKey(name: 'article_cat_id') String? articleCatId,
      @JsonKey(name: 'article_title') String? articleTitle,
      @JsonKey(name: 'article_ts') String? articleTs,
      @JsonKey(name: 'article_summary') String? articleSummary,
      @JsonKey(name: 'article_des') String? articleDes,
      @JsonKey(name: 'article_pic') String? articlePic,
      @JsonKey(name: 'article_pic_pos') String? articlePicPos,
      @JsonKey(name: 'article_visitor', fromJson: _stringToInt)
      int? articleVisitor,
      @JsonKey(name: 'article_is_new', fromJson: _stringToBool)
      bool? articleIsNew,
      @JsonKey(name: 'article_priority') String? articlePriority,
      @JsonKey(name: 'article_active_vote', fromJson: _stringToBool)
      bool? articleActiveVote,
      @JsonKey(name: 'article_active_hint', fromJson: _stringToBool)
      bool? articleActiveHint,
      @JsonKey(name: 'article_active', fromJson: _stringToBool)
      bool? articleActive,
      @JsonKey(name: 'article_date') String? articleDate,
      @JsonKey(name: 'article_pic_active', fromJson: _stringToBool)
      bool? articlePicActive,
      @JsonKey(name: 'article_last_article', fromJson: _stringToBool)
      bool? articleLastArticle,
      @JsonKey(name: 'article_publisher_id') String? articlePublisherId,
      @JsonKey(name: 'article_source') String? articleSource,
      @JsonKey(name: 'article_source_url') String? articleSourceUrl,
      @JsonKey(name: 'article_youtube_id') String? articleYoutubeId,
      @JsonKey(name: 'article_file') String? articleFile,
      @JsonKey(name: 'article_user_add_hint_nsup', fromJson: _stringToBool)
      bool? articleUserAddHintNsup,
      ArticleDetailCategory? category,
      List<dynamic>? captions,
      List<dynamic>? votes});

  @override
  $ArticleDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$ArticleDetailCopyWithImpl<$Res>
    implements _$ArticleDetailCopyWith<$Res> {
  __$ArticleDetailCopyWithImpl(this._self, this._then);

  final _ArticleDetail _self;
  final $Res Function(_ArticleDetail) _then;

  /// Create a copy of ArticleDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? articleId = freezed,
    Object? articleCatId = freezed,
    Object? articleTitle = freezed,
    Object? articleTs = freezed,
    Object? articleSummary = freezed,
    Object? articleDes = freezed,
    Object? articlePic = freezed,
    Object? articlePicPos = freezed,
    Object? articleVisitor = freezed,
    Object? articleIsNew = freezed,
    Object? articlePriority = freezed,
    Object? articleActiveVote = freezed,
    Object? articleActiveHint = freezed,
    Object? articleActive = freezed,
    Object? articleDate = freezed,
    Object? articlePicActive = freezed,
    Object? articleLastArticle = freezed,
    Object? articlePublisherId = freezed,
    Object? articleSource = freezed,
    Object? articleSourceUrl = freezed,
    Object? articleYoutubeId = freezed,
    Object? articleFile = freezed,
    Object? articleUserAddHintNsup = freezed,
    Object? category = freezed,
    Object? captions = freezed,
    Object? votes = freezed,
  }) {
    return _then(_ArticleDetail(
      articleId: freezed == articleId
          ? _self.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int?,
      articleCatId: freezed == articleCatId
          ? _self.articleCatId
          : articleCatId // ignore: cast_nullable_to_non_nullable
              as String?,
      articleTitle: freezed == articleTitle
          ? _self.articleTitle
          : articleTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      articleTs: freezed == articleTs
          ? _self.articleTs
          : articleTs // ignore: cast_nullable_to_non_nullable
              as String?,
      articleSummary: freezed == articleSummary
          ? _self.articleSummary
          : articleSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      articleDes: freezed == articleDes
          ? _self.articleDes
          : articleDes // ignore: cast_nullable_to_non_nullable
              as String?,
      articlePic: freezed == articlePic
          ? _self.articlePic
          : articlePic // ignore: cast_nullable_to_non_nullable
              as String?,
      articlePicPos: freezed == articlePicPos
          ? _self.articlePicPos
          : articlePicPos // ignore: cast_nullable_to_non_nullable
              as String?,
      articleVisitor: freezed == articleVisitor
          ? _self.articleVisitor
          : articleVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      articleIsNew: freezed == articleIsNew
          ? _self.articleIsNew
          : articleIsNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      articlePriority: freezed == articlePriority
          ? _self.articlePriority
          : articlePriority // ignore: cast_nullable_to_non_nullable
              as String?,
      articleActiveVote: freezed == articleActiveVote
          ? _self.articleActiveVote
          : articleActiveVote // ignore: cast_nullable_to_non_nullable
              as bool?,
      articleActiveHint: freezed == articleActiveHint
          ? _self.articleActiveHint
          : articleActiveHint // ignore: cast_nullable_to_non_nullable
              as bool?,
      articleActive: freezed == articleActive
          ? _self.articleActive
          : articleActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      articleDate: freezed == articleDate
          ? _self.articleDate
          : articleDate // ignore: cast_nullable_to_non_nullable
              as String?,
      articlePicActive: freezed == articlePicActive
          ? _self.articlePicActive
          : articlePicActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      articleLastArticle: freezed == articleLastArticle
          ? _self.articleLastArticle
          : articleLastArticle // ignore: cast_nullable_to_non_nullable
              as bool?,
      articlePublisherId: freezed == articlePublisherId
          ? _self.articlePublisherId
          : articlePublisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      articleSource: freezed == articleSource
          ? _self.articleSource
          : articleSource // ignore: cast_nullable_to_non_nullable
              as String?,
      articleSourceUrl: freezed == articleSourceUrl
          ? _self.articleSourceUrl
          : articleSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      articleYoutubeId: freezed == articleYoutubeId
          ? _self.articleYoutubeId
          : articleYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      articleFile: freezed == articleFile
          ? _self.articleFile
          : articleFile // ignore: cast_nullable_to_non_nullable
              as String?,
      articleUserAddHintNsup: freezed == articleUserAddHintNsup
          ? _self.articleUserAddHintNsup
          : articleUserAddHintNsup // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as ArticleDetailCategory?,
      captions: freezed == captions
          ? _self._captions
          : captions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      votes: freezed == votes
          ? _self._votes
          : votes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }

  /// Create a copy of ArticleDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $ArticleDetailCategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// @nodoc
mixin _$ArticleDetailCategory {
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

  /// Create a copy of ArticleDetailCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ArticleDetailCategoryCopyWith<ArticleDetailCategory> get copyWith =>
      _$ArticleDetailCategoryCopyWithImpl<ArticleDetailCategory>(
          this as ArticleDetailCategory, _$identity);

  /// Serializes this ArticleDetailCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArticleDetailCategory &&
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
    return 'ArticleDetailCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
  }
}

/// @nodoc
abstract mixin class $ArticleDetailCategoryCopyWith<$Res> {
  factory $ArticleDetailCategoryCopyWith(ArticleDetailCategory value,
          $Res Function(ArticleDetailCategory) _then) =
      _$ArticleDetailCategoryCopyWithImpl;
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
class _$ArticleDetailCategoryCopyWithImpl<$Res>
    implements $ArticleDetailCategoryCopyWith<$Res> {
  _$ArticleDetailCategoryCopyWithImpl(this._self, this._then);

  final ArticleDetailCategory _self;
  final $Res Function(ArticleDetailCategory) _then;

  /// Create a copy of ArticleDetailCategory
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

/// Adds pattern-matching-related methods to [ArticleDetailCategory].
extension ArticleDetailCategoryPatterns on ArticleDetailCategory {
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
    TResult Function(_ArticleDetailCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ArticleDetailCategory() when $default != null:
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
    TResult Function(_ArticleDetailCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleDetailCategory():
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
    TResult? Function(_ArticleDetailCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ArticleDetailCategory() when $default != null:
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
      case _ArticleDetailCategory() when $default != null:
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
      case _ArticleDetailCategory():
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
      case _ArticleDetailCategory() when $default != null:
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
class _ArticleDetailCategory implements ArticleDetailCategory {
  const _ArticleDetailCategory(
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
  factory _ArticleDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailCategoryFromJson(json);

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

  /// Create a copy of ArticleDetailCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ArticleDetailCategoryCopyWith<_ArticleDetailCategory> get copyWith =>
      __$ArticleDetailCategoryCopyWithImpl<_ArticleDetailCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ArticleDetailCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleDetailCategory &&
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
    return 'ArticleDetailCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
  }
}

/// @nodoc
abstract mixin class _$ArticleDetailCategoryCopyWith<$Res>
    implements $ArticleDetailCategoryCopyWith<$Res> {
  factory _$ArticleDetailCategoryCopyWith(_ArticleDetailCategory value,
          $Res Function(_ArticleDetailCategory) _then) =
      __$ArticleDetailCategoryCopyWithImpl;
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
class __$ArticleDetailCategoryCopyWithImpl<$Res>
    implements _$ArticleDetailCategoryCopyWith<$Res> {
  __$ArticleDetailCategoryCopyWithImpl(this._self, this._then);

  final _ArticleDetailCategory _self;
  final $Res Function(_ArticleDetailCategory) _then;

  /// Create a copy of ArticleDetailCategory
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
    return _then(_ArticleDetailCategory(
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
