// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sound_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SoundResponse {
  bool? get success;
  SoundData? get data;
  String? get message;

  /// Create a copy of SoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SoundResponseCopyWith<SoundResponse> get copyWith =>
      _$SoundResponseCopyWithImpl<SoundResponse>(
          this as SoundResponse, _$identity);

  /// Serializes this SoundResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SoundResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'SoundResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $SoundResponseCopyWith<$Res> {
  factory $SoundResponseCopyWith(
          SoundResponse value, $Res Function(SoundResponse) _then) =
      _$SoundResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, SoundData? data, String? message});

  $SoundDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SoundResponseCopyWithImpl<$Res>
    implements $SoundResponseCopyWith<$Res> {
  _$SoundResponseCopyWithImpl(this._self, this._then);

  final SoundResponse _self;
  final $Res Function(SoundResponse) _then;

  /// Create a copy of SoundResponse
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
              as SoundData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoundDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $SoundDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SoundResponse].
extension SoundResponsePatterns on SoundResponse {
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
    TResult Function(_SoundResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundResponse() when $default != null:
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
    TResult Function(_SoundResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundResponse():
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
    TResult? Function(_SoundResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundResponse() when $default != null:
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
    TResult Function(bool? success, SoundData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundResponse() when $default != null:
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
    TResult Function(bool? success, SoundData? data, String? message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundResponse():
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
    TResult? Function(bool? success, SoundData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SoundResponse implements SoundResponse {
  const _SoundResponse({this.success, this.data, this.message});
  factory _SoundResponse.fromJson(Map<String, dynamic> json) =>
      _$SoundResponseFromJson(json);

  @override
  final bool? success;
  @override
  final SoundData? data;
  @override
  final String? message;

  /// Create a copy of SoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SoundResponseCopyWith<_SoundResponse> get copyWith =>
      __$SoundResponseCopyWithImpl<_SoundResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SoundResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoundResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'SoundResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SoundResponseCopyWith<$Res>
    implements $SoundResponseCopyWith<$Res> {
  factory _$SoundResponseCopyWith(
          _SoundResponse value, $Res Function(_SoundResponse) _then) =
      __$SoundResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, SoundData? data, String? message});

  @override
  $SoundDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$SoundResponseCopyWithImpl<$Res>
    implements _$SoundResponseCopyWith<$Res> {
  __$SoundResponseCopyWithImpl(this._self, this._then);

  final _SoundResponse _self;
  final $Res Function(_SoundResponse) _then;

  /// Create a copy of SoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_SoundResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as SoundData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoundDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $SoundDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$SoundData {
  @JsonKey(fromJson: _dynamicToString)
  String? get type;
  List<SoundCategory>? get categories;
  SoundPaginationData? get pagination;
  List<PageInfo>? get pages;

  /// Create a copy of SoundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SoundDataCopyWith<SoundData> get copyWith =>
      _$SoundDataCopyWithImpl<SoundData>(this as SoundData, _$identity);

  /// Serializes this SoundData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SoundData &&
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
    return 'SoundData(type: $type, categories: $categories, pagination: $pagination, pages: $pages)';
  }
}

/// @nodoc
abstract mixin class $SoundDataCopyWith<$Res> {
  factory $SoundDataCopyWith(SoundData value, $Res Function(SoundData) _then) =
      _$SoundDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dynamicToString) String? type,
      List<SoundCategory>? categories,
      SoundPaginationData? pagination,
      List<PageInfo>? pages});

  $SoundPaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$SoundDataCopyWithImpl<$Res> implements $SoundDataCopyWith<$Res> {
  _$SoundDataCopyWithImpl(this._self, this._then);

  final SoundData _self;
  final $Res Function(SoundData) _then;

  /// Create a copy of SoundData
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
              as List<SoundCategory>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as SoundPaginationData?,
      pages: freezed == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<PageInfo>?,
    ));
  }

  /// Create a copy of SoundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoundPaginationDataCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $SoundPaginationDataCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SoundData].
extension SoundDataPatterns on SoundData {
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
    TResult Function(_SoundData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundData() when $default != null:
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
    TResult Function(_SoundData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundData():
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
    TResult? Function(_SoundData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundData() when $default != null:
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
            @JsonKey(fromJson: _dynamicToString) String? type,
            List<SoundCategory>? categories,
            SoundPaginationData? pagination,
            List<PageInfo>? pages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundData() when $default != null:
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
    TResult Function(
            @JsonKey(fromJson: _dynamicToString) String? type,
            List<SoundCategory>? categories,
            SoundPaginationData? pagination,
            List<PageInfo>? pages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundData():
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
    TResult? Function(
            @JsonKey(fromJson: _dynamicToString) String? type,
            List<SoundCategory>? categories,
            SoundPaginationData? pagination,
            List<PageInfo>? pages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundData() when $default != null:
        return $default(
            _that.type, _that.categories, _that.pagination, _that.pages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SoundData implements SoundData {
  const _SoundData(
      {@JsonKey(fromJson: _dynamicToString) this.type,
      final List<SoundCategory>? categories,
      this.pagination,
      final List<PageInfo>? pages})
      : _categories = categories,
        _pages = pages;
  factory _SoundData.fromJson(Map<String, dynamic> json) =>
      _$SoundDataFromJson(json);

  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? type;
  final List<SoundCategory>? _categories;
  @override
  List<SoundCategory>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SoundPaginationData? pagination;
  final List<PageInfo>? _pages;
  @override
  List<PageInfo>? get pages {
    final value = _pages;
    if (value == null) return null;
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SoundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SoundDataCopyWith<_SoundData> get copyWith =>
      __$SoundDataCopyWithImpl<_SoundData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SoundDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoundData &&
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
    return 'SoundData(type: $type, categories: $categories, pagination: $pagination, pages: $pages)';
  }
}

/// @nodoc
abstract mixin class _$SoundDataCopyWith<$Res>
    implements $SoundDataCopyWith<$Res> {
  factory _$SoundDataCopyWith(
          _SoundData value, $Res Function(_SoundData) _then) =
      __$SoundDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dynamicToString) String? type,
      List<SoundCategory>? categories,
      SoundPaginationData? pagination,
      List<PageInfo>? pages});

  @override
  $SoundPaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$SoundDataCopyWithImpl<$Res> implements _$SoundDataCopyWith<$Res> {
  __$SoundDataCopyWithImpl(this._self, this._then);

  final _SoundData _self;
  final $Res Function(_SoundData) _then;

  /// Create a copy of SoundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? categories = freezed,
    Object? pagination = freezed,
    Object? pages = freezed,
  }) {
    return _then(_SoundData(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SoundCategory>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as SoundPaginationData?,
      pages: freezed == pages
          ? _self._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<PageInfo>?,
    ));
  }

  /// Create a copy of SoundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoundPaginationDataCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $SoundPaginationDataCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// @nodoc
mixin _$SoundCategory {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  @JsonKey(fromJson: _dynamicToString)
  String? get title;
  @JsonKey(fromJson: _dynamicToString)
  String? get note;
  @JsonKey(fromJson: _dynamicToString)
  String? get position;
  @JsonKey(fromJson: _dynamicToString)
  String? get language;
  @JsonKey(fromJson: _dynamicToString)
  String? get date;
  @JsonKey(name: 'menu_id', fromJson: _dynamicToString)
  String? get menu_id;
  @JsonKey(fromJson: _stringToBool)
  bool? get show_in_menu;
  @JsonKey(fromJson: _stringToBool)
  bool? get show_in_main;
  @JsonKey(fromJson: _stringToInt)
  int? get content_count;
  @JsonKey(fromJson: _dynamicToString)
  String? get type;
  List<SoundItem>? get data;

  /// Create a copy of SoundCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SoundCategoryCopyWith<SoundCategory> get copyWith =>
      _$SoundCategoryCopyWithImpl<SoundCategory>(
          this as SoundCategory, _$identity);

  /// Serializes this SoundCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SoundCategory &&
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
    return 'SoundCategory(id: $id, title: $title, note: $note, position: $position, language: $language, date: $date, menu_id: $menu_id, show_in_menu: $show_in_menu, show_in_main: $show_in_main, content_count: $content_count, type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class $SoundCategoryCopyWith<$Res> {
  factory $SoundCategoryCopyWith(
          SoundCategory value, $Res Function(SoundCategory) _then) =
      _$SoundCategoryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      @JsonKey(fromJson: _dynamicToString) String? title,
      @JsonKey(fromJson: _dynamicToString) String? note,
      @JsonKey(fromJson: _dynamicToString) String? position,
      @JsonKey(fromJson: _dynamicToString) String? language,
      @JsonKey(fromJson: _dynamicToString) String? date,
      @JsonKey(name: 'menu_id', fromJson: _dynamicToString) String? menu_id,
      @JsonKey(fromJson: _stringToBool) bool? show_in_menu,
      @JsonKey(fromJson: _stringToBool) bool? show_in_main,
      @JsonKey(fromJson: _stringToInt) int? content_count,
      @JsonKey(fromJson: _dynamicToString) String? type,
      List<SoundItem>? data});
}

/// @nodoc
class _$SoundCategoryCopyWithImpl<$Res>
    implements $SoundCategoryCopyWith<$Res> {
  _$SoundCategoryCopyWithImpl(this._self, this._then);

  final SoundCategory _self;
  final $Res Function(SoundCategory) _then;

  /// Create a copy of SoundCategory
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
              as List<SoundItem>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SoundCategory].
extension SoundCategoryPatterns on SoundCategory {
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
    TResult Function(_SoundCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundCategory() when $default != null:
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
    TResult Function(_SoundCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundCategory():
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
    TResult? Function(_SoundCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundCategory() when $default != null:
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
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? note,
            @JsonKey(fromJson: _dynamicToString) String? position,
            @JsonKey(fromJson: _dynamicToString) String? language,
            @JsonKey(fromJson: _dynamicToString) String? date,
            @JsonKey(name: 'menu_id', fromJson: _dynamicToString)
            String? menu_id,
            @JsonKey(fromJson: _stringToBool) bool? show_in_menu,
            @JsonKey(fromJson: _stringToBool) bool? show_in_main,
            @JsonKey(fromJson: _stringToInt) int? content_count,
            @JsonKey(fromJson: _dynamicToString) String? type,
            List<SoundItem>? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundCategory() when $default != null:
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
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? note,
            @JsonKey(fromJson: _dynamicToString) String? position,
            @JsonKey(fromJson: _dynamicToString) String? language,
            @JsonKey(fromJson: _dynamicToString) String? date,
            @JsonKey(name: 'menu_id', fromJson: _dynamicToString)
            String? menu_id,
            @JsonKey(fromJson: _stringToBool) bool? show_in_menu,
            @JsonKey(fromJson: _stringToBool) bool? show_in_main,
            @JsonKey(fromJson: _stringToInt) int? content_count,
            @JsonKey(fromJson: _dynamicToString) String? type,
            List<SoundItem>? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundCategory():
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
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? note,
            @JsonKey(fromJson: _dynamicToString) String? position,
            @JsonKey(fromJson: _dynamicToString) String? language,
            @JsonKey(fromJson: _dynamicToString) String? date,
            @JsonKey(name: 'menu_id', fromJson: _dynamicToString)
            String? menu_id,
            @JsonKey(fromJson: _stringToBool) bool? show_in_menu,
            @JsonKey(fromJson: _stringToBool) bool? show_in_main,
            @JsonKey(fromJson: _stringToInt) int? content_count,
            @JsonKey(fromJson: _dynamicToString) String? type,
            List<SoundItem>? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundCategory() when $default != null:
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
class _SoundCategory implements SoundCategory {
  const _SoundCategory(
      {@JsonKey(fromJson: _stringToInt) this.id,
      @JsonKey(fromJson: _dynamicToString) this.title,
      @JsonKey(fromJson: _dynamicToString) this.note,
      @JsonKey(fromJson: _dynamicToString) this.position,
      @JsonKey(fromJson: _dynamicToString) this.language,
      @JsonKey(fromJson: _dynamicToString) this.date,
      @JsonKey(name: 'menu_id', fromJson: _dynamicToString) this.menu_id,
      @JsonKey(fromJson: _stringToBool) this.show_in_menu,
      @JsonKey(fromJson: _stringToBool) this.show_in_main,
      @JsonKey(fromJson: _stringToInt) this.content_count,
      @JsonKey(fromJson: _dynamicToString) this.type,
      final List<SoundItem>? data})
      : _data = data;
  factory _SoundCategory.fromJson(Map<String, dynamic> json) =>
      _$SoundCategoryFromJson(json);

  @override
  @JsonKey(fromJson: _stringToInt)
  final int? id;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? title;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? note;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? position;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? language;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? date;
  @override
  @JsonKey(name: 'menu_id', fromJson: _dynamicToString)
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
  @JsonKey(fromJson: _dynamicToString)
  final String? type;
  final List<SoundItem>? _data;
  @override
  List<SoundItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SoundCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SoundCategoryCopyWith<_SoundCategory> get copyWith =>
      __$SoundCategoryCopyWithImpl<_SoundCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SoundCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoundCategory &&
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
    return 'SoundCategory(id: $id, title: $title, note: $note, position: $position, language: $language, date: $date, menu_id: $menu_id, show_in_menu: $show_in_menu, show_in_main: $show_in_main, content_count: $content_count, type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$SoundCategoryCopyWith<$Res>
    implements $SoundCategoryCopyWith<$Res> {
  factory _$SoundCategoryCopyWith(
          _SoundCategory value, $Res Function(_SoundCategory) _then) =
      __$SoundCategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      @JsonKey(fromJson: _dynamicToString) String? title,
      @JsonKey(fromJson: _dynamicToString) String? note,
      @JsonKey(fromJson: _dynamicToString) String? position,
      @JsonKey(fromJson: _dynamicToString) String? language,
      @JsonKey(fromJson: _dynamicToString) String? date,
      @JsonKey(name: 'menu_id', fromJson: _dynamicToString) String? menu_id,
      @JsonKey(fromJson: _stringToBool) bool? show_in_menu,
      @JsonKey(fromJson: _stringToBool) bool? show_in_main,
      @JsonKey(fromJson: _stringToInt) int? content_count,
      @JsonKey(fromJson: _dynamicToString) String? type,
      List<SoundItem>? data});
}

/// @nodoc
class __$SoundCategoryCopyWithImpl<$Res>
    implements _$SoundCategoryCopyWith<$Res> {
  __$SoundCategoryCopyWithImpl(this._self, this._then);

  final _SoundCategory _self;
  final $Res Function(_SoundCategory) _then;

  /// Create a copy of SoundCategory
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
    return _then(_SoundCategory(
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
              as List<SoundItem>?,
    ));
  }
}

/// @nodoc
mixin _$SoundItem {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  @JsonKey(fromJson: _dynamicToString)
  String? get title;
  @JsonKey(fromJson: _dynamicToString)
  String? get summary;
  @JsonKey(fromJson: _dynamicToString)
  String? get date;
  @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
  String? get visitor_count;
  @JsonKey(fromJson: _stringToBool)
  bool? get is_new;
  @JsonKey(fromJson: _dynamicToString)
  String? get priority;
  @JsonKey(fromJson: _dynamicToString)
  String? get file;
  @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
  String? get sound_file_url; // Additional fields for detailed display
  @JsonKey(fromJson: _dynamicToString)
  String? get soundPic;
  @JsonKey(fromJson: _dynamicToString)
  String? get soundSource;
  @JsonKey(fromJson: _dynamicToString)
  String? get soundSourceUrl;
  @JsonKey(fromJson: _dynamicToString)
  String? get soundYoutubeId;
  @JsonKey(fromJson: _dynamicToString)
  String? get publisherId;

  /// Create a copy of SoundItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SoundItemCopyWith<SoundItem> get copyWith =>
      _$SoundItemCopyWithImpl<SoundItem>(this as SoundItem, _$identity);

  /// Serializes this SoundItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SoundItem &&
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
            (identical(other.sound_file_url, sound_file_url) ||
                other.sound_file_url == sound_file_url) &&
            (identical(other.soundPic, soundPic) ||
                other.soundPic == soundPic) &&
            (identical(other.soundSource, soundSource) ||
                other.soundSource == soundSource) &&
            (identical(other.soundSourceUrl, soundSourceUrl) ||
                other.soundSourceUrl == soundSourceUrl) &&
            (identical(other.soundYoutubeId, soundYoutubeId) ||
                other.soundYoutubeId == soundYoutubeId) &&
            (identical(other.publisherId, publisherId) ||
                other.publisherId == publisherId));
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
      sound_file_url,
      soundPic,
      soundSource,
      soundSourceUrl,
      soundYoutubeId,
      publisherId);

  @override
  String toString() {
    return 'SoundItem(id: $id, title: $title, summary: $summary, date: $date, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, file: $file, sound_file_url: $sound_file_url, soundPic: $soundPic, soundSource: $soundSource, soundSourceUrl: $soundSourceUrl, soundYoutubeId: $soundYoutubeId, publisherId: $publisherId)';
  }
}

/// @nodoc
abstract mixin class $SoundItemCopyWith<$Res> {
  factory $SoundItemCopyWith(SoundItem value, $Res Function(SoundItem) _then) =
      _$SoundItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      @JsonKey(fromJson: _dynamicToString) String? title,
      @JsonKey(fromJson: _dynamicToString) String? summary,
      @JsonKey(fromJson: _dynamicToString) String? date,
      @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
      String? visitor_count,
      @JsonKey(fromJson: _stringToBool) bool? is_new,
      @JsonKey(fromJson: _dynamicToString) String? priority,
      @JsonKey(fromJson: _dynamicToString) String? file,
      @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
      String? sound_file_url,
      @JsonKey(fromJson: _dynamicToString) String? soundPic,
      @JsonKey(fromJson: _dynamicToString) String? soundSource,
      @JsonKey(fromJson: _dynamicToString) String? soundSourceUrl,
      @JsonKey(fromJson: _dynamicToString) String? soundYoutubeId,
      @JsonKey(fromJson: _dynamicToString) String? publisherId});
}

/// @nodoc
class _$SoundItemCopyWithImpl<$Res> implements $SoundItemCopyWith<$Res> {
  _$SoundItemCopyWithImpl(this._self, this._then);

  final SoundItem _self;
  final $Res Function(SoundItem) _then;

  /// Create a copy of SoundItem
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
    Object? sound_file_url = freezed,
    Object? soundPic = freezed,
    Object? soundSource = freezed,
    Object? soundSourceUrl = freezed,
    Object? soundYoutubeId = freezed,
    Object? publisherId = freezed,
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
      sound_file_url: freezed == sound_file_url
          ? _self.sound_file_url
          : sound_file_url // ignore: cast_nullable_to_non_nullable
              as String?,
      soundPic: freezed == soundPic
          ? _self.soundPic
          : soundPic // ignore: cast_nullable_to_non_nullable
              as String?,
      soundSource: freezed == soundSource
          ? _self.soundSource
          : soundSource // ignore: cast_nullable_to_non_nullable
              as String?,
      soundSourceUrl: freezed == soundSourceUrl
          ? _self.soundSourceUrl
          : soundSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      soundYoutubeId: freezed == soundYoutubeId
          ? _self.soundYoutubeId
          : soundYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherId: freezed == publisherId
          ? _self.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SoundItem].
extension SoundItemPatterns on SoundItem {
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
    TResult Function(_SoundItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundItem() when $default != null:
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
    TResult Function(_SoundItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundItem():
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
    TResult? Function(_SoundItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundItem() when $default != null:
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
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? summary,
            @JsonKey(fromJson: _dynamicToString) String? date,
            @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
            String? visitor_count,
            @JsonKey(fromJson: _stringToBool) bool? is_new,
            @JsonKey(fromJson: _dynamicToString) String? priority,
            @JsonKey(fromJson: _dynamicToString) String? file,
            @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
            String? sound_file_url,
            @JsonKey(fromJson: _dynamicToString) String? soundPic,
            @JsonKey(fromJson: _dynamicToString) String? soundSource,
            @JsonKey(fromJson: _dynamicToString) String? soundSourceUrl,
            @JsonKey(fromJson: _dynamicToString) String? soundYoutubeId,
            @JsonKey(fromJson: _dynamicToString) String? publisherId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.file,
            _that.sound_file_url,
            _that.soundPic,
            _that.soundSource,
            _that.soundSourceUrl,
            _that.soundYoutubeId,
            _that.publisherId);
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
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? summary,
            @JsonKey(fromJson: _dynamicToString) String? date,
            @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
            String? visitor_count,
            @JsonKey(fromJson: _stringToBool) bool? is_new,
            @JsonKey(fromJson: _dynamicToString) String? priority,
            @JsonKey(fromJson: _dynamicToString) String? file,
            @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
            String? sound_file_url,
            @JsonKey(fromJson: _dynamicToString) String? soundPic,
            @JsonKey(fromJson: _dynamicToString) String? soundSource,
            @JsonKey(fromJson: _dynamicToString) String? soundSourceUrl,
            @JsonKey(fromJson: _dynamicToString) String? soundYoutubeId,
            @JsonKey(fromJson: _dynamicToString) String? publisherId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundItem():
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.file,
            _that.sound_file_url,
            _that.soundPic,
            _that.soundSource,
            _that.soundSourceUrl,
            _that.soundYoutubeId,
            _that.publisherId);
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
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? summary,
            @JsonKey(fromJson: _dynamicToString) String? date,
            @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
            String? visitor_count,
            @JsonKey(fromJson: _stringToBool) bool? is_new,
            @JsonKey(fromJson: _dynamicToString) String? priority,
            @JsonKey(fromJson: _dynamicToString) String? file,
            @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
            String? sound_file_url,
            @JsonKey(fromJson: _dynamicToString) String? soundPic,
            @JsonKey(fromJson: _dynamicToString) String? soundSource,
            @JsonKey(fromJson: _dynamicToString) String? soundSourceUrl,
            @JsonKey(fromJson: _dynamicToString) String? soundYoutubeId,
            @JsonKey(fromJson: _dynamicToString) String? publisherId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.date,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.file,
            _that.sound_file_url,
            _that.soundPic,
            _that.soundSource,
            _that.soundSourceUrl,
            _that.soundYoutubeId,
            _that.publisherId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SoundItem implements SoundItem {
  const _SoundItem(
      {@JsonKey(fromJson: _stringToInt) this.id,
      @JsonKey(fromJson: _dynamicToString) this.title,
      @JsonKey(fromJson: _dynamicToString) this.summary,
      @JsonKey(fromJson: _dynamicToString) this.date,
      @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
      this.visitor_count,
      @JsonKey(fromJson: _stringToBool) this.is_new,
      @JsonKey(fromJson: _dynamicToString) this.priority,
      @JsonKey(fromJson: _dynamicToString) this.file,
      @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
      this.sound_file_url,
      @JsonKey(fromJson: _dynamicToString) this.soundPic,
      @JsonKey(fromJson: _dynamicToString) this.soundSource,
      @JsonKey(fromJson: _dynamicToString) this.soundSourceUrl,
      @JsonKey(fromJson: _dynamicToString) this.soundYoutubeId,
      @JsonKey(fromJson: _dynamicToString) this.publisherId});
  factory _SoundItem.fromJson(Map<String, dynamic> json) =>
      _$SoundItemFromJson(json);

  @override
  @JsonKey(fromJson: _stringToInt)
  final int? id;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? title;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? summary;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? date;
  @override
  @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
  final String? visitor_count;
  @override
  @JsonKey(fromJson: _stringToBool)
  final bool? is_new;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? priority;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? file;
  @override
  @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
  final String? sound_file_url;
// Additional fields for detailed display
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? soundPic;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? soundSource;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? soundSourceUrl;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? soundYoutubeId;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? publisherId;

  /// Create a copy of SoundItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SoundItemCopyWith<_SoundItem> get copyWith =>
      __$SoundItemCopyWithImpl<_SoundItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SoundItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoundItem &&
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
            (identical(other.sound_file_url, sound_file_url) ||
                other.sound_file_url == sound_file_url) &&
            (identical(other.soundPic, soundPic) ||
                other.soundPic == soundPic) &&
            (identical(other.soundSource, soundSource) ||
                other.soundSource == soundSource) &&
            (identical(other.soundSourceUrl, soundSourceUrl) ||
                other.soundSourceUrl == soundSourceUrl) &&
            (identical(other.soundYoutubeId, soundYoutubeId) ||
                other.soundYoutubeId == soundYoutubeId) &&
            (identical(other.publisherId, publisherId) ||
                other.publisherId == publisherId));
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
      sound_file_url,
      soundPic,
      soundSource,
      soundSourceUrl,
      soundYoutubeId,
      publisherId);

  @override
  String toString() {
    return 'SoundItem(id: $id, title: $title, summary: $summary, date: $date, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, file: $file, sound_file_url: $sound_file_url, soundPic: $soundPic, soundSource: $soundSource, soundSourceUrl: $soundSourceUrl, soundYoutubeId: $soundYoutubeId, publisherId: $publisherId)';
  }
}

/// @nodoc
abstract mixin class _$SoundItemCopyWith<$Res>
    implements $SoundItemCopyWith<$Res> {
  factory _$SoundItemCopyWith(
          _SoundItem value, $Res Function(_SoundItem) _then) =
      __$SoundItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      @JsonKey(fromJson: _dynamicToString) String? title,
      @JsonKey(fromJson: _dynamicToString) String? summary,
      @JsonKey(fromJson: _dynamicToString) String? date,
      @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
      String? visitor_count,
      @JsonKey(fromJson: _stringToBool) bool? is_new,
      @JsonKey(fromJson: _dynamicToString) String? priority,
      @JsonKey(fromJson: _dynamicToString) String? file,
      @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
      String? sound_file_url,
      @JsonKey(fromJson: _dynamicToString) String? soundPic,
      @JsonKey(fromJson: _dynamicToString) String? soundSource,
      @JsonKey(fromJson: _dynamicToString) String? soundSourceUrl,
      @JsonKey(fromJson: _dynamicToString) String? soundYoutubeId,
      @JsonKey(fromJson: _dynamicToString) String? publisherId});
}

