// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookResponse {
  bool? get success;
  BookData? get data;
  String? get message;

  /// Create a copy of BookResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookResponseCopyWith<BookResponse> get copyWith =>
      _$BookResponseCopyWithImpl<BookResponse>(
          this as BookResponse, _$identity);

  /// Serializes this BookResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'BookResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $BookResponseCopyWith<$Res> {
  factory $BookResponseCopyWith(
          BookResponse value, $Res Function(BookResponse) _then) =
      _$BookResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, BookData? data, String? message});

  $BookDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BookResponseCopyWithImpl<$Res> implements $BookResponseCopyWith<$Res> {
  _$BookResponseCopyWithImpl(this._self, this._then);

  final BookResponse _self;
  final $Res Function(BookResponse) _then;

  /// Create a copy of BookResponse
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
              as BookData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BookResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $BookDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BookResponse].
extension BookResponsePatterns on BookResponse {
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
    TResult Function(_BookResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookResponse() when $default != null:
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
    TResult Function(_BookResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookResponse():
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
    TResult? Function(_BookResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookResponse() when $default != null:
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
    TResult Function(bool? success, BookData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookResponse() when $default != null:
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
    TResult Function(bool? success, BookData? data, String? message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookResponse():
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
    TResult? Function(bool? success, BookData? data, String? message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookResponse implements BookResponse {
  const _BookResponse({this.success, this.data, this.message});
  factory _BookResponse.fromJson(Map<String, dynamic> json) =>
      _$BookResponseFromJson(json);

  @override
  final bool? success;
  @override
  final BookData? data;
  @override
  final String? message;

  /// Create a copy of BookResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookResponseCopyWith<_BookResponse> get copyWith =>
      __$BookResponseCopyWithImpl<_BookResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'BookResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$BookResponseCopyWith<$Res>
    implements $BookResponseCopyWith<$Res> {
  factory _$BookResponseCopyWith(
          _BookResponse value, $Res Function(_BookResponse) _then) =
      __$BookResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, BookData? data, String? message});

  @override
  $BookDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$BookResponseCopyWithImpl<$Res>
    implements _$BookResponseCopyWith<$Res> {
  __$BookResponseCopyWithImpl(this._self, this._then);

  final _BookResponse _self;
  final $Res Function(_BookResponse) _then;

  /// Create a copy of BookResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_BookResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BookResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $BookDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$BookData {
  String? get type;
  List<BookCategory>? get categories;
  BookPaginationData? get pagination;
  List<BookPageInfo>? get pages;

  /// Create a copy of BookData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookDataCopyWith<BookData> get copyWith =>
      _$BookDataCopyWithImpl<BookData>(this as BookData, _$identity);

  /// Serializes this BookData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookData &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other.pages, pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(categories),
      pagination,
      const DeepCollectionEquality().hash(pages));

  @override
  String toString() {
    return 'BookData(type: $type, categories: $categories, pagination: $pagination, pages: $pages)';
  }
}

/// @nodoc
abstract mixin class $BookDataCopyWith<$Res> {
  factory $BookDataCopyWith(BookData value, $Res Function(BookData) _then) =
      _$BookDataCopyWithImpl;
  @useResult
  $Res call(
      {String? type,
      List<BookCategory>? categories,
      BookPaginationData? pagination,
      List<BookPageInfo>? pages});

  $BookPaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$BookDataCopyWithImpl<$Res> implements $BookDataCopyWith<$Res> {
  _$BookDataCopyWithImpl(this._self, this._then);

  final BookData _self;
  final $Res Function(BookData) _then;

  /// Create a copy of BookData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? categories = freezed,
    Object? pagination = freezed,
    Object? pages = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<BookCategory>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as BookPaginationData?,
      pages: freezed == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<BookPageInfo>?,
    ));
  }

  /// Create a copy of BookData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookPaginationDataCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $BookPaginationDataCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BookData].
extension BookDataPatterns on BookData {
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
    TResult Function(_BookData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookData() when $default != null:
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
    TResult Function(_BookData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookData():
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
    TResult? Function(_BookData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookData() when $default != null:
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
    TResult Function(String? type, List<BookCategory>? categories,
            BookPaginationData? pagination, List<BookPageInfo>? pages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookData() when $default != null:
        return $default(
            _that.type, _that.categories, _that.pagination, _that.pages);
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
    TResult Function(String? type, List<BookCategory>? categories,
            BookPaginationData? pagination, List<BookPageInfo>? pages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookData():
        return $default(
            _that.type, _that.categories, _that.pagination, _that.pages);
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
    TResult? Function(String? type, List<BookCategory>? categories,
            BookPaginationData? pagination, List<BookPageInfo>? pages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookData() when $default != null:
        return $default(
            _that.type, _that.categories, _that.pagination, _that.pages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookData implements BookData {
  const _BookData(
      {this.type,
      final List<BookCategory>? categories,
      this.pagination,
      final List<BookPageInfo>? pages})
      : _categories = categories,
        _pages = pages;
  factory _BookData.fromJson(Map<String, dynamic> json) =>
      _$BookDataFromJson(json);

  @override
  final String? type;
  final List<BookCategory>? _categories;
  @override
  List<BookCategory>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BookPaginationData? pagination;
  final List<BookPageInfo>? _pages;
  @override
  List<BookPageInfo>? get pages {
    final value = _pages;
    if (value == null) return null;
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BookData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookDataCopyWith<_BookData> get copyWith =>
      __$BookDataCopyWithImpl<_BookData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookData &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_categories),
      pagination,
      const DeepCollectionEquality().hash(_pages));

  @override
  String toString() {
    return 'BookData(type: $type, categories: $categories, pagination: $pagination, pages: $pages)';
  }
}

/// @nodoc
abstract mixin class _$BookDataCopyWith<$Res>
    implements $BookDataCopyWith<$Res> {
  factory _$BookDataCopyWith(_BookData value, $Res Function(_BookData) _then) =
      __$BookDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? type,
      List<BookCategory>? categories,
      BookPaginationData? pagination,
      List<BookPageInfo>? pages});

  @override
  $BookPaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$BookDataCopyWithImpl<$Res> implements _$BookDataCopyWith<$Res> {
  __$BookDataCopyWithImpl(this._self, this._then);

  final _BookData _self;
  final $Res Function(_BookData) _then;

  /// Create a copy of BookData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? categories = freezed,
    Object? pagination = freezed,
    Object? pages = freezed,
  }) {
    return _then(_BookData(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<BookCategory>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as BookPaginationData?,
      pages: freezed == pages
          ? _self._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<BookPageInfo>?,
    ));
  }

  /// Create a copy of BookData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookPaginationDataCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $BookPaginationDataCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// @nodoc
mixin _$BookCategory {
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
  List<BookItem>? get data;

  /// Create a copy of BookCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookCategoryCopyWith<BookCategory> get copyWith =>
      _$BookCategoryCopyWithImpl<BookCategory>(
          this as BookCategory, _$identity);

  /// Serializes this BookCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookCategory &&
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
    return 'BookCategory(id: $id, title: $title, note: $note, position: $position, language: $language, date: $date, menu_id: $menu_id, show_in_menu: $show_in_menu, show_in_main: $show_in_main, content_count: $content_count, type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class $BookCategoryCopyWith<$Res> {
  factory $BookCategoryCopyWith(
          BookCategory value, $Res Function(BookCategory) _then) =
      _$BookCategoryCopyWithImpl;
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
      List<BookItem>? data});
}

/// @nodoc
class _$BookCategoryCopyWithImpl<$Res> implements $BookCategoryCopyWith<$Res> {
  _$BookCategoryCopyWithImpl(this._self, this._then);

  final BookCategory _self;
  final $Res Function(BookCategory) _then;

  /// Create a copy of BookCategory
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
              as List<BookItem>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BookCategory].
extension BookCategoryPatterns on BookCategory {
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
    TResult Function(_BookCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookCategory() when $default != null:
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
    TResult Function(_BookCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookCategory():
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
    TResult? Function(_BookCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookCategory() when $default != null:
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
            List<BookItem>? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookCategory() when $default != null:
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
            List<BookItem>? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookCategory():
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
            List<BookItem>? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookCategory() when $default != null:
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
class _BookCategory implements BookCategory {
  const _BookCategory(
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
      final List<BookItem>? data})
      : _data = data;
  factory _BookCategory.fromJson(Map<String, dynamic> json) =>
      _$BookCategoryFromJson(json);

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
  final List<BookItem>? _data;
  @override
  List<BookItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BookCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookCategoryCopyWith<_BookCategory> get copyWith =>
      __$BookCategoryCopyWithImpl<_BookCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookCategory &&
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
    return 'BookCategory(id: $id, title: $title, note: $note, position: $position, language: $language, date: $date, menu_id: $menu_id, show_in_menu: $show_in_menu, show_in_main: $show_in_main, content_count: $content_count, type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$BookCategoryCopyWith<$Res>
    implements $BookCategoryCopyWith<$Res> {
  factory _$BookCategoryCopyWith(
          _BookCategory value, $Res Function(_BookCategory) _then) =
      __$BookCategoryCopyWithImpl;
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
      List<BookItem>? data});
}

/// @nodoc
class __$BookCategoryCopyWithImpl<$Res>
    implements _$BookCategoryCopyWith<$Res> {
  __$BookCategoryCopyWithImpl(this._self, this._then);

  final _BookCategory _self;
  final $Res Function(_BookCategory) _then;

  /// Create a copy of BookCategory
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
    return _then(_BookCategory(
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
              as List<BookItem>?,
    ));
  }
}

/// @nodoc
mixin _$BookItem {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  String? get title;
  String? get summary;
  String? get date;
  String? get visitor_count;
  @JsonKey(fromJson: _stringToBool)
  bool? get is_new;
  String? get priority;
  String? get file;
  String? get format;
  String? get publisher_id;
  @JsonKey(name: 'book_file_url')
  String? get bookFileUrl;
  @JsonKey(name: 'book_file_epub_url')
  String? get bookFileEpubUrl;
  @JsonKey(name: 'book_file_kfx_url')
  String? get bookFileKfxUrl;
  @JsonKey(name: 'book_pic_url')
  String? get bookPicUrl;

  /// Create a copy of BookItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookItemCopyWith<BookItem> get copyWith =>
      _$BookItemCopyWithImpl<BookItem>(this as BookItem, _$identity);

  /// Serializes this BookItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.publisher_id, publisher_id) ||
                other.publisher_id == publisher_id) &&
            (identical(other.bookFileUrl, bookFileUrl) ||
                other.bookFileUrl == bookFileUrl) &&
            (identical(other.bookFileEpubUrl, bookFileEpubUrl) ||
                other.bookFileEpubUrl == bookFileEpubUrl) &&
            (identical(other.bookFileKfxUrl, bookFileKfxUrl) ||
                other.bookFileKfxUrl == bookFileKfxUrl) &&
            (identical(other.bookPicUrl, bookPicUrl) ||
                other.bookPicUrl == bookPicUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      summary,
      date,
      visitor_count,
      is_new,
      priority,
      file,
      format,
      publisher_id,
      bookFileUrl,
      bookFileEpubUrl,
      bookFileKfxUrl,
      bookPicUrl);

  @override
  String toString() {
    return 'BookItem(id: $id, title: $title, summary: $summary, date: $date, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, file: $file, format: $format, publisher_id: $publisher_id, bookFileUrl: $bookFileUrl, bookFileEpubUrl: $bookFileEpubUrl, bookFileKfxUrl: $bookFileKfxUrl, bookPicUrl: $bookPicUrl)';
  }
}

/// @nodoc
abstract mixin class $BookItemCopyWith<$Res> {
  factory $BookItemCopyWith(BookItem value, $Res Function(BookItem) _then) =
      _$BookItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
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
      @JsonKey(name: 'book_pic_url') String? bookPicUrl});
}

/// @nodoc
class _$BookItemCopyWithImpl<$Res> implements $BookItemCopyWith<$Res> {
  _$BookItemCopyWithImpl(this._self, this._then);

  final BookItem _self;
  final $Res Function(BookItem) _then;

  /// Create a copy of BookItem
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
    Object? file = freezed,
    Object? format = freezed,
    Object? publisher_id = freezed,
    Object? bookFileUrl = freezed,
    Object? bookFileEpubUrl = freezed,
    Object? bookFileKfxUrl = freezed,
    Object? bookPicUrl = freezed,
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
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher_id: freezed == publisher_id
          ? _self.publisher_id
          : publisher_id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileUrl: freezed == bookFileUrl
          ? _self.bookFileUrl
          : bookFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileEpubUrl: freezed == bookFileEpubUrl
          ? _self.bookFileEpubUrl
          : bookFileEpubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileKfxUrl: freezed == bookFileKfxUrl
          ? _self.bookFileKfxUrl
          : bookFileKfxUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPicUrl: freezed == bookPicUrl
          ? _self.bookPicUrl
          : bookPicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BookItem].
extension BookItemPatterns on BookItem {
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
    TResult Function(_BookItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookItem() when $default != null:
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
    TResult Function(_BookItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookItem():
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
    TResult? Function(_BookItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookItem() when $default != null:
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
            String? file,
            String? format,
            String? publisher_id,
            @JsonKey(name: 'book_file_url') String? bookFileUrl,
            @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
            @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
            @JsonKey(name: 'book_pic_url') String? bookPicUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.file,
            _that.format,
            _that.publisher_id,
            _that.bookFileUrl,
            _that.bookFileEpubUrl,
            _that.bookFileKfxUrl,
            _that.bookPicUrl);
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
            String? file,
            String? format,
            String? publisher_id,
            @JsonKey(name: 'book_file_url') String? bookFileUrl,
            @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
            @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
            @JsonKey(name: 'book_pic_url') String? bookPicUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookItem():
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.file,
            _that.format,
            _that.publisher_id,
            _that.bookFileUrl,
            _that.bookFileEpubUrl,
            _that.bookFileKfxUrl,
            _that.bookPicUrl);
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
            String? file,
            String? format,
            String? publisher_id,
            @JsonKey(name: 'book_file_url') String? bookFileUrl,
            @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
            @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
            @JsonKey(name: 'book_pic_url') String? bookPicUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.file,
            _that.format,
            _that.publisher_id,
            _that.bookFileUrl,
            _that.bookFileEpubUrl,
            _that.bookFileKfxUrl,
            _that.bookPicUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookItem implements BookItem {
  const _BookItem(
      {@JsonKey(fromJson: _stringToInt) this.id,
      this.title,
      this.summary,
      this.date,
      this.visitor_count,
      @JsonKey(fromJson: _stringToBool) this.is_new,
      this.priority,
      this.file,
      this.format,
      this.publisher_id,
      @JsonKey(name: 'book_file_url') this.bookFileUrl,
      @JsonKey(name: 'book_file_epub_url') this.bookFileEpubUrl,
      @JsonKey(name: 'book_file_kfx_url') this.bookFileKfxUrl,
      @JsonKey(name: 'book_pic_url') this.bookPicUrl});
  factory _BookItem.fromJson(Map<String, dynamic> json) =>
      _$BookItemFromJson(json);

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
  final String? file;
  @override
  final String? format;
  @override
  final String? publisher_id;
  @override
  @JsonKey(name: 'book_file_url')
  final String? bookFileUrl;
  @override
  @JsonKey(name: 'book_file_epub_url')
  final String? bookFileEpubUrl;
  @override
  @JsonKey(name: 'book_file_kfx_url')
  final String? bookFileKfxUrl;
  @override
  @JsonKey(name: 'book_pic_url')
  final String? bookPicUrl;

  /// Create a copy of BookItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookItemCopyWith<_BookItem> get copyWith =>
      __$BookItemCopyWithImpl<_BookItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.publisher_id, publisher_id) ||
                other.publisher_id == publisher_id) &&
            (identical(other.bookFileUrl, bookFileUrl) ||
                other.bookFileUrl == bookFileUrl) &&
            (identical(other.bookFileEpubUrl, bookFileEpubUrl) ||
                other.bookFileEpubUrl == bookFileEpubUrl) &&
            (identical(other.bookFileKfxUrl, bookFileKfxUrl) ||
                other.bookFileKfxUrl == bookFileKfxUrl) &&
            (identical(other.bookPicUrl, bookPicUrl) ||
                other.bookPicUrl == bookPicUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      summary,
      date,
      visitor_count,
      is_new,
      priority,
      file,
      format,
      publisher_id,
      bookFileUrl,
      bookFileEpubUrl,
      bookFileKfxUrl,
      bookPicUrl);

  @override
  String toString() {
    return 'BookItem(id: $id, title: $title, summary: $summary, date: $date, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, file: $file, format: $format, publisher_id: $publisher_id, bookFileUrl: $bookFileUrl, bookFileEpubUrl: $bookFileEpubUrl, bookFileKfxUrl: $bookFileKfxUrl, bookPicUrl: $bookPicUrl)';
  }
}

/// @nodoc
abstract mixin class _$BookItemCopyWith<$Res>
    implements $BookItemCopyWith<$Res> {
  factory _$BookItemCopyWith(_BookItem value, $Res Function(_BookItem) _then) =
      __$BookItemCopyWithImpl;
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
      String? file,
      String? format,
      String? publisher_id,
      @JsonKey(name: 'book_file_url') String? bookFileUrl,
      @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
      @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
      @JsonKey(name: 'book_pic_url') String? bookPicUrl});
}

/// @nodoc
class __$BookItemCopyWithImpl<$Res> implements _$BookItemCopyWith<$Res> {
  __$BookItemCopyWithImpl(this._self, this._then);

  final _BookItem _self;
  final $Res Function(_BookItem) _then;

  /// Create a copy of BookItem
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
    Object? file = freezed,
    Object? format = freezed,
    Object? publisher_id = freezed,
    Object? bookFileUrl = freezed,
    Object? bookFileEpubUrl = freezed,
    Object? bookFileKfxUrl = freezed,
    Object? bookPicUrl = freezed,
  }) {
    return _then(_BookItem(
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
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher_id: freezed == publisher_id
          ? _self.publisher_id
          : publisher_id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileUrl: freezed == bookFileUrl
          ? _self.bookFileUrl
          : bookFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileEpubUrl: freezed == bookFileEpubUrl
          ? _self.bookFileEpubUrl
          : bookFileEpubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileKfxUrl: freezed == bookFileKfxUrl
          ? _self.bookFileKfxUrl
          : bookFileKfxUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPicUrl: freezed == bookPicUrl
          ? _self.bookPicUrl
          : bookPicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$BookPaginationData {
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

  /// Create a copy of BookPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookPaginationDataCopyWith<BookPaginationData> get copyWith =>
      _$BookPaginationDataCopyWithImpl<BookPaginationData>(
          this as BookPaginationData, _$identity);

  /// Serializes this BookPaginationData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookPaginationData &&
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
    return 'BookPaginationData(currentPage: $currentPage, perPage: $perPage, totalCategories: $totalCategories, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class $BookPaginationDataCopyWith<$Res> {
  factory $BookPaginationDataCopyWith(
          BookPaginationData value, $Res Function(BookPaginationData) _then) =
      _$BookPaginationDataCopyWithImpl;
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
class _$BookPaginationDataCopyWithImpl<$Res>
    implements $BookPaginationDataCopyWith<$Res> {
  _$BookPaginationDataCopyWithImpl(this._self, this._then);

  final BookPaginationData _self;
  final $Res Function(BookPaginationData) _then;

  /// Create a copy of BookPaginationData
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

/// Adds pattern-matching-related methods to [BookPaginationData].
extension BookPaginationDataPatterns on BookPaginationData {
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
    TResult Function(_BookPaginationData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookPaginationData() when $default != null:
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
    TResult Function(_BookPaginationData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPaginationData():
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
    TResult? Function(_BookPaginationData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPaginationData() when $default != null:
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
      case _BookPaginationData() when $default != null:
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
      case _BookPaginationData():
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
      case _BookPaginationData() when $default != null:
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
class _BookPaginationData implements BookPaginationData {
  const _BookPaginationData(
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
  factory _BookPaginationData.fromJson(Map<String, dynamic> json) =>
      _$BookPaginationDataFromJson(json);

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

  /// Create a copy of BookPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookPaginationDataCopyWith<_BookPaginationData> get copyWith =>
      __$BookPaginationDataCopyWithImpl<_BookPaginationData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookPaginationDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookPaginationData &&
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
    return 'BookPaginationData(currentPage: $currentPage, perPage: $perPage, totalCategories: $totalCategories, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class _$BookPaginationDataCopyWith<$Res>
    implements $BookPaginationDataCopyWith<$Res> {
  factory _$BookPaginationDataCopyWith(
          _BookPaginationData value, $Res Function(_BookPaginationData) _then) =
      __$BookPaginationDataCopyWithImpl;
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
class __$BookPaginationDataCopyWithImpl<$Res>
    implements _$BookPaginationDataCopyWith<$Res> {
  __$BookPaginationDataCopyWithImpl(this._self, this._then);

  final _BookPaginationData _self;
  final $Res Function(_BookPaginationData) _then;

  /// Create a copy of BookPaginationData
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
    return _then(_BookPaginationData(
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
mixin _$BookPageInfo {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  String? get title;
  String? get content;
  String? get language;
  String? get visitor_count;
  String? get priority;
  String? get date;
  String? get menu_id;
  String? get type;

  /// Create a copy of BookPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookPageInfoCopyWith<BookPageInfo> get copyWith =>
      _$BookPageInfoCopyWithImpl<BookPageInfo>(
          this as BookPageInfo, _$identity);

  /// Serializes this BookPageInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookPageInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.menu_id, menu_id) || other.menu_id == menu_id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, language,
      visitor_count, priority, date, menu_id, type);

  @override
  String toString() {
    return 'BookPageInfo(id: $id, title: $title, content: $content, language: $language, visitor_count: $visitor_count, priority: $priority, date: $date, menu_id: $menu_id, type: $type)';
  }
}

/// @nodoc
abstract mixin class $BookPageInfoCopyWith<$Res> {
  factory $BookPageInfoCopyWith(
          BookPageInfo value, $Res Function(BookPageInfo) _then) =
      _$BookPageInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      String? title,
      String? content,
      String? language,
      String? visitor_count,
      String? priority,
      String? date,
      String? menu_id,
      String? type});
}

/// @nodoc
class _$BookPageInfoCopyWithImpl<$Res> implements $BookPageInfoCopyWith<$Res> {
  _$BookPageInfoCopyWithImpl(this._self, this._then);

  final BookPageInfo _self;
  final $Res Function(BookPageInfo) _then;

  /// Create a copy of BookPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? language = freezed,
    Object? visitor_count = freezed,
    Object? priority = freezed,
    Object? date = freezed,
    Object? menu_id = freezed,
    Object? type = freezed,
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
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      visitor_count: freezed == visitor_count
          ? _self.visitor_count
          : visitor_count // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      menu_id: freezed == menu_id
          ? _self.menu_id
          : menu_id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BookPageInfo].
extension BookPageInfoPatterns on BookPageInfo {
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
    TResult Function(_BookPageInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookPageInfo() when $default != null:
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
    TResult Function(_BookPageInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPageInfo():
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
    TResult? Function(_BookPageInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPageInfo() when $default != null:
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
            String? content,
            String? language,
            String? visitor_count,
            String? priority,
            String? date,
            String? menu_id,
            String? type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookPageInfo() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.content,
            _that.language,
            _that.visitor_count,
            _that.priority,
            _that.date,
            _that.menu_id,
            _that.type);
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
            String? content,
            String? language,
            String? visitor_count,
            String? priority,
            String? date,
            String? menu_id,
            String? type)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPageInfo():
        return $default(
            _that.id,
            _that.title,
            _that.content,
            _that.language,
            _that.visitor_count,
            _that.priority,
            _that.date,
            _that.menu_id,
            _that.type);
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
            String? content,
            String? language,
            String? visitor_count,
            String? priority,
            String? date,
            String? menu_id,
            String? type)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookPageInfo() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.content,
            _that.language,
            _that.visitor_count,
            _that.priority,
            _that.date,
            _that.menu_id,
            _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookPageInfo implements BookPageInfo {
  const _BookPageInfo(
      {@JsonKey(fromJson: _stringToInt) this.id,
      this.title,
      this.content,
      this.language,
      this.visitor_count,
      this.priority,
      this.date,
      this.menu_id,
      this.type});
  factory _BookPageInfo.fromJson(Map<String, dynamic> json) =>
      _$BookPageInfoFromJson(json);

  @override
  @JsonKey(fromJson: _stringToInt)
  final int? id;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? language;
  @override
  final String? visitor_count;
  @override
  final String? priority;
  @override
  final String? date;
  @override
  final String? menu_id;
  @override
  final String? type;

  /// Create a copy of BookPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookPageInfoCopyWith<_BookPageInfo> get copyWith =>
      __$BookPageInfoCopyWithImpl<_BookPageInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookPageInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookPageInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.menu_id, menu_id) || other.menu_id == menu_id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, language,
      visitor_count, priority, date, menu_id, type);

  @override
  String toString() {
    return 'BookPageInfo(id: $id, title: $title, content: $content, language: $language, visitor_count: $visitor_count, priority: $priority, date: $date, menu_id: $menu_id, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$BookPageInfoCopyWith<$Res>
    implements $BookPageInfoCopyWith<$Res> {
  factory _$BookPageInfoCopyWith(
          _BookPageInfo value, $Res Function(_BookPageInfo) _then) =
      __$BookPageInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      String? title,
      String? content,
      String? language,
      String? visitor_count,
      String? priority,
      String? date,
      String? menu_id,
      String? type});
}

/// @nodoc
class __$BookPageInfoCopyWithImpl<$Res>
    implements _$BookPageInfoCopyWith<$Res> {
  __$BookPageInfoCopyWithImpl(this._self, this._then);

  final _BookPageInfo _self;
  final $Res Function(_BookPageInfo) _then;

  /// Create a copy of BookPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? language = freezed,
    Object? visitor_count = freezed,
    Object? priority = freezed,
    Object? date = freezed,
    Object? menu_id = freezed,
    Object? type = freezed,
  }) {
    return _then(_BookPageInfo(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      visitor_count: freezed == visitor_count
          ? _self.visitor_count
          : visitor_count // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      menu_id: freezed == menu_id
          ? _self.menu_id
          : menu_id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$BookDetailResponse {
  bool? get success;
  BookDetailData? get data;
  String? get message;

  /// Create a copy of BookDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookDetailResponseCopyWith<BookDetailResponse> get copyWith =>
      _$BookDetailResponseCopyWithImpl<BookDetailResponse>(
          this as BookDetailResponse, _$identity);

  /// Serializes this BookDetailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookDetailResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'BookDetailResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $BookDetailResponseCopyWith<$Res> {
  factory $BookDetailResponseCopyWith(
          BookDetailResponse value, $Res Function(BookDetailResponse) _then) =
      _$BookDetailResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, BookDetailData? data, String? message});

  $BookDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BookDetailResponseCopyWithImpl<$Res>
    implements $BookDetailResponseCopyWith<$Res> {
  _$BookDetailResponseCopyWithImpl(this._self, this._then);

  final BookDetailResponse _self;
  final $Res Function(BookDetailResponse) _then;

  /// Create a copy of BookDetailResponse
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
              as BookDetailData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BookDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $BookDetailDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BookDetailResponse].
extension BookDetailResponsePatterns on BookDetailResponse {
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
    TResult Function(_BookDetailResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse() when $default != null:
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
    TResult Function(_BookDetailResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse():
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
    TResult? Function(_BookDetailResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse() when $default != null:
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
    TResult Function(bool? success, BookDetailData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse() when $default != null:
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
    TResult Function(bool? success, BookDetailData? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse():
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
    TResult? Function(bool? success, BookDetailData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookDetailResponse implements BookDetailResponse {
  const _BookDetailResponse({this.success, this.data, this.message});
  factory _BookDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BookDetailResponseFromJson(json);

  @override
  final bool? success;
  @override
  final BookDetailData? data;
  @override
  final String? message;

  /// Create a copy of BookDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookDetailResponseCopyWith<_BookDetailResponse> get copyWith =>
      __$BookDetailResponseCopyWithImpl<_BookDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookDetailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookDetailResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'BookDetailResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$BookDetailResponseCopyWith<$Res>
    implements $BookDetailResponseCopyWith<$Res> {
  factory _$BookDetailResponseCopyWith(
          _BookDetailResponse value, $Res Function(_BookDetailResponse) _then) =
      __$BookDetailResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, BookDetailData? data, String? message});

  @override
  $BookDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$BookDetailResponseCopyWithImpl<$Res>
    implements _$BookDetailResponseCopyWith<$Res> {
  __$BookDetailResponseCopyWithImpl(this._self, this._then);

  final _BookDetailResponse _self;
  final $Res Function(_BookDetailResponse) _then;

  /// Create a copy of BookDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_BookDetailResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookDetailData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BookDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $BookDetailDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$BookDetailData {
  @JsonKey(name: 'book_id', fromJson: _stringToInt)
  int? get bookId;
  @JsonKey(name: 'book_cat_id')
  String? get bookCatId;
  @JsonKey(name: 'book_title')
  String? get bookTitle;
  @JsonKey(name: 'book_ts')
  String? get bookTs;
  @JsonKey(name: 'book_summary')
  String? get bookSummary;
  @JsonKey(name: 'book_des')
  String? get bookDes;
  @JsonKey(name: 'book_pic')
  String? get bookPic;
  @JsonKey(name: 'book_pic_pos')
  String? get bookPicPos;
  @JsonKey(name: 'book_visitor', fromJson: _stringToInt)
  int? get bookVisitor;
  @JsonKey(name: 'book_is_new', fromJson: _stringToBool)
  bool? get bookIsNew;
  @JsonKey(name: 'book_priority')
  String? get bookPriority;
  @JsonKey(name: 'book_active_vote', fromJson: _stringToBool)
  bool? get bookActiveVote;
  @JsonKey(name: 'book_active_hint', fromJson: _stringToBool)
  bool? get bookActiveHint;
  @JsonKey(name: 'book_active', fromJson: _stringToBool)
  bool? get bookActive;
  @JsonKey(name: 'book_date')
  String? get bookDate;
  @JsonKey(name: 'book_pic_active', fromJson: _stringToBool)
  bool? get bookPicActive;
  @JsonKey(name: 'book_last_book', fromJson: _stringToBool)
  bool? get bookLastBook;
  @JsonKey(name: 'book_publisher_id')
  String? get bookPublisherId;
  @JsonKey(name: 'book_source')
  String? get bookSource;
  @JsonKey(name: 'book_source_url')
  String? get bookSourceUrl;
  @JsonKey(name: 'book_youtube_id')
  String? get bookYoutubeId;
  @JsonKey(name: 'book_file')
  String? get bookFile;
  @JsonKey(name: 'book_file_ePub')
  String? get bookFileEPub;
  @JsonKey(name: 'book_file_kfx')
  String? get bookFileKfx;
  @JsonKey(name: 'book_user_add_hint_nsup', fromJson: _stringToBool)
  bool? get bookUserAddHintNsup;
  @JsonKey(name: 'book_file_url')
  String? get bookFileUrl;
  @JsonKey(name: 'book_file_epub_url')
  String? get bookFileEpubUrl;
  @JsonKey(name: 'book_file_kfx_url')
  String? get bookFileKfxUrl;
  @JsonKey(name: 'book_pic_url')
  String? get bookPicUrl;
  BookDetailCategory? get category;

  /// Create a copy of BookDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookDetailDataCopyWith<BookDetailData> get copyWith =>
      _$BookDetailDataCopyWithImpl<BookDetailData>(
          this as BookDetailData, _$identity);

  /// Serializes this BookDetailData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookDetailData &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.bookCatId, bookCatId) ||
                other.bookCatId == bookCatId) &&
            (identical(other.bookTitle, bookTitle) ||
                other.bookTitle == bookTitle) &&
            (identical(other.bookTs, bookTs) || other.bookTs == bookTs) &&
            (identical(other.bookSummary, bookSummary) ||
                other.bookSummary == bookSummary) &&
            (identical(other.bookDes, bookDes) || other.bookDes == bookDes) &&
            (identical(other.bookPic, bookPic) || other.bookPic == bookPic) &&
            (identical(other.bookPicPos, bookPicPos) ||
                other.bookPicPos == bookPicPos) &&
            (identical(other.bookVisitor, bookVisitor) ||
                other.bookVisitor == bookVisitor) &&
            (identical(other.bookIsNew, bookIsNew) ||
                other.bookIsNew == bookIsNew) &&
            (identical(other.bookPriority, bookPriority) ||
                other.bookPriority == bookPriority) &&
            (identical(other.bookActiveVote, bookActiveVote) ||
                other.bookActiveVote == bookActiveVote) &&
            (identical(other.bookActiveHint, bookActiveHint) ||
                other.bookActiveHint == bookActiveHint) &&
            (identical(other.bookActive, bookActive) ||
                other.bookActive == bookActive) &&
            (identical(other.bookDate, bookDate) ||
                other.bookDate == bookDate) &&
            (identical(other.bookPicActive, bookPicActive) ||
                other.bookPicActive == bookPicActive) &&
            (identical(other.bookLastBook, bookLastBook) ||
                other.bookLastBook == bookLastBook) &&
            (identical(other.bookPublisherId, bookPublisherId) ||
                other.bookPublisherId == bookPublisherId) &&
            (identical(other.bookSource, bookSource) ||
                other.bookSource == bookSource) &&
            (identical(other.bookSourceUrl, bookSourceUrl) ||
                other.bookSourceUrl == bookSourceUrl) &&
            (identical(other.bookYoutubeId, bookYoutubeId) ||
                other.bookYoutubeId == bookYoutubeId) &&
            (identical(other.bookFile, bookFile) ||
                other.bookFile == bookFile) &&
            (identical(other.bookFileEPub, bookFileEPub) ||
                other.bookFileEPub == bookFileEPub) &&
            (identical(other.bookFileKfx, bookFileKfx) ||
                other.bookFileKfx == bookFileKfx) &&
            (identical(other.bookUserAddHintNsup, bookUserAddHintNsup) ||
                other.bookUserAddHintNsup == bookUserAddHintNsup) &&
            (identical(other.bookFileUrl, bookFileUrl) ||
                other.bookFileUrl == bookFileUrl) &&
            (identical(other.bookFileEpubUrl, bookFileEpubUrl) ||
                other.bookFileEpubUrl == bookFileEpubUrl) &&
            (identical(other.bookFileKfxUrl, bookFileKfxUrl) ||
                other.bookFileKfxUrl == bookFileKfxUrl) &&
            (identical(other.bookPicUrl, bookPicUrl) ||
                other.bookPicUrl == bookPicUrl) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        bookId,
        bookCatId,
        bookTitle,
        bookTs,
        bookSummary,
        bookDes,
        bookPic,
        bookPicPos,
        bookVisitor,
        bookIsNew,
        bookPriority,
        bookActiveVote,
        bookActiveHint,
        bookActive,
        bookDate,
        bookPicActive,
        bookLastBook,
        bookPublisherId,
        bookSource,
        bookSourceUrl,
        bookYoutubeId,
        bookFile,
        bookFileEPub,
        bookFileKfx,
        bookUserAddHintNsup,
        bookFileUrl,
        bookFileEpubUrl,
        bookFileKfxUrl,
        bookPicUrl,
        category
      ]);

  @override
  String toString() {
    return 'BookDetailData(bookId: $bookId, bookCatId: $bookCatId, bookTitle: $bookTitle, bookTs: $bookTs, bookSummary: $bookSummary, bookDes: $bookDes, bookPic: $bookPic, bookPicPos: $bookPicPos, bookVisitor: $bookVisitor, bookIsNew: $bookIsNew, bookPriority: $bookPriority, bookActiveVote: $bookActiveVote, bookActiveHint: $bookActiveHint, bookActive: $bookActive, bookDate: $bookDate, bookPicActive: $bookPicActive, bookLastBook: $bookLastBook, bookPublisherId: $bookPublisherId, bookSource: $bookSource, bookSourceUrl: $bookSourceUrl, bookYoutubeId: $bookYoutubeId, bookFile: $bookFile, bookFileEPub: $bookFileEPub, bookFileKfx: $bookFileKfx, bookUserAddHintNsup: $bookUserAddHintNsup, bookFileUrl: $bookFileUrl, bookFileEpubUrl: $bookFileEpubUrl, bookFileKfxUrl: $bookFileKfxUrl, bookPicUrl: $bookPicUrl, category: $category)';
  }
}

/// @nodoc
abstract mixin class $BookDetailDataCopyWith<$Res> {
  factory $BookDetailDataCopyWith(
          BookDetailData value, $Res Function(BookDetailData) _then) =
      _$BookDetailDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'book_id', fromJson: _stringToInt) int? bookId,
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
      @JsonKey(name: 'book_active_vote', fromJson: _stringToBool)
      bool? bookActiveVote,
      @JsonKey(name: 'book_active_hint', fromJson: _stringToBool)
      bool? bookActiveHint,
      @JsonKey(name: 'book_active', fromJson: _stringToBool) bool? bookActive,
      @JsonKey(name: 'book_date') String? bookDate,
      @JsonKey(name: 'book_pic_active', fromJson: _stringToBool)
      bool? bookPicActive,
      @JsonKey(name: 'book_last_book', fromJson: _stringToBool)
      bool? bookLastBook,
      @JsonKey(name: 'book_publisher_id') String? bookPublisherId,
      @JsonKey(name: 'book_source') String? bookSource,
      @JsonKey(name: 'book_source_url') String? bookSourceUrl,
      @JsonKey(name: 'book_youtube_id') String? bookYoutubeId,
      @JsonKey(name: 'book_file') String? bookFile,
      @JsonKey(name: 'book_file_ePub') String? bookFileEPub,
      @JsonKey(name: 'book_file_kfx') String? bookFileKfx,
      @JsonKey(name: 'book_user_add_hint_nsup', fromJson: _stringToBool)
      bool? bookUserAddHintNsup,
      @JsonKey(name: 'book_file_url') String? bookFileUrl,
      @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
      @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
      @JsonKey(name: 'book_pic_url') String? bookPicUrl,
      BookDetailCategory? category});

  $BookDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$BookDetailDataCopyWithImpl<$Res>
    implements $BookDetailDataCopyWith<$Res> {
  _$BookDetailDataCopyWithImpl(this._self, this._then);

  final BookDetailData _self;
  final $Res Function(BookDetailData) _then;

  /// Create a copy of BookDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = freezed,
    Object? bookCatId = freezed,
    Object? bookTitle = freezed,
    Object? bookTs = freezed,
    Object? bookSummary = freezed,
    Object? bookDes = freezed,
    Object? bookPic = freezed,
    Object? bookPicPos = freezed,
    Object? bookVisitor = freezed,
    Object? bookIsNew = freezed,
    Object? bookPriority = freezed,
    Object? bookActiveVote = freezed,
    Object? bookActiveHint = freezed,
    Object? bookActive = freezed,
    Object? bookDate = freezed,
    Object? bookPicActive = freezed,
    Object? bookLastBook = freezed,
    Object? bookPublisherId = freezed,
    Object? bookSource = freezed,
    Object? bookSourceUrl = freezed,
    Object? bookYoutubeId = freezed,
    Object? bookFile = freezed,
    Object? bookFileEPub = freezed,
    Object? bookFileKfx = freezed,
    Object? bookUserAddHintNsup = freezed,
    Object? bookFileUrl = freezed,
    Object? bookFileEpubUrl = freezed,
    Object? bookFileKfxUrl = freezed,
    Object? bookPicUrl = freezed,
    Object? category = freezed,
  }) {
    return _then(_self.copyWith(
      bookId: freezed == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int?,
      bookCatId: freezed == bookCatId
          ? _self.bookCatId
          : bookCatId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookTitle: freezed == bookTitle
          ? _self.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      bookTs: freezed == bookTs
          ? _self.bookTs
          : bookTs // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSummary: freezed == bookSummary
          ? _self.bookSummary
          : bookSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      bookDes: freezed == bookDes
          ? _self.bookDes
          : bookDes // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPic: freezed == bookPic
          ? _self.bookPic
          : bookPic // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPicPos: freezed == bookPicPos
          ? _self.bookPicPos
          : bookPicPos // ignore: cast_nullable_to_non_nullable
              as String?,
      bookVisitor: freezed == bookVisitor
          ? _self.bookVisitor
          : bookVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      bookIsNew: freezed == bookIsNew
          ? _self.bookIsNew
          : bookIsNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookPriority: freezed == bookPriority
          ? _self.bookPriority
          : bookPriority // ignore: cast_nullable_to_non_nullable
              as String?,
      bookActiveVote: freezed == bookActiveVote
          ? _self.bookActiveVote
          : bookActiveVote // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookActiveHint: freezed == bookActiveHint
          ? _self.bookActiveHint
          : bookActiveHint // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookActive: freezed == bookActive
          ? _self.bookActive
          : bookActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookDate: freezed == bookDate
          ? _self.bookDate
          : bookDate // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPicActive: freezed == bookPicActive
          ? _self.bookPicActive
          : bookPicActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookLastBook: freezed == bookLastBook
          ? _self.bookLastBook
          : bookLastBook // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookPublisherId: freezed == bookPublisherId
          ? _self.bookPublisherId
          : bookPublisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSource: freezed == bookSource
          ? _self.bookSource
          : bookSource // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSourceUrl: freezed == bookSourceUrl
          ? _self.bookSourceUrl
          : bookSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookYoutubeId: freezed == bookYoutubeId
          ? _self.bookYoutubeId
          : bookYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFile: freezed == bookFile
          ? _self.bookFile
          : bookFile // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileEPub: freezed == bookFileEPub
          ? _self.bookFileEPub
          : bookFileEPub // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileKfx: freezed == bookFileKfx
          ? _self.bookFileKfx
          : bookFileKfx // ignore: cast_nullable_to_non_nullable
              as String?,
      bookUserAddHintNsup: freezed == bookUserAddHintNsup
          ? _self.bookUserAddHintNsup
          : bookUserAddHintNsup // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookFileUrl: freezed == bookFileUrl
          ? _self.bookFileUrl
          : bookFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileEpubUrl: freezed == bookFileEpubUrl
          ? _self.bookFileEpubUrl
          : bookFileEpubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileKfxUrl: freezed == bookFileKfxUrl
          ? _self.bookFileKfxUrl
          : bookFileKfxUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPicUrl: freezed == bookPicUrl
          ? _self.bookPicUrl
          : bookPicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as BookDetailCategory?,
    ));
  }

  /// Create a copy of BookDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $BookDetailCategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BookDetailData].
extension BookDetailDataPatterns on BookDetailData {
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
    TResult Function(_BookDetailData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookDetailData() when $default != null:
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
    TResult Function(_BookDetailData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailData():
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
    TResult? Function(_BookDetailData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailData() when $default != null:
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
            @JsonKey(name: 'book_id', fromJson: _stringToInt) int? bookId,
            @JsonKey(name: 'book_cat_id') String? bookCatId,
            @JsonKey(name: 'book_title') String? bookTitle,
            @JsonKey(name: 'book_ts') String? bookTs,
            @JsonKey(name: 'book_summary') String? bookSummary,
            @JsonKey(name: 'book_des') String? bookDes,
            @JsonKey(name: 'book_pic') String? bookPic,
            @JsonKey(name: 'book_pic_pos') String? bookPicPos,
            @JsonKey(name: 'book_visitor', fromJson: _stringToInt)
            int? bookVisitor,
            @JsonKey(name: 'book_is_new', fromJson: _stringToBool)
            bool? bookIsNew,
            @JsonKey(name: 'book_priority') String? bookPriority,
            @JsonKey(name: 'book_active_vote', fromJson: _stringToBool)
            bool? bookActiveVote,
            @JsonKey(name: 'book_active_hint', fromJson: _stringToBool)
            bool? bookActiveHint,
            @JsonKey(name: 'book_active', fromJson: _stringToBool)
            bool? bookActive,
            @JsonKey(name: 'book_date') String? bookDate,
            @JsonKey(name: 'book_pic_active', fromJson: _stringToBool)
            bool? bookPicActive,
            @JsonKey(name: 'book_last_book', fromJson: _stringToBool)
            bool? bookLastBook,
            @JsonKey(name: 'book_publisher_id') String? bookPublisherId,
            @JsonKey(name: 'book_source') String? bookSource,
            @JsonKey(name: 'book_source_url') String? bookSourceUrl,
            @JsonKey(name: 'book_youtube_id') String? bookYoutubeId,
            @JsonKey(name: 'book_file') String? bookFile,
            @JsonKey(name: 'book_file_ePub') String? bookFileEPub,
            @JsonKey(name: 'book_file_kfx') String? bookFileKfx,
            @JsonKey(name: 'book_user_add_hint_nsup', fromJson: _stringToBool)
            bool? bookUserAddHintNsup,
            @JsonKey(name: 'book_file_url') String? bookFileUrl,
            @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
            @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
            @JsonKey(name: 'book_pic_url') String? bookPicUrl,
            BookDetailCategory? category)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookDetailData() when $default != null:
        return $default(
            _that.bookId,
            _that.bookCatId,
            _that.bookTitle,
            _that.bookTs,
            _that.bookSummary,
            _that.bookDes,
            _that.bookPic,
            _that.bookPicPos,
            _that.bookVisitor,
            _that.bookIsNew,
            _that.bookPriority,
            _that.bookActiveVote,
            _that.bookActiveHint,
            _that.bookActive,
            _that.bookDate,
            _that.bookPicActive,
            _that.bookLastBook,
            _that.bookPublisherId,
            _that.bookSource,
            _that.bookSourceUrl,
            _that.bookYoutubeId,
            _that.bookFile,
            _that.bookFileEPub,
            _that.bookFileKfx,
            _that.bookUserAddHintNsup,
            _that.bookFileUrl,
            _that.bookFileEpubUrl,
            _that.bookFileKfxUrl,
            _that.bookPicUrl,
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
            @JsonKey(name: 'book_id', fromJson: _stringToInt) int? bookId,
            @JsonKey(name: 'book_cat_id') String? bookCatId,
            @JsonKey(name: 'book_title') String? bookTitle,
            @JsonKey(name: 'book_ts') String? bookTs,
            @JsonKey(name: 'book_summary') String? bookSummary,
            @JsonKey(name: 'book_des') String? bookDes,
            @JsonKey(name: 'book_pic') String? bookPic,
            @JsonKey(name: 'book_pic_pos') String? bookPicPos,
            @JsonKey(name: 'book_visitor', fromJson: _stringToInt)
            int? bookVisitor,
            @JsonKey(name: 'book_is_new', fromJson: _stringToBool)
            bool? bookIsNew,
            @JsonKey(name: 'book_priority') String? bookPriority,
            @JsonKey(name: 'book_active_vote', fromJson: _stringToBool)
            bool? bookActiveVote,
            @JsonKey(name: 'book_active_hint', fromJson: _stringToBool)
            bool? bookActiveHint,
            @JsonKey(name: 'book_active', fromJson: _stringToBool)
            bool? bookActive,
            @JsonKey(name: 'book_date') String? bookDate,
            @JsonKey(name: 'book_pic_active', fromJson: _stringToBool)
            bool? bookPicActive,
            @JsonKey(name: 'book_last_book', fromJson: _stringToBool)
            bool? bookLastBook,
            @JsonKey(name: 'book_publisher_id') String? bookPublisherId,
            @JsonKey(name: 'book_source') String? bookSource,
            @JsonKey(name: 'book_source_url') String? bookSourceUrl,
            @JsonKey(name: 'book_youtube_id') String? bookYoutubeId,
            @JsonKey(name: 'book_file') String? bookFile,
            @JsonKey(name: 'book_file_ePub') String? bookFileEPub,
            @JsonKey(name: 'book_file_kfx') String? bookFileKfx,
            @JsonKey(name: 'book_user_add_hint_nsup', fromJson: _stringToBool)
            bool? bookUserAddHintNsup,
            @JsonKey(name: 'book_file_url') String? bookFileUrl,
            @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
            @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
            @JsonKey(name: 'book_pic_url') String? bookPicUrl,
            BookDetailCategory? category)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailData():
        return $default(
            _that.bookId,
            _that.bookCatId,
            _that.bookTitle,
            _that.bookTs,
            _that.bookSummary,
            _that.bookDes,
            _that.bookPic,
            _that.bookPicPos,
            _that.bookVisitor,
            _that.bookIsNew,
            _that.bookPriority,
            _that.bookActiveVote,
            _that.bookActiveHint,
            _that.bookActive,
            _that.bookDate,
            _that.bookPicActive,
            _that.bookLastBook,
            _that.bookPublisherId,
            _that.bookSource,
            _that.bookSourceUrl,
            _that.bookYoutubeId,
            _that.bookFile,
            _that.bookFileEPub,
            _that.bookFileKfx,
            _that.bookUserAddHintNsup,
            _that.bookFileUrl,
            _that.bookFileEpubUrl,
            _that.bookFileKfxUrl,
            _that.bookPicUrl,
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
            @JsonKey(name: 'book_id', fromJson: _stringToInt) int? bookId,
            @JsonKey(name: 'book_cat_id') String? bookCatId,
            @JsonKey(name: 'book_title') String? bookTitle,
            @JsonKey(name: 'book_ts') String? bookTs,
            @JsonKey(name: 'book_summary') String? bookSummary,
            @JsonKey(name: 'book_des') String? bookDes,
            @JsonKey(name: 'book_pic') String? bookPic,
            @JsonKey(name: 'book_pic_pos') String? bookPicPos,
            @JsonKey(name: 'book_visitor', fromJson: _stringToInt)
            int? bookVisitor,
            @JsonKey(name: 'book_is_new', fromJson: _stringToBool)
            bool? bookIsNew,
            @JsonKey(name: 'book_priority') String? bookPriority,
            @JsonKey(name: 'book_active_vote', fromJson: _stringToBool)
            bool? bookActiveVote,
            @JsonKey(name: 'book_active_hint', fromJson: _stringToBool)
            bool? bookActiveHint,
            @JsonKey(name: 'book_active', fromJson: _stringToBool)
            bool? bookActive,
            @JsonKey(name: 'book_date') String? bookDate,
            @JsonKey(name: 'book_pic_active', fromJson: _stringToBool)
            bool? bookPicActive,
            @JsonKey(name: 'book_last_book', fromJson: _stringToBool)
            bool? bookLastBook,
            @JsonKey(name: 'book_publisher_id') String? bookPublisherId,
            @JsonKey(name: 'book_source') String? bookSource,
            @JsonKey(name: 'book_source_url') String? bookSourceUrl,
            @JsonKey(name: 'book_youtube_id') String? bookYoutubeId,
            @JsonKey(name: 'book_file') String? bookFile,
            @JsonKey(name: 'book_file_ePub') String? bookFileEPub,
            @JsonKey(name: 'book_file_kfx') String? bookFileKfx,
            @JsonKey(name: 'book_user_add_hint_nsup', fromJson: _stringToBool)
            bool? bookUserAddHintNsup,
            @JsonKey(name: 'book_file_url') String? bookFileUrl,
            @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
            @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
            @JsonKey(name: 'book_pic_url') String? bookPicUrl,
            BookDetailCategory? category)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailData() when $default != null:
        return $default(
            _that.bookId,
            _that.bookCatId,
            _that.bookTitle,
            _that.bookTs,
            _that.bookSummary,
            _that.bookDes,
            _that.bookPic,
            _that.bookPicPos,
            _that.bookVisitor,
            _that.bookIsNew,
            _that.bookPriority,
            _that.bookActiveVote,
            _that.bookActiveHint,
            _that.bookActive,
            _that.bookDate,
            _that.bookPicActive,
            _that.bookLastBook,
            _that.bookPublisherId,
            _that.bookSource,
            _that.bookSourceUrl,
            _that.bookYoutubeId,
            _that.bookFile,
            _that.bookFileEPub,
            _that.bookFileKfx,
            _that.bookUserAddHintNsup,
            _that.bookFileUrl,
            _that.bookFileEpubUrl,
            _that.bookFileKfxUrl,
            _that.bookPicUrl,
            _that.category);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookDetailData implements BookDetailData {
  const _BookDetailData(
      {@JsonKey(name: 'book_id', fromJson: _stringToInt) this.bookId,
      @JsonKey(name: 'book_cat_id') this.bookCatId,
      @JsonKey(name: 'book_title') this.bookTitle,
      @JsonKey(name: 'book_ts') this.bookTs,
      @JsonKey(name: 'book_summary') this.bookSummary,
      @JsonKey(name: 'book_des') this.bookDes,
      @JsonKey(name: 'book_pic') this.bookPic,
      @JsonKey(name: 'book_pic_pos') this.bookPicPos,
      @JsonKey(name: 'book_visitor', fromJson: _stringToInt) this.bookVisitor,
      @JsonKey(name: 'book_is_new', fromJson: _stringToBool) this.bookIsNew,
      @JsonKey(name: 'book_priority') this.bookPriority,
      @JsonKey(name: 'book_active_vote', fromJson: _stringToBool)
      this.bookActiveVote,
      @JsonKey(name: 'book_active_hint', fromJson: _stringToBool)
      this.bookActiveHint,
      @JsonKey(name: 'book_active', fromJson: _stringToBool) this.bookActive,
      @JsonKey(name: 'book_date') this.bookDate,
      @JsonKey(name: 'book_pic_active', fromJson: _stringToBool)
      this.bookPicActive,
      @JsonKey(name: 'book_last_book', fromJson: _stringToBool)
      this.bookLastBook,
      @JsonKey(name: 'book_publisher_id') this.bookPublisherId,
      @JsonKey(name: 'book_source') this.bookSource,
      @JsonKey(name: 'book_source_url') this.bookSourceUrl,
      @JsonKey(name: 'book_youtube_id') this.bookYoutubeId,
      @JsonKey(name: 'book_file') this.bookFile,
      @JsonKey(name: 'book_file_ePub') this.bookFileEPub,
      @JsonKey(name: 'book_file_kfx') this.bookFileKfx,
      @JsonKey(name: 'book_user_add_hint_nsup', fromJson: _stringToBool)
      this.bookUserAddHintNsup,
      @JsonKey(name: 'book_file_url') this.bookFileUrl,
      @JsonKey(name: 'book_file_epub_url') this.bookFileEpubUrl,
      @JsonKey(name: 'book_file_kfx_url') this.bookFileKfxUrl,
      @JsonKey(name: 'book_pic_url') this.bookPicUrl,
      this.category});
  factory _BookDetailData.fromJson(Map<String, dynamic> json) =>
      _$BookDetailDataFromJson(json);

  @override
  @JsonKey(name: 'book_id', fromJson: _stringToInt)
  final int? bookId;
  @override
  @JsonKey(name: 'book_cat_id')
  final String? bookCatId;
  @override
  @JsonKey(name: 'book_title')
  final String? bookTitle;
  @override
  @JsonKey(name: 'book_ts')
  final String? bookTs;
  @override
  @JsonKey(name: 'book_summary')
  final String? bookSummary;
  @override
  @JsonKey(name: 'book_des')
  final String? bookDes;
  @override
  @JsonKey(name: 'book_pic')
  final String? bookPic;
  @override
  @JsonKey(name: 'book_pic_pos')
  final String? bookPicPos;
  @override
  @JsonKey(name: 'book_visitor', fromJson: _stringToInt)
  final int? bookVisitor;
  @override
  @JsonKey(name: 'book_is_new', fromJson: _stringToBool)
  final bool? bookIsNew;
  @override
  @JsonKey(name: 'book_priority')
  final String? bookPriority;
  @override
  @JsonKey(name: 'book_active_vote', fromJson: _stringToBool)
  final bool? bookActiveVote;
  @override
  @JsonKey(name: 'book_active_hint', fromJson: _stringToBool)
  final bool? bookActiveHint;
  @override
  @JsonKey(name: 'book_active', fromJson: _stringToBool)
  final bool? bookActive;
  @override
  @JsonKey(name: 'book_date')
  final String? bookDate;
  @override
  @JsonKey(name: 'book_pic_active', fromJson: _stringToBool)
  final bool? bookPicActive;
  @override
  @JsonKey(name: 'book_last_book', fromJson: _stringToBool)
  final bool? bookLastBook;
  @override
  @JsonKey(name: 'book_publisher_id')
  final String? bookPublisherId;
  @override
  @JsonKey(name: 'book_source')
  final String? bookSource;
  @override
  @JsonKey(name: 'book_source_url')
  final String? bookSourceUrl;
  @override
  @JsonKey(name: 'book_youtube_id')
  final String? bookYoutubeId;
  @override
  @JsonKey(name: 'book_file')
  final String? bookFile;
  @override
  @JsonKey(name: 'book_file_ePub')
  final String? bookFileEPub;
  @override
  @JsonKey(name: 'book_file_kfx')
  final String? bookFileKfx;
  @override
  @JsonKey(name: 'book_user_add_hint_nsup', fromJson: _stringToBool)
  final bool? bookUserAddHintNsup;
  @override
  @JsonKey(name: 'book_file_url')
  final String? bookFileUrl;
  @override
  @JsonKey(name: 'book_file_epub_url')
  final String? bookFileEpubUrl;
  @override
  @JsonKey(name: 'book_file_kfx_url')
  final String? bookFileKfxUrl;
  @override
  @JsonKey(name: 'book_pic_url')
  final String? bookPicUrl;
  @override
  final BookDetailCategory? category;

  /// Create a copy of BookDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookDetailDataCopyWith<_BookDetailData> get copyWith =>
      __$BookDetailDataCopyWithImpl<_BookDetailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookDetailDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookDetailData &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.bookCatId, bookCatId) ||
                other.bookCatId == bookCatId) &&
            (identical(other.bookTitle, bookTitle) ||
                other.bookTitle == bookTitle) &&
            (identical(other.bookTs, bookTs) || other.bookTs == bookTs) &&
            (identical(other.bookSummary, bookSummary) ||
                other.bookSummary == bookSummary) &&
            (identical(other.bookDes, bookDes) || other.bookDes == bookDes) &&
            (identical(other.bookPic, bookPic) || other.bookPic == bookPic) &&
            (identical(other.bookPicPos, bookPicPos) ||
                other.bookPicPos == bookPicPos) &&
            (identical(other.bookVisitor, bookVisitor) ||
                other.bookVisitor == bookVisitor) &&
            (identical(other.bookIsNew, bookIsNew) ||
                other.bookIsNew == bookIsNew) &&
            (identical(other.bookPriority, bookPriority) ||
                other.bookPriority == bookPriority) &&
            (identical(other.bookActiveVote, bookActiveVote) ||
                other.bookActiveVote == bookActiveVote) &&
            (identical(other.bookActiveHint, bookActiveHint) ||
                other.bookActiveHint == bookActiveHint) &&
            (identical(other.bookActive, bookActive) ||
                other.bookActive == bookActive) &&
            (identical(other.bookDate, bookDate) ||
                other.bookDate == bookDate) &&
            (identical(other.bookPicActive, bookPicActive) ||
                other.bookPicActive == bookPicActive) &&
            (identical(other.bookLastBook, bookLastBook) ||
                other.bookLastBook == bookLastBook) &&
            (identical(other.bookPublisherId, bookPublisherId) ||
                other.bookPublisherId == bookPublisherId) &&
            (identical(other.bookSource, bookSource) ||
                other.bookSource == bookSource) &&
            (identical(other.bookSourceUrl, bookSourceUrl) ||
                other.bookSourceUrl == bookSourceUrl) &&
            (identical(other.bookYoutubeId, bookYoutubeId) ||
                other.bookYoutubeId == bookYoutubeId) &&
            (identical(other.bookFile, bookFile) ||
                other.bookFile == bookFile) &&
            (identical(other.bookFileEPub, bookFileEPub) ||
                other.bookFileEPub == bookFileEPub) &&
            (identical(other.bookFileKfx, bookFileKfx) ||
                other.bookFileKfx == bookFileKfx) &&
            (identical(other.bookUserAddHintNsup, bookUserAddHintNsup) ||
                other.bookUserAddHintNsup == bookUserAddHintNsup) &&
            (identical(other.bookFileUrl, bookFileUrl) ||
                other.bookFileUrl == bookFileUrl) &&
            (identical(other.bookFileEpubUrl, bookFileEpubUrl) ||
                other.bookFileEpubUrl == bookFileEpubUrl) &&
            (identical(other.bookFileKfxUrl, bookFileKfxUrl) ||
                other.bookFileKfxUrl == bookFileKfxUrl) &&
            (identical(other.bookPicUrl, bookPicUrl) ||
                other.bookPicUrl == bookPicUrl) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        bookId,
        bookCatId,
        bookTitle,
        bookTs,
        bookSummary,
        bookDes,
        bookPic,
        bookPicPos,
        bookVisitor,
        bookIsNew,
        bookPriority,
        bookActiveVote,
        bookActiveHint,
        bookActive,
        bookDate,
        bookPicActive,
        bookLastBook,
        bookPublisherId,
        bookSource,
        bookSourceUrl,
        bookYoutubeId,
        bookFile,
        bookFileEPub,
        bookFileKfx,
        bookUserAddHintNsup,
        bookFileUrl,
        bookFileEpubUrl,
        bookFileKfxUrl,
        bookPicUrl,
        category
      ]);

  @override
  String toString() {
    return 'BookDetailData(bookId: $bookId, bookCatId: $bookCatId, bookTitle: $bookTitle, bookTs: $bookTs, bookSummary: $bookSummary, bookDes: $bookDes, bookPic: $bookPic, bookPicPos: $bookPicPos, bookVisitor: $bookVisitor, bookIsNew: $bookIsNew, bookPriority: $bookPriority, bookActiveVote: $bookActiveVote, bookActiveHint: $bookActiveHint, bookActive: $bookActive, bookDate: $bookDate, bookPicActive: $bookPicActive, bookLastBook: $bookLastBook, bookPublisherId: $bookPublisherId, bookSource: $bookSource, bookSourceUrl: $bookSourceUrl, bookYoutubeId: $bookYoutubeId, bookFile: $bookFile, bookFileEPub: $bookFileEPub, bookFileKfx: $bookFileKfx, bookUserAddHintNsup: $bookUserAddHintNsup, bookFileUrl: $bookFileUrl, bookFileEpubUrl: $bookFileEpubUrl, bookFileKfxUrl: $bookFileKfxUrl, bookPicUrl: $bookPicUrl, category: $category)';
  }
}

/// @nodoc
abstract mixin class _$BookDetailDataCopyWith<$Res>
    implements $BookDetailDataCopyWith<$Res> {
  factory _$BookDetailDataCopyWith(
          _BookDetailData value, $Res Function(_BookDetailData) _then) =
      __$BookDetailDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'book_id', fromJson: _stringToInt) int? bookId,
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
      @JsonKey(name: 'book_active_vote', fromJson: _stringToBool)
      bool? bookActiveVote,
      @JsonKey(name: 'book_active_hint', fromJson: _stringToBool)
      bool? bookActiveHint,
      @JsonKey(name: 'book_active', fromJson: _stringToBool) bool? bookActive,
      @JsonKey(name: 'book_date') String? bookDate,
      @JsonKey(name: 'book_pic_active', fromJson: _stringToBool)
      bool? bookPicActive,
      @JsonKey(name: 'book_last_book', fromJson: _stringToBool)
      bool? bookLastBook,
      @JsonKey(name: 'book_publisher_id') String? bookPublisherId,
      @JsonKey(name: 'book_source') String? bookSource,
      @JsonKey(name: 'book_source_url') String? bookSourceUrl,
      @JsonKey(name: 'book_youtube_id') String? bookYoutubeId,
      @JsonKey(name: 'book_file') String? bookFile,
      @JsonKey(name: 'book_file_ePub') String? bookFileEPub,
      @JsonKey(name: 'book_file_kfx') String? bookFileKfx,
      @JsonKey(name: 'book_user_add_hint_nsup', fromJson: _stringToBool)
      bool? bookUserAddHintNsup,
      @JsonKey(name: 'book_file_url') String? bookFileUrl,
      @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
      @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
      @JsonKey(name: 'book_pic_url') String? bookPicUrl,
      BookDetailCategory? category});

  @override
  $BookDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$BookDetailDataCopyWithImpl<$Res>
    implements _$BookDetailDataCopyWith<$Res> {
  __$BookDetailDataCopyWithImpl(this._self, this._then);

  final _BookDetailData _self;
  final $Res Function(_BookDetailData) _then;

  /// Create a copy of BookDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookId = freezed,
    Object? bookCatId = freezed,
    Object? bookTitle = freezed,
    Object? bookTs = freezed,
    Object? bookSummary = freezed,
    Object? bookDes = freezed,
    Object? bookPic = freezed,
    Object? bookPicPos = freezed,
    Object? bookVisitor = freezed,
    Object? bookIsNew = freezed,
    Object? bookPriority = freezed,
    Object? bookActiveVote = freezed,
    Object? bookActiveHint = freezed,
    Object? bookActive = freezed,
    Object? bookDate = freezed,
    Object? bookPicActive = freezed,
    Object? bookLastBook = freezed,
    Object? bookPublisherId = freezed,
    Object? bookSource = freezed,
    Object? bookSourceUrl = freezed,
    Object? bookYoutubeId = freezed,
    Object? bookFile = freezed,
    Object? bookFileEPub = freezed,
    Object? bookFileKfx = freezed,
    Object? bookUserAddHintNsup = freezed,
    Object? bookFileUrl = freezed,
    Object? bookFileEpubUrl = freezed,
    Object? bookFileKfxUrl = freezed,
    Object? bookPicUrl = freezed,
    Object? category = freezed,
  }) {
    return _then(_BookDetailData(
      bookId: freezed == bookId
          ? _self.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int?,
      bookCatId: freezed == bookCatId
          ? _self.bookCatId
          : bookCatId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookTitle: freezed == bookTitle
          ? _self.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      bookTs: freezed == bookTs
          ? _self.bookTs
          : bookTs // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSummary: freezed == bookSummary
          ? _self.bookSummary
          : bookSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      bookDes: freezed == bookDes
          ? _self.bookDes
          : bookDes // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPic: freezed == bookPic
          ? _self.bookPic
          : bookPic // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPicPos: freezed == bookPicPos
          ? _self.bookPicPos
          : bookPicPos // ignore: cast_nullable_to_non_nullable
              as String?,
      bookVisitor: freezed == bookVisitor
          ? _self.bookVisitor
          : bookVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      bookIsNew: freezed == bookIsNew
          ? _self.bookIsNew
          : bookIsNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookPriority: freezed == bookPriority
          ? _self.bookPriority
          : bookPriority // ignore: cast_nullable_to_non_nullable
              as String?,
      bookActiveVote: freezed == bookActiveVote
          ? _self.bookActiveVote
          : bookActiveVote // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookActiveHint: freezed == bookActiveHint
          ? _self.bookActiveHint
          : bookActiveHint // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookActive: freezed == bookActive
          ? _self.bookActive
          : bookActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookDate: freezed == bookDate
          ? _self.bookDate
          : bookDate // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPicActive: freezed == bookPicActive
          ? _self.bookPicActive
          : bookPicActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookLastBook: freezed == bookLastBook
          ? _self.bookLastBook
          : bookLastBook // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookPublisherId: freezed == bookPublisherId
          ? _self.bookPublisherId
          : bookPublisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSource: freezed == bookSource
          ? _self.bookSource
          : bookSource // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSourceUrl: freezed == bookSourceUrl
          ? _self.bookSourceUrl
          : bookSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookYoutubeId: freezed == bookYoutubeId
          ? _self.bookYoutubeId
          : bookYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFile: freezed == bookFile
          ? _self.bookFile
          : bookFile // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileEPub: freezed == bookFileEPub
          ? _self.bookFileEPub
          : bookFileEPub // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileKfx: freezed == bookFileKfx
          ? _self.bookFileKfx
          : bookFileKfx // ignore: cast_nullable_to_non_nullable
              as String?,
      bookUserAddHintNsup: freezed == bookUserAddHintNsup
          ? _self.bookUserAddHintNsup
          : bookUserAddHintNsup // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookFileUrl: freezed == bookFileUrl
          ? _self.bookFileUrl
          : bookFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileEpubUrl: freezed == bookFileEpubUrl
          ? _self.bookFileEpubUrl
          : bookFileEpubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileKfxUrl: freezed == bookFileKfxUrl
          ? _self.bookFileKfxUrl
          : bookFileKfxUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPicUrl: freezed == bookPicUrl
          ? _self.bookPicUrl
          : bookPicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as BookDetailCategory?,
    ));
  }

  /// Create a copy of BookDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $BookDetailCategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// @nodoc
mixin _$BookDetailCategory {
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

  /// Create a copy of BookDetailCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookDetailCategoryCopyWith<BookDetailCategory> get copyWith =>
      _$BookDetailCategoryCopyWithImpl<BookDetailCategory>(
          this as BookDetailCategory, _$identity);

  /// Serializes this BookDetailCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookDetailCategory &&
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
    return 'BookDetailCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
  }
}

/// @nodoc
abstract mixin class $BookDetailCategoryCopyWith<$Res> {
  factory $BookDetailCategoryCopyWith(
          BookDetailCategory value, $Res Function(BookDetailCategory) _then) =
      _$BookDetailCategoryCopyWithImpl;
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
class _$BookDetailCategoryCopyWithImpl<$Res>
    implements $BookDetailCategoryCopyWith<$Res> {
  _$BookDetailCategoryCopyWithImpl(this._self, this._then);

  final BookDetailCategory _self;
  final $Res Function(BookDetailCategory) _then;

  /// Create a copy of BookDetailCategory
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

/// Adds pattern-matching-related methods to [BookDetailCategory].
extension BookDetailCategoryPatterns on BookDetailCategory {
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
    TResult Function(_BookDetailCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookDetailCategory() when $default != null:
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
    TResult Function(_BookDetailCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailCategory():
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
    TResult? Function(_BookDetailCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookDetailCategory() when $default != null:
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
      case _BookDetailCategory() when $default != null:
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
      case _BookDetailCategory():
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
      case _BookDetailCategory() when $default != null:
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
class _BookDetailCategory implements BookDetailCategory {
  const _BookDetailCategory(
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
  factory _BookDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$BookDetailCategoryFromJson(json);

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

  /// Create a copy of BookDetailCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookDetailCategoryCopyWith<_BookDetailCategory> get copyWith =>
      __$BookDetailCategoryCopyWithImpl<_BookDetailCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookDetailCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookDetailCategory &&
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
    return 'BookDetailCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
  }
}

/// @nodoc
abstract mixin class _$BookDetailCategoryCopyWith<$Res>
    implements $BookDetailCategoryCopyWith<$Res> {
  factory _$BookDetailCategoryCopyWith(
          _BookDetailCategory value, $Res Function(_BookDetailCategory) _then) =
      __$BookDetailCategoryCopyWithImpl;
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
class __$BookDetailCategoryCopyWithImpl<$Res>
    implements _$BookDetailCategoryCopyWith<$Res> {
  __$BookDetailCategoryCopyWithImpl(this._self, this._then);

  final _BookDetailCategory _self;
  final $Res Function(_BookDetailCategory) _then;

  /// Create a copy of BookDetailCategory
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
    return _then(_BookDetailCategory(
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

/// @nodoc
mixin _$CategoryBooksResponse {
  bool? get success;
  CategoryBooksData? get data;
  String? get message;

  /// Create a copy of CategoryBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryBooksResponseCopyWith<CategoryBooksResponse> get copyWith =>
      _$CategoryBooksResponseCopyWithImpl<CategoryBooksResponse>(
          this as CategoryBooksResponse, _$identity);

  /// Serializes this CategoryBooksResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryBooksResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'CategoryBooksResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $CategoryBooksResponseCopyWith<$Res> {
  factory $CategoryBooksResponseCopyWith(CategoryBooksResponse value,
          $Res Function(CategoryBooksResponse) _then) =
      _$CategoryBooksResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, CategoryBooksData? data, String? message});

  $CategoryBooksDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CategoryBooksResponseCopyWithImpl<$Res>
    implements $CategoryBooksResponseCopyWith<$Res> {
  _$CategoryBooksResponseCopyWithImpl(this._self, this._then);

  final CategoryBooksResponse _self;
  final $Res Function(CategoryBooksResponse) _then;

  /// Create a copy of CategoryBooksResponse
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
              as CategoryBooksData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CategoryBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryBooksDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $CategoryBooksDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CategoryBooksResponse].
extension CategoryBooksResponsePatterns on CategoryBooksResponse {
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
    TResult Function(_CategoryBooksResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksResponse() when $default != null:
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
    TResult Function(_CategoryBooksResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksResponse():
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
    TResult? Function(_CategoryBooksResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksResponse() when $default != null:
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
    TResult Function(bool? success, CategoryBooksData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksResponse() when $default != null:
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
    TResult Function(bool? success, CategoryBooksData? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksResponse():
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
    TResult? Function(bool? success, CategoryBooksData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryBooksResponse implements CategoryBooksResponse {
  const _CategoryBooksResponse({this.success, this.data, this.message});
  factory _CategoryBooksResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryBooksResponseFromJson(json);

  @override
  final bool? success;
  @override
  final CategoryBooksData? data;
  @override
  final String? message;

  /// Create a copy of CategoryBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryBooksResponseCopyWith<_CategoryBooksResponse> get copyWith =>
      __$CategoryBooksResponseCopyWithImpl<_CategoryBooksResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryBooksResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryBooksResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'CategoryBooksResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$CategoryBooksResponseCopyWith<$Res>
    implements $CategoryBooksResponseCopyWith<$Res> {
  factory _$CategoryBooksResponseCopyWith(_CategoryBooksResponse value,
          $Res Function(_CategoryBooksResponse) _then) =
      __$CategoryBooksResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, CategoryBooksData? data, String? message});

  @override
  $CategoryBooksDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$CategoryBooksResponseCopyWithImpl<$Res>
    implements _$CategoryBooksResponseCopyWith<$Res> {
  __$CategoryBooksResponseCopyWithImpl(this._self, this._then);

  final _CategoryBooksResponse _self;
  final $Res Function(_CategoryBooksResponse) _then;

  /// Create a copy of CategoryBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_CategoryBooksResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryBooksData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CategoryBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryBooksDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $CategoryBooksDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$CategoryBooksData {
  CategoryInfo? get category;
  List<CategoryBookItem>? get content;
  CategoryBooksPagination? get pagination;

  /// Create a copy of CategoryBooksData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryBooksDataCopyWith<CategoryBooksData> get copyWith =>
      _$CategoryBooksDataCopyWithImpl<CategoryBooksData>(
          this as CategoryBooksData, _$identity);

  /// Serializes this CategoryBooksData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryBooksData &&
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
    return 'CategoryBooksData(category: $category, content: $content, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class $CategoryBooksDataCopyWith<$Res> {
  factory $CategoryBooksDataCopyWith(
          CategoryBooksData value, $Res Function(CategoryBooksData) _then) =
      _$CategoryBooksDataCopyWithImpl;
  @useResult
  $Res call(
      {CategoryInfo? category,
      List<CategoryBookItem>? content,
      CategoryBooksPagination? pagination});

  $CategoryInfoCopyWith<$Res>? get category;
  $CategoryBooksPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$CategoryBooksDataCopyWithImpl<$Res>
    implements $CategoryBooksDataCopyWith<$Res> {
  _$CategoryBooksDataCopyWithImpl(this._self, this._then);

  final CategoryBooksData _self;
  final $Res Function(CategoryBooksData) _then;

  /// Create a copy of CategoryBooksData
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
              as List<CategoryBookItem>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as CategoryBooksPagination?,
    ));
  }

  /// Create a copy of CategoryBooksData
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

  /// Create a copy of CategoryBooksData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryBooksPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $CategoryBooksPaginationCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CategoryBooksData].
extension CategoryBooksDataPatterns on CategoryBooksData {
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
    TResult Function(_CategoryBooksData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksData() when $default != null:
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
    TResult Function(_CategoryBooksData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksData():
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
    TResult? Function(_CategoryBooksData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksData() when $default != null:
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
    TResult Function(CategoryInfo? category, List<CategoryBookItem>? content,
            CategoryBooksPagination? pagination)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksData() when $default != null:
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
    TResult Function(CategoryInfo? category, List<CategoryBookItem>? content,
            CategoryBooksPagination? pagination)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksData():
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
    TResult? Function(CategoryInfo? category, List<CategoryBookItem>? content,
            CategoryBooksPagination? pagination)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksData() when $default != null:
        return $default(_that.category, _that.content, _that.pagination);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryBooksData implements CategoryBooksData {
  const _CategoryBooksData(
      {this.category, final List<CategoryBookItem>? content, this.pagination})
      : _content = content;
  factory _CategoryBooksData.fromJson(Map<String, dynamic> json) =>
      _$CategoryBooksDataFromJson(json);

  @override
  final CategoryInfo? category;
  final List<CategoryBookItem>? _content;
  @override
  List<CategoryBookItem>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CategoryBooksPagination? pagination;

  /// Create a copy of CategoryBooksData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryBooksDataCopyWith<_CategoryBooksData> get copyWith =>
      __$CategoryBooksDataCopyWithImpl<_CategoryBooksData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryBooksDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryBooksData &&
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
    return 'CategoryBooksData(category: $category, content: $content, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class _$CategoryBooksDataCopyWith<$Res>
    implements $CategoryBooksDataCopyWith<$Res> {
  factory _$CategoryBooksDataCopyWith(
          _CategoryBooksData value, $Res Function(_CategoryBooksData) _then) =
      __$CategoryBooksDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CategoryInfo? category,
      List<CategoryBookItem>? content,
      CategoryBooksPagination? pagination});

  @override
  $CategoryInfoCopyWith<$Res>? get category;
  @override
  $CategoryBooksPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$CategoryBooksDataCopyWithImpl<$Res>
    implements _$CategoryBooksDataCopyWith<$Res> {
  __$CategoryBooksDataCopyWithImpl(this._self, this._then);

  final _CategoryBooksData _self;
  final $Res Function(_CategoryBooksData) _then;

  /// Create a copy of CategoryBooksData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = freezed,
    Object? content = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_CategoryBooksData(
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryInfo?,
      content: freezed == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<CategoryBookItem>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as CategoryBooksPagination?,
    ));
  }

  /// Create a copy of CategoryBooksData
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

  /// Create a copy of CategoryBooksData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryBooksPaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $CategoryBooksPaginationCopyWith<$Res>(_self.pagination!, (value) {
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
mixin _$CategoryBookItem {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  String? get title;
  String? get summary;
  String? get date;
  String? get visitor_count;
  @JsonKey(fromJson: _stringToBool)
  bool? get is_new;
  String? get priority;
  String? get file;
  String? get format;
  String? get publisher_id;
  @JsonKey(name: 'book_file_url')
  String? get bookFileUrl;
  @JsonKey(name: 'book_file_epub_url')
  String? get bookFileEpubUrl;
  @JsonKey(name: 'book_file_kfx_url')
  String? get bookFileKfxUrl;
  @JsonKey(name: 'book_pic_url')
  String? get bookPicUrl;

  /// Create a copy of CategoryBookItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryBookItemCopyWith<CategoryBookItem> get copyWith =>
      _$CategoryBookItemCopyWithImpl<CategoryBookItem>(
          this as CategoryBookItem, _$identity);

  /// Serializes this CategoryBookItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryBookItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.publisher_id, publisher_id) ||
                other.publisher_id == publisher_id) &&
            (identical(other.bookFileUrl, bookFileUrl) ||
                other.bookFileUrl == bookFileUrl) &&
            (identical(other.bookFileEpubUrl, bookFileEpubUrl) ||
                other.bookFileEpubUrl == bookFileEpubUrl) &&
            (identical(other.bookFileKfxUrl, bookFileKfxUrl) ||
                other.bookFileKfxUrl == bookFileKfxUrl) &&
            (identical(other.bookPicUrl, bookPicUrl) ||
                other.bookPicUrl == bookPicUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      summary,
      date,
      visitor_count,
      is_new,
      priority,
      file,
      format,
      publisher_id,
      bookFileUrl,
      bookFileEpubUrl,
      bookFileKfxUrl,
      bookPicUrl);

  @override
  String toString() {
    return 'CategoryBookItem(id: $id, title: $title, summary: $summary, date: $date, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, file: $file, format: $format, publisher_id: $publisher_id, bookFileUrl: $bookFileUrl, bookFileEpubUrl: $bookFileEpubUrl, bookFileKfxUrl: $bookFileKfxUrl, bookPicUrl: $bookPicUrl)';
  }
}

/// @nodoc
abstract mixin class $CategoryBookItemCopyWith<$Res> {
  factory $CategoryBookItemCopyWith(
          CategoryBookItem value, $Res Function(CategoryBookItem) _then) =
      _$CategoryBookItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
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
      @JsonKey(name: 'book_pic_url') String? bookPicUrl});
}

/// @nodoc
class _$CategoryBookItemCopyWithImpl<$Res>
    implements $CategoryBookItemCopyWith<$Res> {
  _$CategoryBookItemCopyWithImpl(this._self, this._then);

  final CategoryBookItem _self;
  final $Res Function(CategoryBookItem) _then;

  /// Create a copy of CategoryBookItem
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
    Object? file = freezed,
    Object? format = freezed,
    Object? publisher_id = freezed,
    Object? bookFileUrl = freezed,
    Object? bookFileEpubUrl = freezed,
    Object? bookFileKfxUrl = freezed,
    Object? bookPicUrl = freezed,
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
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher_id: freezed == publisher_id
          ? _self.publisher_id
          : publisher_id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileUrl: freezed == bookFileUrl
          ? _self.bookFileUrl
          : bookFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileEpubUrl: freezed == bookFileEpubUrl
          ? _self.bookFileEpubUrl
          : bookFileEpubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileKfxUrl: freezed == bookFileKfxUrl
          ? _self.bookFileKfxUrl
          : bookFileKfxUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPicUrl: freezed == bookPicUrl
          ? _self.bookPicUrl
          : bookPicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CategoryBookItem].
extension CategoryBookItemPatterns on CategoryBookItem {
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
    TResult Function(_CategoryBookItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryBookItem() when $default != null:
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
    TResult Function(_CategoryBookItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBookItem():
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
    TResult? Function(_CategoryBookItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBookItem() when $default != null:
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
            String? file,
            String? format,
            String? publisher_id,
            @JsonKey(name: 'book_file_url') String? bookFileUrl,
            @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
            @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
            @JsonKey(name: 'book_pic_url') String? bookPicUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryBookItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.file,
            _that.format,
            _that.publisher_id,
            _that.bookFileUrl,
            _that.bookFileEpubUrl,
            _that.bookFileKfxUrl,
            _that.bookPicUrl);
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
            String? file,
            String? format,
            String? publisher_id,
            @JsonKey(name: 'book_file_url') String? bookFileUrl,
            @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
            @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
            @JsonKey(name: 'book_pic_url') String? bookPicUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBookItem():
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.file,
            _that.format,
            _that.publisher_id,
            _that.bookFileUrl,
            _that.bookFileEpubUrl,
            _that.bookFileKfxUrl,
            _that.bookPicUrl);
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
            String? file,
            String? format,
            String? publisher_id,
            @JsonKey(name: 'book_file_url') String? bookFileUrl,
            @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
            @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
            @JsonKey(name: 'book_pic_url') String? bookPicUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBookItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.file,
            _that.format,
            _that.publisher_id,
            _that.bookFileUrl,
            _that.bookFileEpubUrl,
            _that.bookFileKfxUrl,
            _that.bookPicUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryBookItem implements CategoryBookItem {
  const _CategoryBookItem(
      {@JsonKey(fromJson: _stringToInt) this.id,
      this.title,
      this.summary,
      this.date,
      this.visitor_count,
      @JsonKey(fromJson: _stringToBool) this.is_new,
      this.priority,
      this.file,
      this.format,
      this.publisher_id,
      @JsonKey(name: 'book_file_url') this.bookFileUrl,
      @JsonKey(name: 'book_file_epub_url') this.bookFileEpubUrl,
      @JsonKey(name: 'book_file_kfx_url') this.bookFileKfxUrl,
      @JsonKey(name: 'book_pic_url') this.bookPicUrl});
  factory _CategoryBookItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryBookItemFromJson(json);

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
  final String? file;
  @override
  final String? format;
  @override
  final String? publisher_id;
  @override
  @JsonKey(name: 'book_file_url')
  final String? bookFileUrl;
  @override
  @JsonKey(name: 'book_file_epub_url')
  final String? bookFileEpubUrl;
  @override
  @JsonKey(name: 'book_file_kfx_url')
  final String? bookFileKfxUrl;
  @override
  @JsonKey(name: 'book_pic_url')
  final String? bookPicUrl;

  /// Create a copy of CategoryBookItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryBookItemCopyWith<_CategoryBookItem> get copyWith =>
      __$CategoryBookItemCopyWithImpl<_CategoryBookItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryBookItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryBookItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.publisher_id, publisher_id) ||
                other.publisher_id == publisher_id) &&
            (identical(other.bookFileUrl, bookFileUrl) ||
                other.bookFileUrl == bookFileUrl) &&
            (identical(other.bookFileEpubUrl, bookFileEpubUrl) ||
                other.bookFileEpubUrl == bookFileEpubUrl) &&
            (identical(other.bookFileKfxUrl, bookFileKfxUrl) ||
                other.bookFileKfxUrl == bookFileKfxUrl) &&
            (identical(other.bookPicUrl, bookPicUrl) ||
                other.bookPicUrl == bookPicUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      summary,
      date,
      visitor_count,
      is_new,
      priority,
      file,
      format,
      publisher_id,
      bookFileUrl,
      bookFileEpubUrl,
      bookFileKfxUrl,
      bookPicUrl);

  @override
  String toString() {
    return 'CategoryBookItem(id: $id, title: $title, summary: $summary, date: $date, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, file: $file, format: $format, publisher_id: $publisher_id, bookFileUrl: $bookFileUrl, bookFileEpubUrl: $bookFileEpubUrl, bookFileKfxUrl: $bookFileKfxUrl, bookPicUrl: $bookPicUrl)';
  }
}

/// @nodoc
abstract mixin class _$CategoryBookItemCopyWith<$Res>
    implements $CategoryBookItemCopyWith<$Res> {
  factory _$CategoryBookItemCopyWith(
          _CategoryBookItem value, $Res Function(_CategoryBookItem) _then) =
      __$CategoryBookItemCopyWithImpl;
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
      String? file,
      String? format,
      String? publisher_id,
      @JsonKey(name: 'book_file_url') String? bookFileUrl,
      @JsonKey(name: 'book_file_epub_url') String? bookFileEpubUrl,
      @JsonKey(name: 'book_file_kfx_url') String? bookFileKfxUrl,
      @JsonKey(name: 'book_pic_url') String? bookPicUrl});
}

/// @nodoc
class __$CategoryBookItemCopyWithImpl<$Res>
    implements _$CategoryBookItemCopyWith<$Res> {
  __$CategoryBookItemCopyWithImpl(this._self, this._then);

  final _CategoryBookItem _self;
  final $Res Function(_CategoryBookItem) _then;

  /// Create a copy of CategoryBookItem
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
    Object? file = freezed,
    Object? format = freezed,
    Object? publisher_id = freezed,
    Object? bookFileUrl = freezed,
    Object? bookFileEpubUrl = freezed,
    Object? bookFileKfxUrl = freezed,
    Object? bookPicUrl = freezed,
  }) {
    return _then(_CategoryBookItem(
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
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher_id: freezed == publisher_id
          ? _self.publisher_id
          : publisher_id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileUrl: freezed == bookFileUrl
          ? _self.bookFileUrl
          : bookFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileEpubUrl: freezed == bookFileEpubUrl
          ? _self.bookFileEpubUrl
          : bookFileEpubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookFileKfxUrl: freezed == bookFileKfxUrl
          ? _self.bookFileKfxUrl
          : bookFileKfxUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookPicUrl: freezed == bookPicUrl
          ? _self.bookPicUrl
          : bookPicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CategoryBooksPagination {
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

  /// Create a copy of CategoryBooksPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryBooksPaginationCopyWith<CategoryBooksPagination> get copyWith =>
      _$CategoryBooksPaginationCopyWithImpl<CategoryBooksPagination>(
          this as CategoryBooksPagination, _$identity);

  /// Serializes this CategoryBooksPagination to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryBooksPagination &&
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
    return 'CategoryBooksPagination(currentPage: $currentPage, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class $CategoryBooksPaginationCopyWith<$Res> {
  factory $CategoryBooksPaginationCopyWith(CategoryBooksPagination value,
          $Res Function(CategoryBooksPagination) _then) =
      _$CategoryBooksPaginationCopyWithImpl;
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
class _$CategoryBooksPaginationCopyWithImpl<$Res>
    implements $CategoryBooksPaginationCopyWith<$Res> {
  _$CategoryBooksPaginationCopyWithImpl(this._self, this._then);

  final CategoryBooksPagination _self;
  final $Res Function(CategoryBooksPagination) _then;

  /// Create a copy of CategoryBooksPagination
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

/// Adds pattern-matching-related methods to [CategoryBooksPagination].
extension CategoryBooksPaginationPatterns on CategoryBooksPagination {
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
    TResult Function(_CategoryBooksPagination value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksPagination() when $default != null:
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
    TResult Function(_CategoryBooksPagination value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksPagination():
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
    TResult? Function(_CategoryBooksPagination value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryBooksPagination() when $default != null:
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
      case _CategoryBooksPagination() when $default != null:
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
      case _CategoryBooksPagination():
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
      case _CategoryBooksPagination() when $default != null:
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
class _CategoryBooksPagination implements CategoryBooksPagination {
  const _CategoryBooksPagination(
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
  factory _CategoryBooksPagination.fromJson(Map<String, dynamic> json) =>
      _$CategoryBooksPaginationFromJson(json);

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

  /// Create a copy of CategoryBooksPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryBooksPaginationCopyWith<_CategoryBooksPagination> get copyWith =>
      __$CategoryBooksPaginationCopyWithImpl<_CategoryBooksPagination>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryBooksPaginationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryBooksPagination &&
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
    return 'CategoryBooksPagination(currentPage: $currentPage, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class _$CategoryBooksPaginationCopyWith<$Res>
    implements $CategoryBooksPaginationCopyWith<$Res> {
  factory _$CategoryBooksPaginationCopyWith(_CategoryBooksPagination value,
          $Res Function(_CategoryBooksPagination) _then) =
      __$CategoryBooksPaginationCopyWithImpl;
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
class __$CategoryBooksPaginationCopyWithImpl<$Res>
    implements _$CategoryBooksPaginationCopyWith<$Res> {
  __$CategoryBooksPaginationCopyWithImpl(this._self, this._then);

  final _CategoryBooksPagination _self;
  final $Res Function(_CategoryBooksPagination) _then;

  /// Create a copy of CategoryBooksPagination
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
    return _then(_CategoryBooksPagination(
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

// dart format on