/// @nodoc
class __$SoundItemCopyWithImpl<$Res> implements _$SoundItemCopyWith<$Res> {
  __$SoundItemCopyWithImpl(this._self, this._then);

  final _SoundItem _self;
  final $Res Function(_SoundItem) _then;

  /// Create a copy of SoundItem
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
    Object? sound_file_url = freezed,
    Object? soundPic = freezed,
    Object? soundSource = freezed,
    Object? soundSourceUrl = freezed,
    Object? soundYoutubeId = freezed,
    Object? publisherId = freezed,
  }) {
    return _then(_SoundItem(
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
      sound_file_url: freezed == sound_file_url
          ? _self.sound_file_url
          : sound_file_url // ignore: cast_nullable_to_non_nullable
              as String?,
      soundPic: freezed == soundPic
          ? _self.soundPic
          : soundPic // ignore: cast_nullable_to_non_nullable
              as String?,
      soundSource: freezed == soundSource
          ? _self.soundSource
          : soundSource // ignore: cast_nullable_to_non_nullable
              as String?,
      soundSourceUrl: freezed == soundSourceUrl
          ? _self.soundSourceUrl
          : soundSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      soundYoutubeId: freezed == soundYoutubeId
          ? _self.soundYoutubeId
          : soundYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherId: freezed == publisherId
          ? _self.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SoundPaginationData {
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

  /// Create a copy of SoundPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SoundPaginationDataCopyWith<SoundPaginationData> get copyWith =>
      _$SoundPaginationDataCopyWithImpl<SoundPaginationData>(
          this as SoundPaginationData, _$identity);

  /// Serializes this SoundPaginationData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SoundPaginationData &&
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
    return 'SoundPaginationData(currentPage: $currentPage, perPage: $perPage, totalCategories: $totalCategories, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class $SoundPaginationDataCopyWith<$Res> {
  factory $SoundPaginationDataCopyWith(
          SoundPaginationData value, $Res Function(SoundPaginationData) _then) =
      _$SoundPaginationDataCopyWithImpl;
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
class _$SoundPaginationDataCopyWithImpl<$Res>
    implements $SoundPaginationDataCopyWith<$Res> {
  _$SoundPaginationDataCopyWithImpl(this._self, this._then);

  final SoundPaginationData _self;
  final $Res Function(SoundPaginationData) _then;

  /// Create a copy of SoundPaginationData
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

/// Adds pattern-matching-related methods to [SoundPaginationData].
extension SoundPaginationDataPatterns on SoundPaginationData {
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
    TResult Function(_SoundPaginationData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundPaginationData() when $default != null:
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
    TResult Function(_SoundPaginationData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundPaginationData():
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
    TResult? Function(_SoundPaginationData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundPaginationData() when $default != null:
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
      case _SoundPaginationData() when $default != null:
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
      case _SoundPaginationData():
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
      case _SoundPaginationData() when $default != null:
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
class _SoundPaginationData implements SoundPaginationData {
  const _SoundPaginationData(
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
  factory _SoundPaginationData.fromJson(Map<String, dynamic> json) =>
      _$SoundPaginationDataFromJson(json);

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

  /// Create a copy of SoundPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SoundPaginationDataCopyWith<_SoundPaginationData> get copyWith =>
      __$SoundPaginationDataCopyWithImpl<_SoundPaginationData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SoundPaginationDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoundPaginationData &&
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
    return 'SoundPaginationData(currentPage: $currentPage, perPage: $perPage, totalCategories: $totalCategories, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextPage: $nextPage, previousPage: $previousPage)';
  }
}

/// @nodoc
abstract mixin class _$SoundPaginationDataCopyWith<$Res>
    implements $SoundPaginationDataCopyWith<$Res> {
  factory _$SoundPaginationDataCopyWith(_SoundPaginationData value,
          $Res Function(_SoundPaginationData) _then) =
      __$SoundPaginationDataCopyWithImpl;
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
class __$SoundPaginationDataCopyWithImpl<$Res>
    implements _$SoundPaginationDataCopyWith<$Res> {
  __$SoundPaginationDataCopyWithImpl(this._self, this._then);

  final _SoundPaginationData _self;
  final $Res Function(_SoundPaginationData) _then;

  /// Create a copy of SoundPaginationData
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
    return _then(_SoundPaginationData(
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
mixin _$PageInfo {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  @JsonKey(fromJson: _dynamicToString)
  String? get title;
  @JsonKey(fromJson: _dynamicToString)
  String? get content;
  @JsonKey(fromJson: _dynamicToString)
  String? get language;
  @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
  String? get visitor_count;
  @JsonKey(fromJson: _dynamicToString)
  String? get priority;
  @JsonKey(fromJson: _dynamicToString)
  String? get date;
  @JsonKey(name: 'menu_id', fromJson: _dynamicToString)
  String? get menu_id;
  @JsonKey(fromJson: _dynamicToString)
  String? get type;

  /// Create a copy of PageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<PageInfo> get copyWith =>
      _$PageInfoCopyWithImpl<PageInfo>(this as PageInfo, _$identity);

  /// Serializes this PageInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageInfo &&
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
    return 'PageInfo(id: $id, title: $title, content: $content, language: $language, visitor_count: $visitor_count, priority: $priority, date: $date, menu_id: $menu_id, type: $type)';
  }
}

/// @nodoc
abstract mixin class $PageInfoCopyWith<$Res> {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) _then) =
      _$PageInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      @JsonKey(fromJson: _dynamicToString) String? title,
      @JsonKey(fromJson: _dynamicToString) String? content,
      @JsonKey(fromJson: _dynamicToString) String? language,
      @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
      String? visitor_count,
      @JsonKey(fromJson: _dynamicToString) String? priority,
      @JsonKey(fromJson: _dynamicToString) String? date,
      @JsonKey(name: 'menu_id', fromJson: _dynamicToString) String? menu_id,
      @JsonKey(fromJson: _dynamicToString) String? type});
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res> implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._self, this._then);

  final PageInfo _self;
  final $Res Function(PageInfo) _then;

  /// Create a copy of PageInfo
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

/// Adds pattern-matching-related methods to [PageInfo].
extension PageInfoPatterns on PageInfo {
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
    TResult Function(_PageInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageInfo() when $default != null:
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
    TResult Function(_PageInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageInfo():
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
    TResult? Function(_PageInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageInfo() when $default != null:
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
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? content,
            @JsonKey(fromJson: _dynamicToString) String? language,
            @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
            String? visitor_count,
            @JsonKey(fromJson: _dynamicToString) String? priority,
            @JsonKey(fromJson: _dynamicToString) String? date,
            @JsonKey(name: 'menu_id', fromJson: _dynamicToString)
            String? menu_id,
            @JsonKey(fromJson: _dynamicToString) String? type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageInfo() when $default != null:
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
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? content,
            @JsonKey(fromJson: _dynamicToString) String? language,
            @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
            String? visitor_count,
            @JsonKey(fromJson: _dynamicToString) String? priority,
            @JsonKey(fromJson: _dynamicToString) String? date,
            @JsonKey(name: 'menu_id', fromJson: _dynamicToString)
            String? menu_id,
            @JsonKey(fromJson: _dynamicToString) String? type)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageInfo():
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
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? content,
            @JsonKey(fromJson: _dynamicToString) String? language,
            @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
            String? visitor_count,
            @JsonKey(fromJson: _dynamicToString) String? priority,
            @JsonKey(fromJson: _dynamicToString) String? date,
            @JsonKey(name: 'menu_id', fromJson: _dynamicToString)
            String? menu_id,
            @JsonKey(fromJson: _dynamicToString) String? type)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageInfo() when $default != null:
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
class _PageInfo implements PageInfo {
  const _PageInfo(
      {@JsonKey(fromJson: _stringToInt) this.id,
      @JsonKey(fromJson: _dynamicToString) this.title,
      @JsonKey(fromJson: _dynamicToString) this.content,
      @JsonKey(fromJson: _dynamicToString) this.language,
      @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
      this.visitor_count,
      @JsonKey(fromJson: _dynamicToString) this.priority,
      @JsonKey(fromJson: _dynamicToString) this.date,
      @JsonKey(name: 'menu_id', fromJson: _dynamicToString) this.menu_id,
      @JsonKey(fromJson: _dynamicToString) this.type});
  factory _PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);

  @override
  @JsonKey(fromJson: _stringToInt)
  final int? id;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? title;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? content;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? language;
  @override
  @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
  final String? visitor_count;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? priority;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? date;
  @override
  @JsonKey(name: 'menu_id', fromJson: _dynamicToString)
  final String? menu_id;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? type;

  /// Create a copy of PageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageInfoCopyWith<_PageInfo> get copyWith =>
      __$PageInfoCopyWithImpl<_PageInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageInfo &&
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
    return 'PageInfo(id: $id, title: $title, content: $content, language: $language, visitor_count: $visitor_count, priority: $priority, date: $date, menu_id: $menu_id, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$PageInfoCopyWith<$Res>
    implements $PageInfoCopyWith<$Res> {
  factory _$PageInfoCopyWith(_PageInfo value, $Res Function(_PageInfo) _then) =
      __$PageInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      @JsonKey(fromJson: _dynamicToString) String? title,
      @JsonKey(fromJson: _dynamicToString) String? content,
      @JsonKey(fromJson: _dynamicToString) String? language,
      @JsonKey(name: 'visitor_count', fromJson: _dynamicToString)
      String? visitor_count,
      @JsonKey(fromJson: _dynamicToString) String? priority,
      @JsonKey(fromJson: _dynamicToString) String? date,
      @JsonKey(name: 'menu_id', fromJson: _dynamicToString) String? menu_id,
      @JsonKey(fromJson: _dynamicToString) String? type});
}

/// @nodoc
class __$PageInfoCopyWithImpl<$Res> implements _$PageInfoCopyWith<$Res> {
  __$PageInfoCopyWithImpl(this._self, this._then);

  final _PageInfo _self;
  final $Res Function(_PageInfo) _then;

  /// Create a copy of PageInfo
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
    return _then(_PageInfo(
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
  List<SoundItem>? get content;
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
      List<SoundItem>? content,
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
              as List<SoundItem>?,
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
    TResult Function(CategoryInfo? category, List<SoundItem>? content,
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
    TResult Function(CategoryInfo? category, List<SoundItem>? content,
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
    TResult? Function(CategoryInfo? category, List<SoundItem>? content,
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
      {this.category, final List<SoundItem>? content, this.pagination})
      : _content = content;
  factory _CategoryContentData.fromJson(Map<String, dynamic> json) =>
      _$CategoryContentDataFromJson(json);

  @override
  final CategoryInfo? category;
  final List<SoundItem>? _content;
  @override
  List<SoundItem>? get content {
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
      List<SoundItem>? content,
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
              as List<SoundItem>?,
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
  @JsonKey(fromJson: _dynamicToString)
  String? get title;
  @JsonKey(fromJson: _dynamicToString)
  String? get note;
  @JsonKey(fromJson: _dynamicToString)
  String? get type;
  @JsonKey(fromJson: _dynamicToString)
  String? get position;
  @JsonKey(fromJson: _dynamicToString)
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
      @JsonKey(fromJson: _dynamicToString) String? title,
      @JsonKey(fromJson: _dynamicToString) String? note,
      @JsonKey(fromJson: _dynamicToString) String? type,
      @JsonKey(fromJson: _dynamicToString) String? position,
      @JsonKey(fromJson: _dynamicToString) String? language});
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
    TResult Function(
            @JsonKey(fromJson: _stringToInt) int? id,
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? note,
            @JsonKey(fromJson: _dynamicToString) String? type,
            @JsonKey(fromJson: _dynamicToString) String? position,
            @JsonKey(fromJson: _dynamicToString) String? language)?
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
    TResult Function(
            @JsonKey(fromJson: _stringToInt) int? id,
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? note,
            @JsonKey(fromJson: _dynamicToString) String? type,
            @JsonKey(fromJson: _dynamicToString) String? position,
            @JsonKey(fromJson: _dynamicToString) String? language)
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
    TResult? Function(
            @JsonKey(fromJson: _stringToInt) int? id,
            @JsonKey(fromJson: _dynamicToString) String? title,
            @JsonKey(fromJson: _dynamicToString) String? note,
            @JsonKey(fromJson: _dynamicToString) String? type,
            @JsonKey(fromJson: _dynamicToString) String? position,
            @JsonKey(fromJson: _dynamicToString) String? language)?
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
      @JsonKey(fromJson: _dynamicToString) this.title,
      @JsonKey(fromJson: _dynamicToString) this.note,
      @JsonKey(fromJson: _dynamicToString) this.type,
      @JsonKey(fromJson: _dynamicToString) this.position,
      @JsonKey(fromJson: _dynamicToString) this.language});
  factory _CategoryInfo.fromJson(Map<String, dynamic> json) =>
      _$CategoryInfoFromJson(json);

  @override
  @JsonKey(fromJson: _stringToInt)
  final int? id;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? title;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? note;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? type;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? position;
  @override
  @JsonKey(fromJson: _dynamicToString)
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
      @JsonKey(fromJson: _dynamicToString) String? title,
      @JsonKey(fromJson: _dynamicToString) String? note,
      @JsonKey(fromJson: _dynamicToString) String? type,
      @JsonKey(fromJson: _dynamicToString) String? position,
      @JsonKey(fromJson: _dynamicToString) String? language});
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
mixin _$AudioBookSubcategoriesResponse {
  bool? get success;
  AudioBookSubcategoriesData? get data;
  String? get message;

  /// Create a copy of AudioBookSubcategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AudioBookSubcategoriesResponseCopyWith<AudioBookSubcategoriesResponse>
      get copyWith => _$AudioBookSubcategoriesResponseCopyWithImpl<
              AudioBookSubcategoriesResponse>(
          this as AudioBookSubcategoriesResponse, _$identity);

  /// Serializes this AudioBookSubcategoriesResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AudioBookSubcategoriesResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'AudioBookSubcategoriesResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $AudioBookSubcategoriesResponseCopyWith<$Res> {
  factory $AudioBookSubcategoriesResponseCopyWith(
          AudioBookSubcategoriesResponse value,
          $Res Function(AudioBookSubcategoriesResponse) _then) =
      _$AudioBookSubcategoriesResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, AudioBookSubcategoriesData? data, String? message});

  $AudioBookSubcategoriesDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AudioBookSubcategoriesResponseCopyWithImpl<$Res>
    implements $AudioBookSubcategoriesResponseCopyWith<$Res> {
  _$AudioBookSubcategoriesResponseCopyWithImpl(this._self, this._then);

  final AudioBookSubcategoriesResponse _self;
  final $Res Function(AudioBookSubcategoriesResponse) _then;

  /// Create a copy of AudioBookSubcategoriesResponse
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
              as AudioBookSubcategoriesData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AudioBookSubcategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioBookSubcategoriesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $AudioBookSubcategoriesDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AudioBookSubcategoriesResponse].
extension AudioBookSubcategoriesResponsePatterns
    on AudioBookSubcategoriesResponse {
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
    TResult Function(_AudioBookSubcategoriesResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesResponse() when $default != null:
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
    TResult Function(_AudioBookSubcategoriesResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesResponse():
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
    TResult? Function(_AudioBookSubcategoriesResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesResponse() when $default != null:
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
            bool? success, AudioBookSubcategoriesData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesResponse() when $default != null:
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
            bool? success, AudioBookSubcategoriesData? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesResponse():
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
            bool? success, AudioBookSubcategoriesData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AudioBookSubcategoriesResponse
    implements AudioBookSubcategoriesResponse {
  const _AudioBookSubcategoriesResponse(
      {this.success, this.data, this.message});
  factory _AudioBookSubcategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$AudioBookSubcategoriesResponseFromJson(json);

  @override
  final bool? success;
  @override
  final AudioBookSubcategoriesData? data;
  @override
  final String? message;

  /// Create a copy of AudioBookSubcategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AudioBookSubcategoriesResponseCopyWith<_AudioBookSubcategoriesResponse>
      get copyWith => __$AudioBookSubcategoriesResponseCopyWithImpl<
          _AudioBookSubcategoriesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AudioBookSubcategoriesResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AudioBookSubcategoriesResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'AudioBookSubcategoriesResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$AudioBookSubcategoriesResponseCopyWith<$Res>
    implements $AudioBookSubcategoriesResponseCopyWith<$Res> {
  factory _$AudioBookSubcategoriesResponseCopyWith(
          _AudioBookSubcategoriesResponse value,
          $Res Function(_AudioBookSubcategoriesResponse) _then) =
      __$AudioBookSubcategoriesResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, AudioBookSubcategoriesData? data, String? message});

  @override
  $AudioBookSubcategoriesDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$AudioBookSubcategoriesResponseCopyWithImpl<$Res>
    implements _$AudioBookSubcategoriesResponseCopyWith<$Res> {
  __$AudioBookSubcategoriesResponseCopyWithImpl(this._self, this._then);

  final _AudioBookSubcategoriesResponse _self;
  final $Res Function(_AudioBookSubcategoriesResponse) _then;

  /// Create a copy of AudioBookSubcategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_AudioBookSubcategoriesResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as AudioBookSubcategoriesData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AudioBookSubcategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioBookSubcategoriesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $AudioBookSubcategoriesDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$AudioBookSubcategoriesData {
  @JsonKey(name: 'parent_category')
  CategoryInfo? get parentCategory;
  List<AudioBookSubcategory>? get subcategories;

  /// Create a copy of AudioBookSubcategoriesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AudioBookSubcategoriesDataCopyWith<AudioBookSubcategoriesData>
      get copyWith =>
          _$AudioBookSubcategoriesDataCopyWithImpl<AudioBookSubcategoriesData>(
              this as AudioBookSubcategoriesData, _$identity);

  /// Serializes this AudioBookSubcategoriesData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AudioBookSubcategoriesData &&
            (identical(other.parentCategory, parentCategory) ||
                other.parentCategory == parentCategory) &&
            const DeepCollectionEquality()
                .equals(other.subcategories, subcategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parentCategory,
      const DeepCollectionEquality().hash(subcategories));

  @override
  String toString() {
    return 'AudioBookSubcategoriesData(parentCategory: $parentCategory, subcategories: $subcategories)';
  }
}

/// @nodoc
abstract mixin class $AudioBookSubcategoriesDataCopyWith<$Res> {
  factory $AudioBookSubcategoriesDataCopyWith(AudioBookSubcategoriesData value,
          $Res Function(AudioBookSubcategoriesData) _then) =
      _$AudioBookSubcategoriesDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'parent_category') CategoryInfo? parentCategory,
      List<AudioBookSubcategory>? subcategories});

  $CategoryInfoCopyWith<$Res>? get parentCategory;
}

/// @nodoc
class _$AudioBookSubcategoriesDataCopyWithImpl<$Res>
    implements $AudioBookSubcategoriesDataCopyWith<$Res> {
  _$AudioBookSubcategoriesDataCopyWithImpl(this._self, this._then);

  final AudioBookSubcategoriesData _self;
  final $Res Function(AudioBookSubcategoriesData) _then;

  /// Create a copy of AudioBookSubcategoriesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentCategory = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_self.copyWith(
      parentCategory: freezed == parentCategory
          ? _self.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as CategoryInfo?,
      subcategories: freezed == subcategories
          ? _self.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<AudioBookSubcategory>?,
    ));
  }

  /// Create a copy of AudioBookSubcategoriesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryInfoCopyWith<$Res>? get parentCategory {
    if (_self.parentCategory == null) {
      return null;
    }

    return $CategoryInfoCopyWith<$Res>(_self.parentCategory!, (value) {
      return _then(_self.copyWith(parentCategory: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AudioBookSubcategoriesData].
extension AudioBookSubcategoriesDataPatterns on AudioBookSubcategoriesData {
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
    TResult Function(_AudioBookSubcategoriesData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesData() when $default != null:
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
    TResult Function(_AudioBookSubcategoriesData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesData():
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
    TResult? Function(_AudioBookSubcategoriesData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesData() when $default != null:
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
            @JsonKey(name: 'parent_category') CategoryInfo? parentCategory,
            List<AudioBookSubcategory>? subcategories)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesData() when $default != null:
        return $default(_that.parentCategory, _that.subcategories);
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
            @JsonKey(name: 'parent_category') CategoryInfo? parentCategory,
            List<AudioBookSubcategory>? subcategories)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesData():
        return $default(_that.parentCategory, _that.subcategories);
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
            @JsonKey(name: 'parent_category') CategoryInfo? parentCategory,
            List<AudioBookSubcategory>? subcategories)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategoriesData() when $default != null:
        return $default(_that.parentCategory, _that.subcategories);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AudioBookSubcategoriesData implements AudioBookSubcategoriesData {
  const _AudioBookSubcategoriesData(
      {@JsonKey(name: 'parent_category') this.parentCategory,
      final List<AudioBookSubcategory>? subcategories})
      : _subcategories = subcategories;
  factory _AudioBookSubcategoriesData.fromJson(Map<String, dynamic> json) =>
      _$AudioBookSubcategoriesDataFromJson(json);

  @override
  @JsonKey(name: 'parent_category')
  final CategoryInfo? parentCategory;
  final List<AudioBookSubcategory>? _subcategories;
  @override
  List<AudioBookSubcategory>? get subcategories {
    final value = _subcategories;
    if (value == null) return null;
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of AudioBookSubcategoriesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AudioBookSubcategoriesDataCopyWith<_AudioBookSubcategoriesData>
      get copyWith => __$AudioBookSubcategoriesDataCopyWithImpl<
          _AudioBookSubcategoriesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AudioBookSubcategoriesDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AudioBookSubcategoriesData &&
            (identical(other.parentCategory, parentCategory) ||
                other.parentCategory == parentCategory) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parentCategory,
      const DeepCollectionEquality().hash(_subcategories));

  @override
  String toString() {
    return 'AudioBookSubcategoriesData(parentCategory: $parentCategory, subcategories: $subcategories)';
  }
}

/// @nodoc
abstract mixin class _$AudioBookSubcategoriesDataCopyWith<$Res>
    implements $AudioBookSubcategoriesDataCopyWith<$Res> {
  factory _$AudioBookSubcategoriesDataCopyWith(
          _AudioBookSubcategoriesData value,
          $Res Function(_AudioBookSubcategoriesData) _then) =
      __$AudioBookSubcategoriesDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'parent_category') CategoryInfo? parentCategory,
      List<AudioBookSubcategory>? subcategories});

  @override
  $CategoryInfoCopyWith<$Res>? get parentCategory;
}

/// @nodoc
class __$AudioBookSubcategoriesDataCopyWithImpl<$Res>
    implements _$AudioBookSubcategoriesDataCopyWith<$Res> {
  __$AudioBookSubcategoriesDataCopyWithImpl(this._self, this._then);

  final _AudioBookSubcategoriesData _self;
  final $Res Function(_AudioBookSubcategoriesData) _then;

  /// Create a copy of AudioBookSubcategoriesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? parentCategory = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_AudioBookSubcategoriesData(
      parentCategory: freezed == parentCategory
          ? _self.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as CategoryInfo?,
      subcategories: freezed == subcategories
          ? _self._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<AudioBookSubcategory>?,
    ));
  }

  /// Create a copy of AudioBookSubcategoriesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryInfoCopyWith<$Res>? get parentCategory {
    if (_self.parentCategory == null) {
      return null;
    }

    return $CategoryInfoCopyWith<$Res>(_self.parentCategory!, (value) {
      return _then(_self.copyWith(parentCategory: value));
    });
  }
}

/// @nodoc
mixin _$AudioBookSubcategory {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  String? get title;
  String? get note;
  String? get position;
  String? get language;
  String? get date;
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @JsonKey(name: 'show_in_menu', fromJson: _stringToBool)
  bool? get showInMenu;
  @JsonKey(name: 'show_in_main', fromJson: _stringToBool)
  bool? get showInMain;
  @JsonKey(name: 'content_count', fromJson: _stringToInt)
  int? get contentCount;

  /// Create a copy of AudioBookSubcategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AudioBookSubcategoryCopyWith<AudioBookSubcategory> get copyWith =>
      _$AudioBookSubcategoryCopyWithImpl<AudioBookSubcategory>(
          this as AudioBookSubcategory, _$identity);

  /// Serializes this AudioBookSubcategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AudioBookSubcategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.showInMenu, showInMenu) ||
                other.showInMenu == showInMenu) &&
            (identical(other.showInMain, showInMain) ||
                other.showInMain == showInMain) &&
            (identical(other.contentCount, contentCount) ||
                other.contentCount == contentCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, note, position,
      language, date, parentId, showInMenu, showInMain, contentCount);

  @override
  String toString() {
    return 'AudioBookSubcategory(id: $id, title: $title, note: $note, position: $position, language: $language, date: $date, parentId: $parentId, showInMenu: $showInMenu, showInMain: $showInMain, contentCount: $contentCount)';
  }
}

/// @nodoc
abstract mixin class $AudioBookSubcategoryCopyWith<$Res> {
  factory $AudioBookSubcategoryCopyWith(AudioBookSubcategory value,
          $Res Function(AudioBookSubcategory) _then) =
      _$AudioBookSubcategoryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      String? title,
      String? note,
      String? position,
      String? language,
      String? date,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'show_in_menu', fromJson: _stringToBool) bool? showInMenu,
      @JsonKey(name: 'show_in_main', fromJson: _stringToBool) bool? showInMain,
      @JsonKey(name: 'content_count', fromJson: _stringToInt)
      int? contentCount});
}

/// @nodoc
class _$AudioBookSubcategoryCopyWithImpl<$Res>
    implements $AudioBookSubcategoryCopyWith<$Res> {
  _$AudioBookSubcategoryCopyWithImpl(this._self, this._then);

  final AudioBookSubcategory _self;
  final $Res Function(AudioBookSubcategory) _then;

  /// Create a copy of AudioBookSubcategory
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
    Object? parentId = freezed,
    Object? showInMenu = freezed,
    Object? showInMain = freezed,
    Object? contentCount = freezed,
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
      parentId: freezed == parentId
          ? _self.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      showInMenu: freezed == showInMenu
          ? _self.showInMenu
          : showInMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
      showInMain: freezed == showInMain
          ? _self.showInMain
          : showInMain // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentCount: freezed == contentCount
          ? _self.contentCount
          : contentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AudioBookSubcategory].
extension AudioBookSubcategoryPatterns on AudioBookSubcategory {
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
    TResult Function(_AudioBookSubcategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategory() when $default != null:
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
    TResult Function(_AudioBookSubcategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategory():
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
    TResult? Function(_AudioBookSubcategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategory() when $default != null:
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
            @JsonKey(name: 'parent_id') String? parentId,
            @JsonKey(name: 'show_in_menu', fromJson: _stringToBool)
            bool? showInMenu,
            @JsonKey(name: 'show_in_main', fromJson: _stringToBool)
            bool? showInMain,
            @JsonKey(name: 'content_count', fromJson: _stringToInt)
            int? contentCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategory() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.note,
            _that.position,
            _that.language,
            _that.date,
            _that.parentId,
            _that.showInMenu,
            _that.showInMain,
            _that.contentCount);
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
            @JsonKey(name: 'parent_id') String? parentId,
            @JsonKey(name: 'show_in_menu', fromJson: _stringToBool)
            bool? showInMenu,
            @JsonKey(name: 'show_in_main', fromJson: _stringToBool)
            bool? showInMain,
            @JsonKey(name: 'content_count', fromJson: _stringToInt)
            int? contentCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategory():
        return $default(
            _that.id,
            _that.title,
            _that.note,
            _that.position,
            _that.language,
            _that.date,
            _that.parentId,
            _that.showInMenu,
            _that.showInMain,
            _that.contentCount);
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
            @JsonKey(name: 'parent_id') String? parentId,
            @JsonKey(name: 'show_in_menu', fromJson: _stringToBool)
            bool? showInMenu,
            @JsonKey(name: 'show_in_main', fromJson: _stringToBool)
            bool? showInMain,
            @JsonKey(name: 'content_count', fromJson: _stringToInt)
            int? contentCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AudioBookSubcategory() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.note,
            _that.position,
            _that.language,
            _that.date,
            _that.parentId,
            _that.showInMenu,
            _that.showInMain,
            _that.contentCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AudioBookSubcategory implements AudioBookSubcategory {
  const _AudioBookSubcategory(
      {@JsonKey(fromJson: _stringToInt) this.id,
      this.title,
      this.note,
      this.position,
      this.language,
      this.date,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'show_in_menu', fromJson: _stringToBool) this.showInMenu,
      @JsonKey(name: 'show_in_main', fromJson: _stringToBool) this.showInMain,
      @JsonKey(name: 'content_count', fromJson: _stringToInt)
      this.contentCount});
  factory _AudioBookSubcategory.fromJson(Map<String, dynamic> json) =>
      _$AudioBookSubcategoryFromJson(json);

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
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  @JsonKey(name: 'show_in_menu', fromJson: _stringToBool)
  final bool? showInMenu;
  @override
  @JsonKey(name: 'show_in_main', fromJson: _stringToBool)
  final bool? showInMain;
  @override
  @JsonKey(name: 'content_count', fromJson: _stringToInt)
  final int? contentCount;

  /// Create a copy of AudioBookSubcategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AudioBookSubcategoryCopyWith<_AudioBookSubcategory> get copyWith =>
      __$AudioBookSubcategoryCopyWithImpl<_AudioBookSubcategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AudioBookSubcategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AudioBookSubcategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.showInMenu, showInMenu) ||
                other.showInMenu == showInMenu) &&
            (identical(other.showInMain, showInMain) ||
                other.showInMain == showInMain) &&
            (identical(other.contentCount, contentCount) ||
                other.contentCount == contentCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, note, position,
      language, date, parentId, showInMenu, showInMain, contentCount);

  @override
  String toString() {
    return 'AudioBookSubcategory(id: $id, title: $title, note: $note, position: $position, language: $language, date: $date, parentId: $parentId, showInMenu: $showInMenu, showInMain: $showInMain, contentCount: $contentCount)';
  }
}

/// @nodoc
abstract mixin class _$AudioBookSubcategoryCopyWith<$Res>
    implements $AudioBookSubcategoryCopyWith<$Res> {
  factory _$AudioBookSubcategoryCopyWith(_AudioBookSubcategory value,
          $Res Function(_AudioBookSubcategory) _then) =
      __$AudioBookSubcategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      String? title,
      String? note,
      String? position,
      String? language,
      String? date,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'show_in_menu', fromJson: _stringToBool) bool? showInMenu,
      @JsonKey(name: 'show_in_main', fromJson: _stringToBool) bool? showInMain,
      @JsonKey(name: 'content_count', fromJson: _stringToInt)
      int? contentCount});
}

/// @nodoc
class __$AudioBookSubcategoryCopyWithImpl<$Res>
    implements _$AudioBookSubcategoryCopyWith<$Res> {
  __$AudioBookSubcategoryCopyWithImpl(this._self, this._then);

  final _AudioBookSubcategory _self;
  final $Res Function(_AudioBookSubcategory) _then;

  /// Create a copy of AudioBookSubcategory
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
    Object? parentId = freezed,
    Object? showInMenu = freezed,
    Object? showInMain = freezed,
    Object? contentCount = freezed,
  }) {
    return _then(_AudioBookSubcategory(
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
      parentId: freezed == parentId
          ? _self.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      showInMenu: freezed == showInMenu
          ? _self.showInMenu
          : showInMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
      showInMain: freezed == showInMain
          ? _self.showInMain
          : showInMain // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentCount: freezed == contentCount
          ? _self.contentCount
          : contentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$SoundDetailResponse {
  bool? get success;
  SoundDetailData? get data;
  String? get message;

  /// Create a copy of SoundDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SoundDetailResponseCopyWith<SoundDetailResponse> get copyWith =>
      _$SoundDetailResponseCopyWithImpl<SoundDetailResponse>(
          this as SoundDetailResponse, _$identity);

  /// Serializes this SoundDetailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SoundDetailResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'SoundDetailResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $SoundDetailResponseCopyWith<$Res> {
  factory $SoundDetailResponseCopyWith(
          SoundDetailResponse value, $Res Function(SoundDetailResponse) _then) =
      _$SoundDetailResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, SoundDetailData? data, String? message});

  $SoundDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SoundDetailResponseCopyWithImpl<$Res>
    implements $SoundDetailResponseCopyWith<$Res> {
  _$SoundDetailResponseCopyWithImpl(this._self, this._then);

  final SoundDetailResponse _self;
  final $Res Function(SoundDetailResponse) _then;

  /// Create a copy of SoundDetailResponse
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
              as SoundDetailData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SoundDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoundDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $SoundDetailDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SoundDetailResponse].
extension SoundDetailResponsePatterns on SoundDetailResponse {
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
    TResult Function(_SoundDetailResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundDetailResponse() when $default != null:
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
    TResult Function(_SoundDetailResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailResponse():
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
    TResult? Function(_SoundDetailResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailResponse() when $default != null:
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
    TResult Function(bool? success, SoundDetailData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundDetailResponse() when $default != null:
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
    TResult Function(bool? success, SoundDetailData? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailResponse():
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
    TResult? Function(bool? success, SoundDetailData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SoundDetailResponse implements SoundDetailResponse {
  const _SoundDetailResponse({this.success, this.data, this.message});
  factory _SoundDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$SoundDetailResponseFromJson(json);

  @override
  final bool? success;
  @override
  final SoundDetailData? data;
  @override
  final String? message;

  /// Create a copy of SoundDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SoundDetailResponseCopyWith<_SoundDetailResponse> get copyWith =>
      __$SoundDetailResponseCopyWithImpl<_SoundDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SoundDetailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoundDetailResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'SoundDetailResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SoundDetailResponseCopyWith<$Res>
    implements $SoundDetailResponseCopyWith<$Res> {
  factory _$SoundDetailResponseCopyWith(_SoundDetailResponse value,
          $Res Function(_SoundDetailResponse) _then) =
      __$SoundDetailResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, SoundDetailData? data, String? message});

  @override
  $SoundDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$SoundDetailResponseCopyWithImpl<$Res>
    implements _$SoundDetailResponseCopyWith<$Res> {
  __$SoundDetailResponseCopyWithImpl(this._self, this._then);

  final _SoundDetailResponse _self;
  final $Res Function(_SoundDetailResponse) _then;

  /// Create a copy of SoundDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_SoundDetailResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as SoundDetailData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SoundDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoundDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $SoundDetailDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$SoundDetailData {
  @JsonKey(name: 'sound_id', fromJson: _stringToInt)
  int? get soundId;
  @JsonKey(name: 'sound_cat_id', fromJson: _dynamicToString)
  String? get soundCatId;
  @JsonKey(name: 'sound_title', fromJson: _dynamicToString)
  String? get soundTitle;
  @JsonKey(fromJson: _dynamicToString)
  String? get soundTs;
  @JsonKey(name: 'sound_summary', fromJson: _dynamicToString)
  String? get soundSummary;
  @JsonKey(name: 'sound_des', fromJson: _dynamicToString)
  String? get soundDes;
  @JsonKey(name: 'sound_pic', fromJson: _dynamicToString)
  String? get soundPic;
  @JsonKey(name: 'sound_pic_pos', fromJson: _dynamicToString)
  String? get soundPicPos;
  @JsonKey(name: 'sound_visitor', fromJson: _stringToInt)
  int? get soundVisitor;
  @JsonKey(name: 'sound_is_new', fromJson: _stringToBool)
  bool? get soundIsNew;
  @JsonKey(name: 'sound_priority', fromJson: _dynamicToString)
  String? get soundPriority;
  @JsonKey(name: 'sound_active_vote', fromJson: _stringToBool)
  bool? get soundActiveVote;
  @JsonKey(name: 'sound_active_hint', fromJson: _stringToBool)
  bool? get soundActiveHint;
  @JsonKey(name: 'sound_active', fromJson: _stringToBool)
  bool? get soundActive;
  @JsonKey(name: 'sound_date', fromJson: _dynamicToString)
  String? get soundDate;
  @JsonKey(name: 'sound_pic_active', fromJson: _stringToBool)
  bool? get soundPicActive;
  @JsonKey(name: 'sound_last_sound', fromJson: _stringToBool)
  bool? get soundLastSound;
  @JsonKey(name: 'sound_publisher_id', fromJson: _dynamicToString)
  String? get soundPublisherId;
  @JsonKey(name: 'sound_source', fromJson: _dynamicToString)
  String? get soundSource;
  @JsonKey(name: 'sound_source_url', fromJson: _dynamicToString)
  String? get soundSourceUrl;
  @JsonKey(name: 'sound_youtube_id', fromJson: _dynamicToString)
  String? get soundYoutubeId;
  @JsonKey(name: 'sound_file', fromJson: _dynamicToString)
  String? get soundFile;
  @JsonKey(name: 'sound_user_add_hint_nsup', fromJson: _stringToBool)
  bool? get soundUserAddHintNsup;
  @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
  String? get soundFileUrl;
  SoundDetailCategory? get category;
  List<dynamic>? get captions;
  List<dynamic>? get votes;

  /// Create a copy of SoundDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SoundDetailDataCopyWith<SoundDetailData> get copyWith =>
      _$SoundDetailDataCopyWithImpl<SoundDetailData>(
          this as SoundDetailData, _$identity);

  /// Serializes this SoundDetailData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SoundDetailData &&
            (identical(other.soundId, soundId) || other.soundId == soundId) &&
            (identical(other.soundCatId, soundCatId) ||
                other.soundCatId == soundCatId) &&
            (identical(other.soundTitle, soundTitle) ||
                other.soundTitle == soundTitle) &&
            (identical(other.soundTs, soundTs) || other.soundTs == soundTs) &&
            (identical(other.soundSummary, soundSummary) ||
                other.soundSummary == soundSummary) &&
            (identical(other.soundDes, soundDes) ||
                other.soundDes == soundDes) &&
            (identical(other.soundPic, soundPic) ||
                other.soundPic == soundPic) &&
            (identical(other.soundPicPos, soundPicPos) ||
                other.soundPicPos == soundPicPos) &&
            (identical(other.soundVisitor, soundVisitor) ||
                other.soundVisitor == soundVisitor) &&
            (identical(other.soundIsNew, soundIsNew) ||
                other.soundIsNew == soundIsNew) &&
            (identical(other.soundPriority, soundPriority) ||
                other.soundPriority == soundPriority) &&
            (identical(other.soundActiveVote, soundActiveVote) ||
                other.soundActiveVote == soundActiveVote) &&
            (identical(other.soundActiveHint, soundActiveHint) ||
                other.soundActiveHint == soundActiveHint) &&
            (identical(other.soundActive, soundActive) ||
                other.soundActive == soundActive) &&
            (identical(other.soundDate, soundDate) ||
                other.soundDate == soundDate) &&
            (identical(other.soundPicActive, soundPicActive) ||
                other.soundPicActive == soundPicActive) &&
            (identical(other.soundLastSound, soundLastSound) ||
                other.soundLastSound == soundLastSound) &&
            (identical(other.soundPublisherId, soundPublisherId) ||
                other.soundPublisherId == soundPublisherId) &&
            (identical(other.soundSource, soundSource) ||
                other.soundSource == soundSource) &&
            (identical(other.soundSourceUrl, soundSourceUrl) ||
                other.soundSourceUrl == soundSourceUrl) &&
            (identical(other.soundYoutubeId, soundYoutubeId) ||
                other.soundYoutubeId == soundYoutubeId) &&
            (identical(other.soundFile, soundFile) ||
                other.soundFile == soundFile) &&
            (identical(other.soundUserAddHintNsup, soundUserAddHintNsup) ||
                other.soundUserAddHintNsup == soundUserAddHintNsup) &&
            (identical(other.soundFileUrl, soundFileUrl) ||
                other.soundFileUrl == soundFileUrl) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other.captions, captions) &&
            const DeepCollectionEquality().equals(other.votes, votes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        soundId,
        soundCatId,
        soundTitle,
        soundTs,
        soundSummary,
        soundDes,
        soundPic,
        soundPicPos,
        soundVisitor,
        soundIsNew,
        soundPriority,
        soundActiveVote,
        soundActiveHint,
        soundActive,
        soundDate,
        soundPicActive,
        soundLastSound,
        soundPublisherId,
        soundSource,
        soundSourceUrl,
        soundYoutubeId,
        soundFile,
        soundUserAddHintNsup,
        soundFileUrl,
        category,
        const DeepCollectionEquality().hash(captions),
        const DeepCollectionEquality().hash(votes)
      ]);

  @override
  String toString() {
    return 'SoundDetailData(soundId: $soundId, soundCatId: $soundCatId, soundTitle: $soundTitle, soundTs: $soundTs, soundSummary: $soundSummary, soundDes: $soundDes, soundPic: $soundPic, soundPicPos: $soundPicPos, soundVisitor: $soundVisitor, soundIsNew: $soundIsNew, soundPriority: $soundPriority, soundActiveVote: $soundActiveVote, soundActiveHint: $soundActiveHint, soundActive: $soundActive, soundDate: $soundDate, soundPicActive: $soundPicActive, soundLastSound: $soundLastSound, soundPublisherId: $soundPublisherId, soundSource: $soundSource, soundSourceUrl: $soundSourceUrl, soundYoutubeId: $soundYoutubeId, soundFile: $soundFile, soundUserAddHintNsup: $soundUserAddHintNsup, soundFileUrl: $soundFileUrl, category: $category, captions: $captions, votes: $votes)';
  }
}

/// @nodoc
abstract mixin class $SoundDetailDataCopyWith<$Res> {
  factory $SoundDetailDataCopyWith(
          SoundDetailData value, $Res Function(SoundDetailData) _then) =
      _$SoundDetailDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'sound_id', fromJson: _stringToInt) int? soundId,
      @JsonKey(name: 'sound_cat_id', fromJson: _dynamicToString)
      String? soundCatId,
      @JsonKey(name: 'sound_title', fromJson: _dynamicToString)
      String? soundTitle,
      @JsonKey(fromJson: _dynamicToString) String? soundTs,
      @JsonKey(name: 'sound_summary', fromJson: _dynamicToString)
      String? soundSummary,
      @JsonKey(name: 'sound_des', fromJson: _dynamicToString) String? soundDes,
      @JsonKey(name: 'sound_pic', fromJson: _dynamicToString) String? soundPic,
      @JsonKey(name: 'sound_pic_pos', fromJson: _dynamicToString)
      String? soundPicPos,
      @JsonKey(name: 'sound_visitor', fromJson: _stringToInt) int? soundVisitor,
      @JsonKey(name: 'sound_is_new', fromJson: _stringToBool) bool? soundIsNew,
      @JsonKey(name: 'sound_priority', fromJson: _dynamicToString)
      String? soundPriority,
      @JsonKey(name: 'sound_active_vote', fromJson: _stringToBool)
      bool? soundActiveVote,
      @JsonKey(name: 'sound_active_hint', fromJson: _stringToBool)
      bool? soundActiveHint,
      @JsonKey(name: 'sound_active', fromJson: _stringToBool) bool? soundActive,
      @JsonKey(name: 'sound_date', fromJson: _dynamicToString)
      String? soundDate,
      @JsonKey(name: 'sound_pic_active', fromJson: _stringToBool)
      bool? soundPicActive,
      @JsonKey(name: 'sound_last_sound', fromJson: _stringToBool)
      bool? soundLastSound,
      @JsonKey(name: 'sound_publisher_id', fromJson: _dynamicToString)
      String? soundPublisherId,
      @JsonKey(name: 'sound_source', fromJson: _dynamicToString)
      String? soundSource,
      @JsonKey(name: 'sound_source_url', fromJson: _dynamicToString)
      String? soundSourceUrl,
      @JsonKey(name: 'sound_youtube_id', fromJson: _dynamicToString)
      String? soundYoutubeId,
      @JsonKey(name: 'sound_file', fromJson: _dynamicToString)
      String? soundFile,
      @JsonKey(name: 'sound_user_add_hint_nsup', fromJson: _stringToBool)
      bool? soundUserAddHintNsup,
      @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
      String? soundFileUrl,
      SoundDetailCategory? category,
      List<dynamic>? captions,
      List<dynamic>? votes});

  $SoundDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$SoundDetailDataCopyWithImpl<$Res>
    implements $SoundDetailDataCopyWith<$Res> {
  _$SoundDetailDataCopyWithImpl(this._self, this._then);

  final SoundDetailData _self;
  final $Res Function(SoundDetailData) _then;

  /// Create a copy of SoundDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soundId = freezed,
    Object? soundCatId = freezed,
    Object? soundTitle = freezed,
    Object? soundTs = freezed,
    Object? soundSummary = freezed,
    Object? soundDes = freezed,
    Object? soundPic = freezed,
    Object? soundPicPos = freezed,
    Object? soundVisitor = freezed,
    Object? soundIsNew = freezed,
    Object? soundPriority = freezed,
    Object? soundActiveVote = freezed,
    Object? soundActiveHint = freezed,
    Object? soundActive = freezed,
    Object? soundDate = freezed,
    Object? soundPicActive = freezed,
    Object? soundLastSound = freezed,
    Object? soundPublisherId = freezed,
    Object? soundSource = freezed,
    Object? soundSourceUrl = freezed,
    Object? soundYoutubeId = freezed,
    Object? soundFile = freezed,
    Object? soundUserAddHintNsup = freezed,
    Object? soundFileUrl = freezed,
    Object? category = freezed,
    Object? captions = freezed,
    Object? votes = freezed,
  }) {
    return _then(_self.copyWith(
      soundId: freezed == soundId
          ? _self.soundId
          : soundId // ignore: cast_nullable_to_non_nullable
              as int?,
      soundCatId: freezed == soundCatId
          ? _self.soundCatId
          : soundCatId // ignore: cast_nullable_to_non_nullable
              as String?,
      soundTitle: freezed == soundTitle
          ? _self.soundTitle
          : soundTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      soundTs: freezed == soundTs
          ? _self.soundTs
          : soundTs // ignore: cast_nullable_to_non_nullable
              as String?,
      soundSummary: freezed == soundSummary
          ? _self.soundSummary
          : soundSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      soundDes: freezed == soundDes
          ? _self.soundDes
          : soundDes // ignore: cast_nullable_to_non_nullable
              as String?,
      soundPic: freezed == soundPic
          ? _self.soundPic
          : soundPic // ignore: cast_nullable_to_non_nullable
              as String?,
      soundPicPos: freezed == soundPicPos
          ? _self.soundPicPos
          : soundPicPos // ignore: cast_nullable_to_non_nullable
              as String?,
      soundVisitor: freezed == soundVisitor
          ? _self.soundVisitor
          : soundVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      soundIsNew: freezed == soundIsNew
          ? _self.soundIsNew
          : soundIsNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundPriority: freezed == soundPriority
          ? _self.soundPriority
          : soundPriority // ignore: cast_nullable_to_non_nullable
              as String?,
      soundActiveVote: freezed == soundActiveVote
          ? _self.soundActiveVote
          : soundActiveVote // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundActiveHint: freezed == soundActiveHint
          ? _self.soundActiveHint
          : soundActiveHint // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundActive: freezed == soundActive
          ? _self.soundActive
          : soundActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundDate: freezed == soundDate
          ? _self.soundDate
          : soundDate // ignore: cast_nullable_to_non_nullable
              as String?,
      soundPicActive: freezed == soundPicActive
          ? _self.soundPicActive
          : soundPicActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundLastSound: freezed == soundLastSound
          ? _self.soundLastSound
          : soundLastSound // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundPublisherId: freezed == soundPublisherId
          ? _self.soundPublisherId
          : soundPublisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      soundSource: freezed == soundSource
          ? _self.soundSource
          : soundSource // ignore: cast_nullable_to_non_nullable
              as String?,
      soundSourceUrl: freezed == soundSourceUrl
          ? _self.soundSourceUrl
          : soundSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      soundYoutubeId: freezed == soundYoutubeId
          ? _self.soundYoutubeId
          : soundYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      soundFile: freezed == soundFile
          ? _self.soundFile
          : soundFile // ignore: cast_nullable_to_non_nullable
              as String?,
      soundUserAddHintNsup: freezed == soundUserAddHintNsup
          ? _self.soundUserAddHintNsup
          : soundUserAddHintNsup // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundFileUrl: freezed == soundFileUrl
          ? _self.soundFileUrl
          : soundFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as SoundDetailCategory?,
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

  /// Create a copy of SoundDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoundDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $SoundDetailCategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SoundDetailData].
extension SoundDetailDataPatterns on SoundDetailData {
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
    TResult Function(_SoundDetailData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundDetailData() when $default != null:
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
    TResult Function(_SoundDetailData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailData():
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
    TResult? Function(_SoundDetailData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailData() when $default != null:
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
            @JsonKey(name: 'sound_id', fromJson: _stringToInt) int? soundId,
            @JsonKey(name: 'sound_cat_id', fromJson: _dynamicToString)
            String? soundCatId,
            @JsonKey(name: 'sound_title', fromJson: _dynamicToString)
            String? soundTitle,
            @JsonKey(fromJson: _dynamicToString) String? soundTs,
            @JsonKey(name: 'sound_summary', fromJson: _dynamicToString)
            String? soundSummary,
            @JsonKey(name: 'sound_des', fromJson: _dynamicToString)
            String? soundDes,
            @JsonKey(name: 'sound_pic', fromJson: _dynamicToString)
            String? soundPic,
            @JsonKey(name: 'sound_pic_pos', fromJson: _dynamicToString)
            String? soundPicPos,
            @JsonKey(name: 'sound_visitor', fromJson: _stringToInt)
            int? soundVisitor,
            @JsonKey(name: 'sound_is_new', fromJson: _stringToBool)
            bool? soundIsNew,
            @JsonKey(name: 'sound_priority', fromJson: _dynamicToString)
            String? soundPriority,
            @JsonKey(name: 'sound_active_vote', fromJson: _stringToBool)
            bool? soundActiveVote,
            @JsonKey(name: 'sound_active_hint', fromJson: _stringToBool)
            bool? soundActiveHint,
            @JsonKey(name: 'sound_active', fromJson: _stringToBool)
            bool? soundActive,
            @JsonKey(name: 'sound_date', fromJson: _dynamicToString)
            String? soundDate,
            @JsonKey(name: 'sound_pic_active', fromJson: _stringToBool)
            bool? soundPicActive,
            @JsonKey(name: 'sound_last_sound', fromJson: _stringToBool)
            bool? soundLastSound,
            @JsonKey(name: 'sound_publisher_id', fromJson: _dynamicToString)
            String? soundPublisherId,
            @JsonKey(name: 'sound_source', fromJson: _dynamicToString)
            String? soundSource,
            @JsonKey(name: 'sound_source_url', fromJson: _dynamicToString)
            String? soundSourceUrl,
            @JsonKey(name: 'sound_youtube_id', fromJson: _dynamicToString)
            String? soundYoutubeId,
            @JsonKey(name: 'sound_file', fromJson: _dynamicToString)
            String? soundFile,
            @JsonKey(name: 'sound_user_add_hint_nsup', fromJson: _stringToBool)
            bool? soundUserAddHintNsup,
            @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
            String? soundFileUrl,
            SoundDetailCategory? category,
            List<dynamic>? captions,
            List<dynamic>? votes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundDetailData() when $default != null:
        return $default(
            _that.soundId,
            _that.soundCatId,
            _that.soundTitle,
            _that.soundTs,
            _that.soundSummary,
            _that.soundDes,
            _that.soundPic,
            _that.soundPicPos,
            _that.soundVisitor,
            _that.soundIsNew,
            _that.soundPriority,
            _that.soundActiveVote,
            _that.soundActiveHint,
            _that.soundActive,
            _that.soundDate,
            _that.soundPicActive,
            _that.soundLastSound,
            _that.soundPublisherId,
            _that.soundSource,
            _that.soundSourceUrl,
            _that.soundYoutubeId,
            _that.soundFile,
            _that.soundUserAddHintNsup,
            _that.soundFileUrl,
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
            @JsonKey(name: 'sound_id', fromJson: _stringToInt) int? soundId,
            @JsonKey(name: 'sound_cat_id', fromJson: _dynamicToString)
            String? soundCatId,
            @JsonKey(name: 'sound_title', fromJson: _dynamicToString)
            String? soundTitle,
            @JsonKey(fromJson: _dynamicToString) String? soundTs,
            @JsonKey(name: 'sound_summary', fromJson: _dynamicToString)
            String? soundSummary,
            @JsonKey(name: 'sound_des', fromJson: _dynamicToString)
            String? soundDes,
            @JsonKey(name: 'sound_pic', fromJson: _dynamicToString)
            String? soundPic,
            @JsonKey(name: 'sound_pic_pos', fromJson: _dynamicToString)
            String? soundPicPos,
            @JsonKey(name: 'sound_visitor', fromJson: _stringToInt)
            int? soundVisitor,
            @JsonKey(name: 'sound_is_new', fromJson: _stringToBool)
            bool? soundIsNew,
            @JsonKey(name: 'sound_priority', fromJson: _dynamicToString)
            String? soundPriority,
            @JsonKey(name: 'sound_active_vote', fromJson: _stringToBool)
            bool? soundActiveVote,
            @JsonKey(name: 'sound_active_hint', fromJson: _stringToBool)
            bool? soundActiveHint,
            @JsonKey(name: 'sound_active', fromJson: _stringToBool)
            bool? soundActive,
            @JsonKey(name: 'sound_date', fromJson: _dynamicToString)
            String? soundDate,
            @JsonKey(name: 'sound_pic_active', fromJson: _stringToBool)
            bool? soundPicActive,
            @JsonKey(name: 'sound_last_sound', fromJson: _stringToBool)
            bool? soundLastSound,
            @JsonKey(name: 'sound_publisher_id', fromJson: _dynamicToString)
            String? soundPublisherId,
            @JsonKey(name: 'sound_source', fromJson: _dynamicToString)
            String? soundSource,
            @JsonKey(name: 'sound_source_url', fromJson: _dynamicToString)
            String? soundSourceUrl,
            @JsonKey(name: 'sound_youtube_id', fromJson: _dynamicToString)
            String? soundYoutubeId,
            @JsonKey(name: 'sound_file', fromJson: _dynamicToString)
            String? soundFile,
            @JsonKey(name: 'sound_user_add_hint_nsup', fromJson: _stringToBool)
            bool? soundUserAddHintNsup,
            @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
            String? soundFileUrl,
            SoundDetailCategory? category,
            List<dynamic>? captions,
            List<dynamic>? votes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailData():
        return $default(
            _that.soundId,
            _that.soundCatId,
            _that.soundTitle,
            _that.soundTs,
            _that.soundSummary,
            _that.soundDes,
            _that.soundPic,
            _that.soundPicPos,
            _that.soundVisitor,
            _that.soundIsNew,
            _that.soundPriority,
            _that.soundActiveVote,
            _that.soundActiveHint,
            _that.soundActive,
            _that.soundDate,
            _that.soundPicActive,
            _that.soundLastSound,
            _that.soundPublisherId,
            _that.soundSource,
            _that.soundSourceUrl,
            _that.soundYoutubeId,
            _that.soundFile,
            _that.soundUserAddHintNsup,
            _that.soundFileUrl,
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
            @JsonKey(name: 'sound_id', fromJson: _stringToInt) int? soundId,
            @JsonKey(name: 'sound_cat_id', fromJson: _dynamicToString)
            String? soundCatId,
            @JsonKey(name: 'sound_title', fromJson: _dynamicToString)
            String? soundTitle,
            @JsonKey(fromJson: _dynamicToString) String? soundTs,
            @JsonKey(name: 'sound_summary', fromJson: _dynamicToString)
            String? soundSummary,
            @JsonKey(name: 'sound_des', fromJson: _dynamicToString)
            String? soundDes,
            @JsonKey(name: 'sound_pic', fromJson: _dynamicToString)
            String? soundPic,
            @JsonKey(name: 'sound_pic_pos', fromJson: _dynamicToString)
            String? soundPicPos,
            @JsonKey(name: 'sound_visitor', fromJson: _stringToInt)
            int? soundVisitor,
            @JsonKey(name: 'sound_is_new', fromJson: _stringToBool)
            bool? soundIsNew,
            @JsonKey(name: 'sound_priority', fromJson: _dynamicToString)
            String? soundPriority,
            @JsonKey(name: 'sound_active_vote', fromJson: _stringToBool)
            bool? soundActiveVote,
            @JsonKey(name: 'sound_active_hint', fromJson: _stringToBool)
            bool? soundActiveHint,
            @JsonKey(name: 'sound_active', fromJson: _stringToBool)
            bool? soundActive,
            @JsonKey(name: 'sound_date', fromJson: _dynamicToString)
            String? soundDate,
            @JsonKey(name: 'sound_pic_active', fromJson: _stringToBool)
            bool? soundPicActive,
            @JsonKey(name: 'sound_last_sound', fromJson: _stringToBool)
            bool? soundLastSound,
            @JsonKey(name: 'sound_publisher_id', fromJson: _dynamicToString)
            String? soundPublisherId,
            @JsonKey(name: 'sound_source', fromJson: _dynamicToString)
            String? soundSource,
            @JsonKey(name: 'sound_source_url', fromJson: _dynamicToString)
            String? soundSourceUrl,
            @JsonKey(name: 'sound_youtube_id', fromJson: _dynamicToString)
            String? soundYoutubeId,
            @JsonKey(name: 'sound_file', fromJson: _dynamicToString)
            String? soundFile,
            @JsonKey(name: 'sound_user_add_hint_nsup', fromJson: _stringToBool)
            bool? soundUserAddHintNsup,
            @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
            String? soundFileUrl,
            SoundDetailCategory? category,
            List<dynamic>? captions,
            List<dynamic>? votes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailData() when $default != null:
        return $default(
            _that.soundId,
            _that.soundCatId,
            _that.soundTitle,
            _that.soundTs,
            _that.soundSummary,
            _that.soundDes,
            _that.soundPic,
            _that.soundPicPos,
            _that.soundVisitor,
            _that.soundIsNew,
            _that.soundPriority,
            _that.soundActiveVote,
            _that.soundActiveHint,
            _that.soundActive,
            _that.soundDate,
            _that.soundPicActive,
            _that.soundLastSound,
            _that.soundPublisherId,
            _that.soundSource,
            _that.soundSourceUrl,
            _that.soundYoutubeId,
            _that.soundFile,
            _that.soundUserAddHintNsup,
            _that.soundFileUrl,
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
class _SoundDetailData implements SoundDetailData {
  const _SoundDetailData(
      {@JsonKey(name: 'sound_id', fromJson: _stringToInt) this.soundId,
      @JsonKey(name: 'sound_cat_id', fromJson: _dynamicToString)
      this.soundCatId,
      @JsonKey(name: 'sound_title', fromJson: _dynamicToString) this.soundTitle,
      @JsonKey(fromJson: _dynamicToString) this.soundTs,
      @JsonKey(name: 'sound_summary', fromJson: _dynamicToString)
      this.soundSummary,
      @JsonKey(name: 'sound_des', fromJson: _dynamicToString) this.soundDes,
      @JsonKey(name: 'sound_pic', fromJson: _dynamicToString) this.soundPic,
      @JsonKey(name: 'sound_pic_pos', fromJson: _dynamicToString)
      this.soundPicPos,
      @JsonKey(name: 'sound_visitor', fromJson: _stringToInt) this.soundVisitor,
      @JsonKey(name: 'sound_is_new', fromJson: _stringToBool) this.soundIsNew,
      @JsonKey(name: 'sound_priority', fromJson: _dynamicToString)
      this.soundPriority,
      @JsonKey(name: 'sound_active_vote', fromJson: _stringToBool)
      this.soundActiveVote,
      @JsonKey(name: 'sound_active_hint', fromJson: _stringToBool)
      this.soundActiveHint,
      @JsonKey(name: 'sound_active', fromJson: _stringToBool) this.soundActive,
      @JsonKey(name: 'sound_date', fromJson: _dynamicToString) this.soundDate,
      @JsonKey(name: 'sound_pic_active', fromJson: _stringToBool)
      this.soundPicActive,
      @JsonKey(name: 'sound_last_sound', fromJson: _stringToBool)
      this.soundLastSound,
      @JsonKey(name: 'sound_publisher_id', fromJson: _dynamicToString)
      this.soundPublisherId,
      @JsonKey(name: 'sound_source', fromJson: _dynamicToString)
      this.soundSource,
      @JsonKey(name: 'sound_source_url', fromJson: _dynamicToString)
      this.soundSourceUrl,
      @JsonKey(name: 'sound_youtube_id', fromJson: _dynamicToString)
      this.soundYoutubeId,
      @JsonKey(name: 'sound_file', fromJson: _dynamicToString) this.soundFile,
      @JsonKey(name: 'sound_user_add_hint_nsup', fromJson: _stringToBool)
      this.soundUserAddHintNsup,
      @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
      this.soundFileUrl,
      this.category,
      final List<dynamic>? captions,
      final List<dynamic>? votes})
      : _captions = captions,
        _votes = votes;
  factory _SoundDetailData.fromJson(Map<String, dynamic> json) =>
      _$SoundDetailDataFromJson(json);

  @override
  @JsonKey(name: 'sound_id', fromJson: _stringToInt)
  final int? soundId;
  @override
  @JsonKey(name: 'sound_cat_id', fromJson: _dynamicToString)
  final String? soundCatId;
  @override
  @JsonKey(name: 'sound_title', fromJson: _dynamicToString)
  final String? soundTitle;
  @override
  @JsonKey(fromJson: _dynamicToString)
  final String? soundTs;
  @override
  @JsonKey(name: 'sound_summary', fromJson: _dynamicToString)
  final String? soundSummary;
  @override
  @JsonKey(name: 'sound_des', fromJson: _dynamicToString)
  final String? soundDes;
  @override
  @JsonKey(name: 'sound_pic', fromJson: _dynamicToString)
  final String? soundPic;
  @override
  @JsonKey(name: 'sound_pic_pos', fromJson: _dynamicToString)
  final String? soundPicPos;
  @override
  @JsonKey(name: 'sound_visitor', fromJson: _stringToInt)
  final int? soundVisitor;
  @override
  @JsonKey(name: 'sound_is_new', fromJson: _stringToBool)
  final bool? soundIsNew;
  @override
  @JsonKey(name: 'sound_priority', fromJson: _dynamicToString)
  final String? soundPriority;
  @override
  @JsonKey(name: 'sound_active_vote', fromJson: _stringToBool)
  final bool? soundActiveVote;
  @override
  @JsonKey(name: 'sound_active_hint', fromJson: _stringToBool)
  final bool? soundActiveHint;
  @override
  @JsonKey(name: 'sound_active', fromJson: _stringToBool)
  final bool? soundActive;
  @override
  @JsonKey(name: 'sound_date', fromJson: _dynamicToString)
  final String? soundDate;
  @override
  @JsonKey(name: 'sound_pic_active', fromJson: _stringToBool)
  final bool? soundPicActive;
  @override
  @JsonKey(name: 'sound_last_sound', fromJson: _stringToBool)
  final bool? soundLastSound;
  @override
  @JsonKey(name: 'sound_publisher_id', fromJson: _dynamicToString)
  final String? soundPublisherId;
  @override
  @JsonKey(name: 'sound_source', fromJson: _dynamicToString)
  final String? soundSource;
  @override
  @JsonKey(name: 'sound_source_url', fromJson: _dynamicToString)
  final String? soundSourceUrl;
  @override
  @JsonKey(name: 'sound_youtube_id', fromJson: _dynamicToString)
  final String? soundYoutubeId;
  @override
  @JsonKey(name: 'sound_file', fromJson: _dynamicToString)
  final String? soundFile;
  @override
  @JsonKey(name: 'sound_user_add_hint_nsup', fromJson: _stringToBool)
  final bool? soundUserAddHintNsup;
  @override
  @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
  final String? soundFileUrl;
  @override
  final SoundDetailCategory? category;
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

  /// Create a copy of SoundDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SoundDetailDataCopyWith<_SoundDetailData> get copyWith =>
      __$SoundDetailDataCopyWithImpl<_SoundDetailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SoundDetailDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoundDetailData &&
            (identical(other.soundId, soundId) || other.soundId == soundId) &&
            (identical(other.soundCatId, soundCatId) ||
                other.soundCatId == soundCatId) &&
            (identical(other.soundTitle, soundTitle) ||
                other.soundTitle == soundTitle) &&
            (identical(other.soundTs, soundTs) || other.soundTs == soundTs) &&
            (identical(other.soundSummary, soundSummary) ||
                other.soundSummary == soundSummary) &&
            (identical(other.soundDes, soundDes) ||
                other.soundDes == soundDes) &&
            (identical(other.soundPic, soundPic) ||
                other.soundPic == soundPic) &&
            (identical(other.soundPicPos, soundPicPos) ||
                other.soundPicPos == soundPicPos) &&
            (identical(other.soundVisitor, soundVisitor) ||
                other.soundVisitor == soundVisitor) &&
            (identical(other.soundIsNew, soundIsNew) ||
                other.soundIsNew == soundIsNew) &&
            (identical(other.soundPriority, soundPriority) ||
                other.soundPriority == soundPriority) &&
            (identical(other.soundActiveVote, soundActiveVote) ||
                other.soundActiveVote == soundActiveVote) &&
            (identical(other.soundActiveHint, soundActiveHint) ||
                other.soundActiveHint == soundActiveHint) &&
            (identical(other.soundActive, soundActive) ||
                other.soundActive == soundActive) &&
            (identical(other.soundDate, soundDate) ||
                other.soundDate == soundDate) &&
            (identical(other.soundPicActive, soundPicActive) ||
                other.soundPicActive == soundPicActive) &&
            (identical(other.soundLastSound, soundLastSound) ||
                other.soundLastSound == soundLastSound) &&
            (identical(other.soundPublisherId, soundPublisherId) ||
                other.soundPublisherId == soundPublisherId) &&
            (identical(other.soundSource, soundSource) ||
                other.soundSource == soundSource) &&
            (identical(other.soundSourceUrl, soundSourceUrl) ||
                other.soundSourceUrl == soundSourceUrl) &&
            (identical(other.soundYoutubeId, soundYoutubeId) ||
                other.soundYoutubeId == soundYoutubeId) &&
            (identical(other.soundFile, soundFile) ||
                other.soundFile == soundFile) &&
            (identical(other.soundUserAddHintNsup, soundUserAddHintNsup) ||
                other.soundUserAddHintNsup == soundUserAddHintNsup) &&
            (identical(other.soundFileUrl, soundFileUrl) ||
                other.soundFileUrl == soundFileUrl) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._captions, _captions) &&
            const DeepCollectionEquality().equals(other._votes, _votes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        soundId,
        soundCatId,
        soundTitle,
        soundTs,
        soundSummary,
        soundDes,
        soundPic,
        soundPicPos,
        soundVisitor,
        soundIsNew,
        soundPriority,
        soundActiveVote,
        soundActiveHint,
        soundActive,
        soundDate,
        soundPicActive,
        soundLastSound,
        soundPublisherId,
        soundSource,
        soundSourceUrl,
        soundYoutubeId,
        soundFile,
        soundUserAddHintNsup,
        soundFileUrl,
        category,
        const DeepCollectionEquality().hash(_captions),
        const DeepCollectionEquality().hash(_votes)
      ]);

  @override
  String toString() {
    return 'SoundDetailData(soundId: $soundId, soundCatId: $soundCatId, soundTitle: $soundTitle, soundTs: $soundTs, soundSummary: $soundSummary, soundDes: $soundDes, soundPic: $soundPic, soundPicPos: $soundPicPos, soundVisitor: $soundVisitor, soundIsNew: $soundIsNew, soundPriority: $soundPriority, soundActiveVote: $soundActiveVote, soundActiveHint: $soundActiveHint, soundActive: $soundActive, soundDate: $soundDate, soundPicActive: $soundPicActive, soundLastSound: $soundLastSound, soundPublisherId: $soundPublisherId, soundSource: $soundSource, soundSourceUrl: $soundSourceUrl, soundYoutubeId: $soundYoutubeId, soundFile: $soundFile, soundUserAddHintNsup: $soundUserAddHintNsup, soundFileUrl: $soundFileUrl, category: $category, captions: $captions, votes: $votes)';
  }
}

/// @nodoc
abstract mixin class _$SoundDetailDataCopyWith<$Res>
    implements $SoundDetailDataCopyWith<$Res> {
  factory _$SoundDetailDataCopyWith(
          _SoundDetailData value, $Res Function(_SoundDetailData) _then) =
      __$SoundDetailDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sound_id', fromJson: _stringToInt) int? soundId,
      @JsonKey(name: 'sound_cat_id', fromJson: _dynamicToString)
      String? soundCatId,
      @JsonKey(name: 'sound_title', fromJson: _dynamicToString)
      String? soundTitle,
      @JsonKey(fromJson: _dynamicToString) String? soundTs,
      @JsonKey(name: 'sound_summary', fromJson: _dynamicToString)
      String? soundSummary,
      @JsonKey(name: 'sound_des', fromJson: _dynamicToString) String? soundDes,
      @JsonKey(name: 'sound_pic', fromJson: _dynamicToString) String? soundPic,
      @JsonKey(name: 'sound_pic_pos', fromJson: _dynamicToString)
      String? soundPicPos,
      @JsonKey(name: 'sound_visitor', fromJson: _stringToInt) int? soundVisitor,
      @JsonKey(name: 'sound_is_new', fromJson: _stringToBool) bool? soundIsNew,
      @JsonKey(name: 'sound_priority', fromJson: _dynamicToString)
      String? soundPriority,
      @JsonKey(name: 'sound_active_vote', fromJson: _stringToBool)
      bool? soundActiveVote,
      @JsonKey(name: 'sound_active_hint', fromJson: _stringToBool)
      bool? soundActiveHint,
      @JsonKey(name: 'sound_active', fromJson: _stringToBool) bool? soundActive,
      @JsonKey(name: 'sound_date', fromJson: _dynamicToString)
      String? soundDate,
      @JsonKey(name: 'sound_pic_active', fromJson: _stringToBool)
      bool? soundPicActive,
      @JsonKey(name: 'sound_last_sound', fromJson: _stringToBool)
      bool? soundLastSound,
      @JsonKey(name: 'sound_publisher_id', fromJson: _dynamicToString)
      String? soundPublisherId,
      @JsonKey(name: 'sound_source', fromJson: _dynamicToString)
      String? soundSource,
      @JsonKey(name: 'sound_source_url', fromJson: _dynamicToString)
      String? soundSourceUrl,
      @JsonKey(name: 'sound_youtube_id', fromJson: _dynamicToString)
      String? soundYoutubeId,
      @JsonKey(name: 'sound_file', fromJson: _dynamicToString)
      String? soundFile,
      @JsonKey(name: 'sound_user_add_hint_nsup', fromJson: _stringToBool)
      bool? soundUserAddHintNsup,
      @JsonKey(name: 'sound_file_url', fromJson: _dynamicToString)
      String? soundFileUrl,
      SoundDetailCategory? category,
      List<dynamic>? captions,
      List<dynamic>? votes});

  @override
  $SoundDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$SoundDetailDataCopyWithImpl<$Res>
    implements _$SoundDetailDataCopyWith<$Res> {
  __$SoundDetailDataCopyWithImpl(this._self, this._then);

  final _SoundDetailData _self;
  final $Res Function(_SoundDetailData) _then;

  /// Create a copy of SoundDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? soundId = freezed,
    Object? soundCatId = freezed,
    Object? soundTitle = freezed,
    Object? soundTs = freezed,
    Object? soundSummary = freezed,
    Object? soundDes = freezed,
    Object? soundPic = freezed,
    Object? soundPicPos = freezed,
    Object? soundVisitor = freezed,
    Object? soundIsNew = freezed,
    Object? soundPriority = freezed,
    Object? soundActiveVote = freezed,
    Object? soundActiveHint = freezed,
    Object? soundActive = freezed,
    Object? soundDate = freezed,
    Object? soundPicActive = freezed,
    Object? soundLastSound = freezed,
    Object? soundPublisherId = freezed,
    Object? soundSource = freezed,
    Object? soundSourceUrl = freezed,
    Object? soundYoutubeId = freezed,
    Object? soundFile = freezed,
    Object? soundUserAddHintNsup = freezed,
    Object? soundFileUrl = freezed,
    Object? category = freezed,
    Object? captions = freezed,
    Object? votes = freezed,
  }) {
    return _then(_SoundDetailData(
      soundId: freezed == soundId
          ? _self.soundId
          : soundId // ignore: cast_nullable_to_non_nullable
              as int?,
      soundCatId: freezed == soundCatId
          ? _self.soundCatId
          : soundCatId // ignore: cast_nullable_to_non_nullable
              as String?,
      soundTitle: freezed == soundTitle
          ? _self.soundTitle
          : soundTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      soundTs: freezed == soundTs
          ? _self.soundTs
          : soundTs // ignore: cast_nullable_to_non_nullable
              as String?,
      soundSummary: freezed == soundSummary
          ? _self.soundSummary
          : soundSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      soundDes: freezed == soundDes
          ? _self.soundDes
          : soundDes // ignore: cast_nullable_to_non_nullable
              as String?,
      soundPic: freezed == soundPic
          ? _self.soundPic
          : soundPic // ignore: cast_nullable_to_non_nullable
              as String?,
      soundPicPos: freezed == soundPicPos
          ? _self.soundPicPos
          : soundPicPos // ignore: cast_nullable_to_non_nullable
              as String?,
      soundVisitor: freezed == soundVisitor
          ? _self.soundVisitor
          : soundVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      soundIsNew: freezed == soundIsNew
          ? _self.soundIsNew
          : soundIsNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundPriority: freezed == soundPriority
          ? _self.soundPriority
          : soundPriority // ignore: cast_nullable_to_non_nullable
              as String?,
      soundActiveVote: freezed == soundActiveVote
          ? _self.soundActiveVote
          : soundActiveVote // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundActiveHint: freezed == soundActiveHint
          ? _self.soundActiveHint
          : soundActiveHint // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundActive: freezed == soundActive
          ? _self.soundActive
          : soundActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundDate: freezed == soundDate
          ? _self.soundDate
          : soundDate // ignore: cast_nullable_to_non_nullable
              as String?,
      soundPicActive: freezed == soundPicActive
          ? _self.soundPicActive
          : soundPicActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundLastSound: freezed == soundLastSound
          ? _self.soundLastSound
          : soundLastSound // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundPublisherId: freezed == soundPublisherId
          ? _self.soundPublisherId
          : soundPublisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      soundSource: freezed == soundSource
          ? _self.soundSource
          : soundSource // ignore: cast_nullable_to_non_nullable
              as String?,
      soundSourceUrl: freezed == soundSourceUrl
          ? _self.soundSourceUrl
          : soundSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      soundYoutubeId: freezed == soundYoutubeId
          ? _self.soundYoutubeId
          : soundYoutubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      soundFile: freezed == soundFile
          ? _self.soundFile
          : soundFile // ignore: cast_nullable_to_non_nullable
              as String?,
      soundUserAddHintNsup: freezed == soundUserAddHintNsup
          ? _self.soundUserAddHintNsup
          : soundUserAddHintNsup // ignore: cast_nullable_to_non_nullable
              as bool?,
      soundFileUrl: freezed == soundFileUrl
          ? _self.soundFileUrl
          : soundFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as SoundDetailCategory?,
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

  /// Create a copy of SoundDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoundDetailCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $SoundDetailCategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// @nodoc
mixin _$SoundDetailCategory {
  @JsonKey(name: 'cat_id', fromJson: _stringToInt)
  int? get catId;
  @JsonKey(name: 'cat_father_id', fromJson: _dynamicToString)
  String? get catFatherId;
  @JsonKey(name: 'cat_menus', fromJson: _dynamicToString)
  String? get catMenus;
  @JsonKey(name: 'cat_title', fromJson: _dynamicToString)
  String? get catTitle;
  @JsonKey(name: 'cat_note', fromJson: _dynamicToString)
  String? get catNote;
  @JsonKey(name: 'cat_pic', fromJson: _dynamicToString)
  String? get catPic;
  @JsonKey(name: 'cat_sup', fromJson: _dynamicToString)
  String? get catSup;
  @JsonKey(name: 'cat_date', fromJson: _dynamicToString)
  String? get catDate;
  @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
  bool? get catPicActive;
  @JsonKey(name: 'cat_lan', fromJson: _dynamicToString)
  String? get catLan;
  @JsonKey(name: 'cat_pos', fromJson: _dynamicToString)
  String? get catPos;
  @JsonKey(name: 'cat_active', fromJson: _stringToBool)
  bool? get catActive;
  @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
  bool? get catShowMenu;
  @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
  bool? get catShowMain;
  @JsonKey(name: 'cat_agent', fromJson: _dynamicToString)
  String? get catAgent;

  /// Create a copy of SoundDetailCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SoundDetailCategoryCopyWith<SoundDetailCategory> get copyWith =>
      _$SoundDetailCategoryCopyWithImpl<SoundDetailCategory>(
          this as SoundDetailCategory, _$identity);

  /// Serializes this SoundDetailCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SoundDetailCategory &&
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
    return 'SoundDetailCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
  }
}

/// @nodoc
abstract mixin class $SoundDetailCategoryCopyWith<$Res> {
  factory $SoundDetailCategoryCopyWith(
          SoundDetailCategory value, $Res Function(SoundDetailCategory) _then) =
      _$SoundDetailCategoryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
      @JsonKey(name: 'cat_father_id', fromJson: _dynamicToString)
      String? catFatherId,
      @JsonKey(name: 'cat_menus', fromJson: _dynamicToString) String? catMenus,
      @JsonKey(name: 'cat_title', fromJson: _dynamicToString) String? catTitle,
      @JsonKey(name: 'cat_note', fromJson: _dynamicToString) String? catNote,
      @JsonKey(name: 'cat_pic', fromJson: _dynamicToString) String? catPic,
      @JsonKey(name: 'cat_sup', fromJson: _dynamicToString) String? catSup,
      @JsonKey(name: 'cat_date', fromJson: _dynamicToString) String? catDate,
      @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
      bool? catPicActive,
      @JsonKey(name: 'cat_lan', fromJson: _dynamicToString) String? catLan,
      @JsonKey(name: 'cat_pos', fromJson: _dynamicToString) String? catPos,
      @JsonKey(name: 'cat_active', fromJson: _stringToBool) bool? catActive,
      @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
      bool? catShowMenu,
      @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
      bool? catShowMain,
      @JsonKey(name: 'cat_agent', fromJson: _dynamicToString)
      String? catAgent});
}

/// @nodoc
class _$SoundDetailCategoryCopyWithImpl<$Res>
    implements $SoundDetailCategoryCopyWith<$Res> {
  _$SoundDetailCategoryCopyWithImpl(this._self, this._then);

  final SoundDetailCategory _self;
  final $Res Function(SoundDetailCategory) _then;

  /// Create a copy of SoundDetailCategory
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

/// Adds pattern-matching-related methods to [SoundDetailCategory].
extension SoundDetailCategoryPatterns on SoundDetailCategory {
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
    TResult Function(_SoundDetailCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundDetailCategory() when $default != null:
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
    TResult Function(_SoundDetailCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailCategory():
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
    TResult? Function(_SoundDetailCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailCategory() when $default != null:
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
            @JsonKey(name: 'cat_father_id', fromJson: _dynamicToString)
            String? catFatherId,
            @JsonKey(name: 'cat_menus', fromJson: _dynamicToString)
            String? catMenus,
            @JsonKey(name: 'cat_title', fromJson: _dynamicToString)
            String? catTitle,
            @JsonKey(name: 'cat_note', fromJson: _dynamicToString)
            String? catNote,
            @JsonKey(name: 'cat_pic', fromJson: _dynamicToString)
            String? catPic,
            @JsonKey(name: 'cat_sup', fromJson: _dynamicToString)
            String? catSup,
            @JsonKey(name: 'cat_date', fromJson: _dynamicToString)
            String? catDate,
            @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
            bool? catPicActive,
            @JsonKey(name: 'cat_lan', fromJson: _dynamicToString)
            String? catLan,
            @JsonKey(name: 'cat_pos', fromJson: _dynamicToString)
            String? catPos,
            @JsonKey(name: 'cat_active', fromJson: _stringToBool)
            bool? catActive,
            @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
            bool? catShowMenu,
            @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
            bool? catShowMain,
            @JsonKey(name: 'cat_agent', fromJson: _dynamicToString)
            String? catAgent)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SoundDetailCategory() when $default != null:
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
            @JsonKey(name: 'cat_father_id', fromJson: _dynamicToString)
            String? catFatherId,
            @JsonKey(name: 'cat_menus', fromJson: _dynamicToString)
            String? catMenus,
            @JsonKey(name: 'cat_title', fromJson: _dynamicToString)
            String? catTitle,
            @JsonKey(name: 'cat_note', fromJson: _dynamicToString)
            String? catNote,
            @JsonKey(name: 'cat_pic', fromJson: _dynamicToString)
            String? catPic,
            @JsonKey(name: 'cat_sup', fromJson: _dynamicToString)
            String? catSup,
            @JsonKey(name: 'cat_date', fromJson: _dynamicToString)
            String? catDate,
            @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
            bool? catPicActive,
            @JsonKey(name: 'cat_lan', fromJson: _dynamicToString)
            String? catLan,
            @JsonKey(name: 'cat_pos', fromJson: _dynamicToString)
            String? catPos,
            @JsonKey(name: 'cat_active', fromJson: _stringToBool)
            bool? catActive,
            @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
            bool? catShowMenu,
            @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
            bool? catShowMain,
            @JsonKey(name: 'cat_agent', fromJson: _dynamicToString)
            String? catAgent)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailCategory():
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
            @JsonKey(name: 'cat_father_id', fromJson: _dynamicToString)
            String? catFatherId,
            @JsonKey(name: 'cat_menus', fromJson: _dynamicToString)
            String? catMenus,
            @JsonKey(name: 'cat_title', fromJson: _dynamicToString)
            String? catTitle,
            @JsonKey(name: 'cat_note', fromJson: _dynamicToString)
            String? catNote,
            @JsonKey(name: 'cat_pic', fromJson: _dynamicToString)
            String? catPic,
            @JsonKey(name: 'cat_sup', fromJson: _dynamicToString)
            String? catSup,
            @JsonKey(name: 'cat_date', fromJson: _dynamicToString)
            String? catDate,
            @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
            bool? catPicActive,
            @JsonKey(name: 'cat_lan', fromJson: _dynamicToString)
            String? catLan,
            @JsonKey(name: 'cat_pos', fromJson: _dynamicToString)
            String? catPos,
            @JsonKey(name: 'cat_active', fromJson: _stringToBool)
            bool? catActive,
            @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
            bool? catShowMenu,
            @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
            bool? catShowMain,
            @JsonKey(name: 'cat_agent', fromJson: _dynamicToString)
            String? catAgent)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SoundDetailCategory() when $default != null:
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
class _SoundDetailCategory implements SoundDetailCategory {
  const _SoundDetailCategory(
      {@JsonKey(name: 'cat_id', fromJson: _stringToInt) this.catId,
      @JsonKey(name: 'cat_father_id', fromJson: _dynamicToString)
      this.catFatherId,
      @JsonKey(name: 'cat_menus', fromJson: _dynamicToString) this.catMenus,
      @JsonKey(name: 'cat_title', fromJson: _dynamicToString) this.catTitle,
      @JsonKey(name: 'cat_note', fromJson: _dynamicToString) this.catNote,
      @JsonKey(name: 'cat_pic', fromJson: _dynamicToString) this.catPic,
      @JsonKey(name: 'cat_sup', fromJson: _dynamicToString) this.catSup,
      @JsonKey(name: 'cat_date', fromJson: _dynamicToString) this.catDate,
      @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
      this.catPicActive,
      @JsonKey(name: 'cat_lan', fromJson: _dynamicToString) this.catLan,
      @JsonKey(name: 'cat_pos', fromJson: _dynamicToString) this.catPos,
      @JsonKey(name: 'cat_active', fromJson: _stringToBool) this.catActive,
      @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool) this.catShowMenu,
      @JsonKey(name: 'cat_show_main', fromJson: _stringToBool) this.catShowMain,
      @JsonKey(name: 'cat_agent', fromJson: _dynamicToString) this.catAgent});
  factory _SoundDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$SoundDetailCategoryFromJson(json);

  @override
  @JsonKey(name: 'cat_id', fromJson: _stringToInt)
  final int? catId;
  @override
  @JsonKey(name: 'cat_father_id', fromJson: _dynamicToString)
  final String? catFatherId;
  @override
  @JsonKey(name: 'cat_menus', fromJson: _dynamicToString)
  final String? catMenus;
  @override
  @JsonKey(name: 'cat_title', fromJson: _dynamicToString)
  final String? catTitle;
  @override
  @JsonKey(name: 'cat_note', fromJson: _dynamicToString)
  final String? catNote;
  @override
  @JsonKey(name: 'cat_pic', fromJson: _dynamicToString)
  final String? catPic;
  @override
  @JsonKey(name: 'cat_sup', fromJson: _dynamicToString)
  final String? catSup;
  @override
  @JsonKey(name: 'cat_date', fromJson: _dynamicToString)
  final String? catDate;
  @override
  @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
  final bool? catPicActive;
  @override
  @JsonKey(name: 'cat_lan', fromJson: _dynamicToString)
  final String? catLan;
  @override
  @JsonKey(name: 'cat_pos', fromJson: _dynamicToString)
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
  @JsonKey(name: 'cat_agent', fromJson: _dynamicToString)
  final String? catAgent;

  /// Create a copy of SoundDetailCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SoundDetailCategoryCopyWith<_SoundDetailCategory> get copyWith =>
      __$SoundDetailCategoryCopyWithImpl<_SoundDetailCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SoundDetailCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoundDetailCategory &&
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
    return 'SoundDetailCategory(catId: $catId, catFatherId: $catFatherId, catMenus: $catMenus, catTitle: $catTitle, catNote: $catNote, catPic: $catPic, catSup: $catSup, catDate: $catDate, catPicActive: $catPicActive, catLan: $catLan, catPos: $catPos, catActive: $catActive, catShowMenu: $catShowMenu, catShowMain: $catShowMain, catAgent: $catAgent)';
  }
}

/// @nodoc
abstract mixin class _$SoundDetailCategoryCopyWith<$Res>
    implements $SoundDetailCategoryCopyWith<$Res> {
  factory _$SoundDetailCategoryCopyWith(_SoundDetailCategory value,
          $Res Function(_SoundDetailCategory) _then) =
      __$SoundDetailCategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
      @JsonKey(name: 'cat_father_id', fromJson: _dynamicToString)
      String? catFatherId,
      @JsonKey(name: 'cat_menus', fromJson: _dynamicToString) String? catMenus,
      @JsonKey(name: 'cat_title', fromJson: _dynamicToString) String? catTitle,
      @JsonKey(name: 'cat_note', fromJson: _dynamicToString) String? catNote,
      @JsonKey(name: 'cat_pic', fromJson: _dynamicToString) String? catPic,
      @JsonKey(name: 'cat_sup', fromJson: _dynamicToString) String? catSup,
      @JsonKey(name: 'cat_date', fromJson: _dynamicToString) String? catDate,
      @JsonKey(name: 'cat_pic_active', fromJson: _stringToBool)
      bool? catPicActive,
      @JsonKey(name: 'cat_lan', fromJson: _dynamicToString) String? catLan,
      @JsonKey(name: 'cat_pos', fromJson: _dynamicToString) String? catPos,
      @JsonKey(name: 'cat_active', fromJson: _stringToBool) bool? catActive,
      @JsonKey(name: 'cat_show_menu', fromJson: _stringToBool)
      bool? catShowMenu,
      @JsonKey(name: 'cat_show_main', fromJson: _stringToBool)
      bool? catShowMain,
      @JsonKey(name: 'cat_agent', fromJson: _dynamicToString)
      String? catAgent});
}

/// @nodoc
class __$SoundDetailCategoryCopyWithImpl<$Res>
    implements _$SoundDetailCategoryCopyWith<$Res> {
  __$SoundDetailCategoryCopyWithImpl(this._self, this._then);

  final _SoundDetailCategory _self;
  final $Res Function(_SoundDetailCategory) _then;

  /// Create a copy of SoundDetailCategory
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
    return _then(_SoundDetailCategory(
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
