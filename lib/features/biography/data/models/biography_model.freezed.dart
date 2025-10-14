// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biography_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageModel {
  @JsonKey(name: 'pages_id', fromJson: _stringToInt)
  int? get pagesId;
  @JsonKey(name: 'pages_title')
  String? get pagesTitle;
  @JsonKey(name: 'pages_menus')
  String? get pagesMenus;
  @JsonKey(name: 'pages_priority', fromJson: _stringToInt)
  int? get pagesPriority;
  @JsonKey(name: 'pages_date')
  String? get pagesDate;

  /// Create a copy of PageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageModelCopyWith<PageModel> get copyWith =>
      _$PageModelCopyWithImpl<PageModel>(this as PageModel, _$identity);

  /// Serializes this PageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageModel &&
            (identical(other.pagesId, pagesId) || other.pagesId == pagesId) &&
            (identical(other.pagesTitle, pagesTitle) ||
                other.pagesTitle == pagesTitle) &&
            (identical(other.pagesMenus, pagesMenus) ||
                other.pagesMenus == pagesMenus) &&
            (identical(other.pagesPriority, pagesPriority) ||
                other.pagesPriority == pagesPriority) &&
            (identical(other.pagesDate, pagesDate) ||
                other.pagesDate == pagesDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, pagesId, pagesTitle, pagesMenus, pagesPriority, pagesDate);

  @override
  String toString() {
    return 'PageModel(pagesId: $pagesId, pagesTitle: $pagesTitle, pagesMenus: $pagesMenus, pagesPriority: $pagesPriority, pagesDate: $pagesDate)';
  }
}

/// @nodoc
abstract mixin class $PageModelCopyWith<$Res> {
  factory $PageModelCopyWith(PageModel value, $Res Function(PageModel) _then) =
      _$PageModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
      @JsonKey(name: 'pages_title') String? pagesTitle,
      @JsonKey(name: 'pages_menus') String? pagesMenus,
      @JsonKey(name: 'pages_priority', fromJson: _stringToInt)
      int? pagesPriority,
      @JsonKey(name: 'pages_date') String? pagesDate});
}

/// @nodoc
class _$PageModelCopyWithImpl<$Res> implements $PageModelCopyWith<$Res> {
  _$PageModelCopyWithImpl(this._self, this._then);

  final PageModel _self;
  final $Res Function(PageModel) _then;

  /// Create a copy of PageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagesId = freezed,
    Object? pagesTitle = freezed,
    Object? pagesMenus = freezed,
    Object? pagesPriority = freezed,
    Object? pagesDate = freezed,
  }) {
    return _then(_self.copyWith(
      pagesId: freezed == pagesId
          ? _self.pagesId
          : pagesId // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesTitle: freezed == pagesTitle
          ? _self.pagesTitle
          : pagesTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesMenus: freezed == pagesMenus
          ? _self.pagesMenus
          : pagesMenus // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesPriority: freezed == pagesPriority
          ? _self.pagesPriority
          : pagesPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesDate: freezed == pagesDate
          ? _self.pagesDate
          : pagesDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PageModel].
extension PageModelPatterns on PageModel {
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
    TResult Function(_PageModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageModel() when $default != null:
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
    TResult Function(_PageModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageModel():
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
    TResult? Function(_PageModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageModel() when $default != null:
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
            @JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
            @JsonKey(name: 'pages_title') String? pagesTitle,
            @JsonKey(name: 'pages_menus') String? pagesMenus,
            @JsonKey(name: 'pages_priority', fromJson: _stringToInt)
            int? pagesPriority,
            @JsonKey(name: 'pages_date') String? pagesDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageModel() when $default != null:
        return $default(_that.pagesId, _that.pagesTitle, _that.pagesMenus,
            _that.pagesPriority, _that.pagesDate);
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
            @JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
            @JsonKey(name: 'pages_title') String? pagesTitle,
            @JsonKey(name: 'pages_menus') String? pagesMenus,
            @JsonKey(name: 'pages_priority', fromJson: _stringToInt)
            int? pagesPriority,
            @JsonKey(name: 'pages_date') String? pagesDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageModel():
        return $default(_that.pagesId, _that.pagesTitle, _that.pagesMenus,
            _that.pagesPriority, _that.pagesDate);
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
            @JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
            @JsonKey(name: 'pages_title') String? pagesTitle,
            @JsonKey(name: 'pages_menus') String? pagesMenus,
            @JsonKey(name: 'pages_priority', fromJson: _stringToInt)
            int? pagesPriority,
            @JsonKey(name: 'pages_date') String? pagesDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageModel() when $default != null:
        return $default(_that.pagesId, _that.pagesTitle, _that.pagesMenus,
            _that.pagesPriority, _that.pagesDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PageModel implements PageModel {
  const _PageModel(
      {@JsonKey(name: 'pages_id', fromJson: _stringToInt) this.pagesId,
      @JsonKey(name: 'pages_title') this.pagesTitle,
      @JsonKey(name: 'pages_menus') this.pagesMenus,
      @JsonKey(name: 'pages_priority', fromJson: _stringToInt)
      this.pagesPriority,
      @JsonKey(name: 'pages_date') this.pagesDate});
  factory _PageModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelFromJson(json);

  @override
  @JsonKey(name: 'pages_id', fromJson: _stringToInt)
  final int? pagesId;
  @override
  @JsonKey(name: 'pages_title')
  final String? pagesTitle;
  @override
  @JsonKey(name: 'pages_menus')
  final String? pagesMenus;
  @override
  @JsonKey(name: 'pages_priority', fromJson: _stringToInt)
  final int? pagesPriority;
  @override
  @JsonKey(name: 'pages_date')
  final String? pagesDate;

  /// Create a copy of PageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageModelCopyWith<_PageModel> get copyWith =>
      __$PageModelCopyWithImpl<_PageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageModel &&
            (identical(other.pagesId, pagesId) || other.pagesId == pagesId) &&
            (identical(other.pagesTitle, pagesTitle) ||
                other.pagesTitle == pagesTitle) &&
            (identical(other.pagesMenus, pagesMenus) ||
                other.pagesMenus == pagesMenus) &&
            (identical(other.pagesPriority, pagesPriority) ||
                other.pagesPriority == pagesPriority) &&
            (identical(other.pagesDate, pagesDate) ||
                other.pagesDate == pagesDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, pagesId, pagesTitle, pagesMenus, pagesPriority, pagesDate);

  @override
  String toString() {
    return 'PageModel(pagesId: $pagesId, pagesTitle: $pagesTitle, pagesMenus: $pagesMenus, pagesPriority: $pagesPriority, pagesDate: $pagesDate)';
  }
}

/// @nodoc
abstract mixin class _$PageModelCopyWith<$Res>
    implements $PageModelCopyWith<$Res> {
  factory _$PageModelCopyWith(
          _PageModel value, $Res Function(_PageModel) _then) =
      __$PageModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
      @JsonKey(name: 'pages_title') String? pagesTitle,
      @JsonKey(name: 'pages_menus') String? pagesMenus,
      @JsonKey(name: 'pages_priority', fromJson: _stringToInt)
      int? pagesPriority,
      @JsonKey(name: 'pages_date') String? pagesDate});
}

/// @nodoc
class __$PageModelCopyWithImpl<$Res> implements _$PageModelCopyWith<$Res> {
  __$PageModelCopyWithImpl(this._self, this._then);

  final _PageModel _self;
  final $Res Function(_PageModel) _then;

  /// Create a copy of PageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pagesId = freezed,
    Object? pagesTitle = freezed,
    Object? pagesMenus = freezed,
    Object? pagesPriority = freezed,
    Object? pagesDate = freezed,
  }) {
    return _then(_PageModel(
      pagesId: freezed == pagesId
          ? _self.pagesId
          : pagesId // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesTitle: freezed == pagesTitle
          ? _self.pagesTitle
          : pagesTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesMenus: freezed == pagesMenus
          ? _self.pagesMenus
          : pagesMenus // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesPriority: freezed == pagesPriority
          ? _self.pagesPriority
          : pagesPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesDate: freezed == pagesDate
          ? _self.pagesDate
          : pagesDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PaginationData {
  @JsonKey(name: 'current_page')
  int? get currentPage;
  List<PageModel>? get data;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  int? get from;
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  String? get path;
  @JsonKey(name: 'per_page')
  int? get perPage;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  int? get to;
  int? get total;

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
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @override
  String toString() {
    return 'PaginationData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }
}

/// @nodoc
abstract mixin class $PaginationDataCopyWith<$Res> {
  factory $PaginationDataCopyWith(
          PaginationData value, $Res Function(PaginationData) _then) =
      _$PaginationDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<PageModel>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
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
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_self.copyWith(
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PageModel>?,
      firstPageUrl: freezed == firstPageUrl
          ? _self.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _self.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _self.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageUrl: freezed == nextPageUrl
          ? _self.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _self.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
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
            @JsonKey(name: 'current_page') int? currentPage,
            List<PageModel>? data,
            @JsonKey(name: 'first_page_url') String? firstPageUrl,
            int? from,
            @JsonKey(name: 'last_page') int? lastPage,
            @JsonKey(name: 'last_page_url') String? lastPageUrl,
            @JsonKey(name: 'next_page_url') String? nextPageUrl,
            String? path,
            @JsonKey(name: 'per_page') int? perPage,
            @JsonKey(name: 'prev_page_url') String? prevPageUrl,
            int? to,
            int? total)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginationData() when $default != null:
        return $default(
            _that.currentPage,
            _that.data,
            _that.firstPageUrl,
            _that.from,
            _that.lastPage,
            _that.lastPageUrl,
            _that.nextPageUrl,
            _that.path,
            _that.perPage,
            _that.prevPageUrl,
            _that.to,
            _that.total);
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
            @JsonKey(name: 'current_page') int? currentPage,
            List<PageModel>? data,
            @JsonKey(name: 'first_page_url') String? firstPageUrl,
            int? from,
            @JsonKey(name: 'last_page') int? lastPage,
            @JsonKey(name: 'last_page_url') String? lastPageUrl,
            @JsonKey(name: 'next_page_url') String? nextPageUrl,
            String? path,
            @JsonKey(name: 'per_page') int? perPage,
            @JsonKey(name: 'prev_page_url') String? prevPageUrl,
            int? to,
            int? total)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationData():
        return $default(
            _that.currentPage,
            _that.data,
            _that.firstPageUrl,
            _that.from,
            _that.lastPage,
            _that.lastPageUrl,
            _that.nextPageUrl,
            _that.path,
            _that.perPage,
            _that.prevPageUrl,
            _that.to,
            _that.total);
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
            @JsonKey(name: 'current_page') int? currentPage,
            List<PageModel>? data,
            @JsonKey(name: 'first_page_url') String? firstPageUrl,
            int? from,
            @JsonKey(name: 'last_page') int? lastPage,
            @JsonKey(name: 'last_page_url') String? lastPageUrl,
            @JsonKey(name: 'next_page_url') String? nextPageUrl,
            String? path,
            @JsonKey(name: 'per_page') int? perPage,
            @JsonKey(name: 'prev_page_url') String? prevPageUrl,
            int? to,
            int? total)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationData() when $default != null:
        return $default(
            _that.currentPage,
            _that.data,
            _that.firstPageUrl,
            _that.from,
            _that.lastPage,
            _that.lastPageUrl,
            _that.nextPageUrl,
            _that.path,
            _that.perPage,
            _that.prevPageUrl,
            _that.to,
            _that.total);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PaginationData implements PaginationData {
  const _PaginationData(
      {@JsonKey(name: 'current_page') this.currentPage,
      final List<PageModel>? data,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      this.to,
      this.total})
      : _data = data;
  factory _PaginationData.fromJson(Map<String, dynamic> json) =>
      _$PaginationDataFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<PageModel>? _data;
  @override
  List<PageModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

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
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @override
  String toString() {
    return 'PaginationData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
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
      {@JsonKey(name: 'current_page') int? currentPage,
      List<PageModel>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
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
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_PaginationData(
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PageModel>?,
      firstPageUrl: freezed == firstPageUrl
          ? _self.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _self.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _self.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageUrl: freezed == nextPageUrl
          ? _self.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _self.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$BiographyResponse {
  bool? get success;
  PaginationData? get data;
  String? get message;

  /// Create a copy of BiographyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BiographyResponseCopyWith<BiographyResponse> get copyWith =>
      _$BiographyResponseCopyWithImpl<BiographyResponse>(
          this as BiographyResponse, _$identity);

  /// Serializes this BiographyResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BiographyResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'BiographyResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $BiographyResponseCopyWith<$Res> {
  factory $BiographyResponseCopyWith(
          BiographyResponse value, $Res Function(BiographyResponse) _then) =
      _$BiographyResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, PaginationData? data, String? message});

  $PaginationDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BiographyResponseCopyWithImpl<$Res>
    implements $BiographyResponseCopyWith<$Res> {
  _$BiographyResponseCopyWithImpl(this._self, this._then);

  final BiographyResponse _self;
  final $Res Function(BiographyResponse) _then;

  /// Create a copy of BiographyResponse
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
              as PaginationData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BiographyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $PaginationDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BiographyResponse].
extension BiographyResponsePatterns on BiographyResponse {
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
    TResult Function(_BiographyResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BiographyResponse() when $default != null:
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
    TResult Function(_BiographyResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiographyResponse():
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
    TResult? Function(_BiographyResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiographyResponse() when $default != null:
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
    TResult Function(bool? success, PaginationData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BiographyResponse() when $default != null:
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
    TResult Function(bool? success, PaginationData? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiographyResponse():
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
    TResult? Function(bool? success, PaginationData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiographyResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BiographyResponse implements BiographyResponse {
  const _BiographyResponse({this.success, this.data, this.message});
  factory _BiographyResponse.fromJson(Map<String, dynamic> json) =>
      _$BiographyResponseFromJson(json);

  @override
  final bool? success;
  @override
  final PaginationData? data;
  @override
  final String? message;

  /// Create a copy of BiographyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BiographyResponseCopyWith<_BiographyResponse> get copyWith =>
      __$BiographyResponseCopyWithImpl<_BiographyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BiographyResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BiographyResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'BiographyResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$BiographyResponseCopyWith<$Res>
    implements $BiographyResponseCopyWith<$Res> {
  factory _$BiographyResponseCopyWith(
          _BiographyResponse value, $Res Function(_BiographyResponse) _then) =
      __$BiographyResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, PaginationData? data, String? message});

  @override
  $PaginationDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$BiographyResponseCopyWithImpl<$Res>
    implements _$BiographyResponseCopyWith<$Res> {
  __$BiographyResponseCopyWithImpl(this._self, this._then);

  final _BiographyResponse _self;
  final $Res Function(_BiographyResponse) _then;

  /// Create a copy of BiographyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_BiographyResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginationData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BiographyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $PaginationDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$PageDetailResponse {
  bool? get success;
  PageDetail? get data;
  String? get message;

  /// Create a copy of PageDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageDetailResponseCopyWith<PageDetailResponse> get copyWith =>
      _$PageDetailResponseCopyWithImpl<PageDetailResponse>(
          this as PageDetailResponse, _$identity);

  /// Serializes this PageDetailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageDetailResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'PageDetailResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $PageDetailResponseCopyWith<$Res> {
  factory $PageDetailResponseCopyWith(
          PageDetailResponse value, $Res Function(PageDetailResponse) _then) =
      _$PageDetailResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, PageDetail? data, String? message});

  $PageDetailCopyWith<$Res>? get data;
}

/// @nodoc
class _$PageDetailResponseCopyWithImpl<$Res>
    implements $PageDetailResponseCopyWith<$Res> {
  _$PageDetailResponseCopyWithImpl(this._self, this._then);

  final PageDetailResponse _self;
  final $Res Function(PageDetailResponse) _then;

  /// Create a copy of PageDetailResponse
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
              as PageDetail?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of PageDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageDetailCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $PageDetailCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PageDetailResponse].
extension PageDetailResponsePatterns on PageDetailResponse {
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
    TResult Function(_PageDetailResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageDetailResponse() when $default != null:
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
    TResult Function(_PageDetailResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageDetailResponse():
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
    TResult? Function(_PageDetailResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageDetailResponse() when $default != null:
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
    TResult Function(bool? success, PageDetail? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageDetailResponse() when $default != null:
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
    TResult Function(bool? success, PageDetail? data, String? message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageDetailResponse():
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
    TResult? Function(bool? success, PageDetail? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageDetailResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PageDetailResponse implements PageDetailResponse {
  const _PageDetailResponse({this.success, this.data, this.message});
  factory _PageDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PageDetailResponseFromJson(json);

  @override
  final bool? success;
  @override
  final PageDetail? data;
  @override
  final String? message;

  /// Create a copy of PageDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageDetailResponseCopyWith<_PageDetailResponse> get copyWith =>
      __$PageDetailResponseCopyWithImpl<_PageDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageDetailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageDetailResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'PageDetailResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$PageDetailResponseCopyWith<$Res>
    implements $PageDetailResponseCopyWith<$Res> {
  factory _$PageDetailResponseCopyWith(
          _PageDetailResponse value, $Res Function(_PageDetailResponse) _then) =
      __$PageDetailResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, PageDetail? data, String? message});

  @override
  $PageDetailCopyWith<$Res>? get data;
}

/// @nodoc
class __$PageDetailResponseCopyWithImpl<$Res>
    implements _$PageDetailResponseCopyWith<$Res> {
  __$PageDetailResponseCopyWithImpl(this._self, this._then);

  final _PageDetailResponse _self;
  final $Res Function(_PageDetailResponse) _then;

  /// Create a copy of PageDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_PageDetailResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as PageDetail?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of PageDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageDetailCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $PageDetailCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$PageDetail {
  @JsonKey(name: 'pages_id', fromJson: _stringToInt)
  int? get pagesId;
  @JsonKey(name: 'pages_menus')
  String? get pagesMenus;
  @JsonKey(name: 'pages_title')
  String? get pagesTitle;
  @JsonKey(name: 'pages_content')
  String? get pagesContent;
  @JsonKey(name: 'pages_lan')
  String? get pagesLan;
  @JsonKey(name: 'pages_visitor', fromJson: _stringToInt)
  int? get pagesVisitor;
  @JsonKey(name: 'pages_priority')
  String? get pagesPriority;
  @JsonKey(name: 'pages_date')
  String? get pagesDate;
  @JsonKey(name: 'pages_active')
  bool? get pagesActive;

  /// Create a copy of PageDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageDetailCopyWith<PageDetail> get copyWith =>
      _$PageDetailCopyWithImpl<PageDetail>(this as PageDetail, _$identity);

  /// Serializes this PageDetail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageDetail &&
            (identical(other.pagesId, pagesId) || other.pagesId == pagesId) &&
            (identical(other.pagesMenus, pagesMenus) ||
                other.pagesMenus == pagesMenus) &&
            (identical(other.pagesTitle, pagesTitle) ||
                other.pagesTitle == pagesTitle) &&
            (identical(other.pagesContent, pagesContent) ||
                other.pagesContent == pagesContent) &&
            (identical(other.pagesLan, pagesLan) ||
                other.pagesLan == pagesLan) &&
            (identical(other.pagesVisitor, pagesVisitor) ||
                other.pagesVisitor == pagesVisitor) &&
            (identical(other.pagesPriority, pagesPriority) ||
                other.pagesPriority == pagesPriority) &&
            (identical(other.pagesDate, pagesDate) ||
                other.pagesDate == pagesDate) &&
            (identical(other.pagesActive, pagesActive) ||
                other.pagesActive == pagesActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pagesId,
      pagesMenus,
      pagesTitle,
      pagesContent,
      pagesLan,
      pagesVisitor,
      pagesPriority,
      pagesDate,
      pagesActive);

  @override
  String toString() {
    return 'PageDetail(pagesId: $pagesId, pagesMenus: $pagesMenus, pagesTitle: $pagesTitle, pagesContent: $pagesContent, pagesLan: $pagesLan, pagesVisitor: $pagesVisitor, pagesPriority: $pagesPriority, pagesDate: $pagesDate, pagesActive: $pagesActive)';
  }
}

/// @nodoc
abstract mixin class $PageDetailCopyWith<$Res> {
  factory $PageDetailCopyWith(
          PageDetail value, $Res Function(PageDetail) _then) =
      _$PageDetailCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
      @JsonKey(name: 'pages_menus') String? pagesMenus,
      @JsonKey(name: 'pages_title') String? pagesTitle,
      @JsonKey(name: 'pages_content') String? pagesContent,
      @JsonKey(name: 'pages_lan') String? pagesLan,
      @JsonKey(name: 'pages_visitor', fromJson: _stringToInt) int? pagesVisitor,
      @JsonKey(name: 'pages_priority') String? pagesPriority,
      @JsonKey(name: 'pages_date') String? pagesDate,
      @JsonKey(name: 'pages_active') bool? pagesActive});
}

/// @nodoc
class _$PageDetailCopyWithImpl<$Res> implements $PageDetailCopyWith<$Res> {
  _$PageDetailCopyWithImpl(this._self, this._then);

  final PageDetail _self;
  final $Res Function(PageDetail) _then;

  /// Create a copy of PageDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagesId = freezed,
    Object? pagesMenus = freezed,
    Object? pagesTitle = freezed,
    Object? pagesContent = freezed,
    Object? pagesLan = freezed,
    Object? pagesVisitor = freezed,
    Object? pagesPriority = freezed,
    Object? pagesDate = freezed,
    Object? pagesActive = freezed,
  }) {
    return _then(_self.copyWith(
      pagesId: freezed == pagesId
          ? _self.pagesId
          : pagesId // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesMenus: freezed == pagesMenus
          ? _self.pagesMenus
          : pagesMenus // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesTitle: freezed == pagesTitle
          ? _self.pagesTitle
          : pagesTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesContent: freezed == pagesContent
          ? _self.pagesContent
          : pagesContent // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesLan: freezed == pagesLan
          ? _self.pagesLan
          : pagesLan // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesVisitor: freezed == pagesVisitor
          ? _self.pagesVisitor
          : pagesVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesPriority: freezed == pagesPriority
          ? _self.pagesPriority
          : pagesPriority // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesDate: freezed == pagesDate
          ? _self.pagesDate
          : pagesDate // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesActive: freezed == pagesActive
          ? _self.pagesActive
          : pagesActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PageDetail].
extension PageDetailPatterns on PageDetail {
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
    TResult Function(_PageDetail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageDetail() when $default != null:
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
    TResult Function(_PageDetail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageDetail():
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
    TResult? Function(_PageDetail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageDetail() when $default != null:
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
            @JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
            @JsonKey(name: 'pages_menus') String? pagesMenus,
            @JsonKey(name: 'pages_title') String? pagesTitle,
            @JsonKey(name: 'pages_content') String? pagesContent,
            @JsonKey(name: 'pages_lan') String? pagesLan,
            @JsonKey(name: 'pages_visitor', fromJson: _stringToInt)
            int? pagesVisitor,
            @JsonKey(name: 'pages_priority') String? pagesPriority,
            @JsonKey(name: 'pages_date') String? pagesDate,
            @JsonKey(name: 'pages_active') bool? pagesActive)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageDetail() when $default != null:
        return $default(
            _that.pagesId,
            _that.pagesMenus,
            _that.pagesTitle,
            _that.pagesContent,
            _that.pagesLan,
            _that.pagesVisitor,
            _that.pagesPriority,
            _that.pagesDate,
            _that.pagesActive);
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
            @JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
            @JsonKey(name: 'pages_menus') String? pagesMenus,
            @JsonKey(name: 'pages_title') String? pagesTitle,
            @JsonKey(name: 'pages_content') String? pagesContent,
            @JsonKey(name: 'pages_lan') String? pagesLan,
            @JsonKey(name: 'pages_visitor', fromJson: _stringToInt)
            int? pagesVisitor,
            @JsonKey(name: 'pages_priority') String? pagesPriority,
            @JsonKey(name: 'pages_date') String? pagesDate,
            @JsonKey(name: 'pages_active') bool? pagesActive)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageDetail():
        return $default(
            _that.pagesId,
            _that.pagesMenus,
            _that.pagesTitle,
            _that.pagesContent,
            _that.pagesLan,
            _that.pagesVisitor,
            _that.pagesPriority,
            _that.pagesDate,
            _that.pagesActive);
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
            @JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
            @JsonKey(name: 'pages_menus') String? pagesMenus,
            @JsonKey(name: 'pages_title') String? pagesTitle,
            @JsonKey(name: 'pages_content') String? pagesContent,
            @JsonKey(name: 'pages_lan') String? pagesLan,
            @JsonKey(name: 'pages_visitor', fromJson: _stringToInt)
            int? pagesVisitor,
            @JsonKey(name: 'pages_priority') String? pagesPriority,
            @JsonKey(name: 'pages_date') String? pagesDate,
            @JsonKey(name: 'pages_active') bool? pagesActive)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageDetail() when $default != null:
        return $default(
            _that.pagesId,
            _that.pagesMenus,
            _that.pagesTitle,
            _that.pagesContent,
            _that.pagesLan,
            _that.pagesVisitor,
            _that.pagesPriority,
            _that.pagesDate,
            _that.pagesActive);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PageDetail implements PageDetail {
  const _PageDetail(
      {@JsonKey(name: 'pages_id', fromJson: _stringToInt) this.pagesId,
      @JsonKey(name: 'pages_menus') this.pagesMenus,
      @JsonKey(name: 'pages_title') this.pagesTitle,
      @JsonKey(name: 'pages_content') this.pagesContent,
      @JsonKey(name: 'pages_lan') this.pagesLan,
      @JsonKey(name: 'pages_visitor', fromJson: _stringToInt) this.pagesVisitor,
      @JsonKey(name: 'pages_priority') this.pagesPriority,
      @JsonKey(name: 'pages_date') this.pagesDate,
      @JsonKey(name: 'pages_active') this.pagesActive});
  factory _PageDetail.fromJson(Map<String, dynamic> json) =>
      _$PageDetailFromJson(json);

  @override
  @JsonKey(name: 'pages_id', fromJson: _stringToInt)
  final int? pagesId;
  @override
  @JsonKey(name: 'pages_menus')
  final String? pagesMenus;
  @override
  @JsonKey(name: 'pages_title')
  final String? pagesTitle;
  @override
  @JsonKey(name: 'pages_content')
  final String? pagesContent;
  @override
  @JsonKey(name: 'pages_lan')
  final String? pagesLan;
  @override
  @JsonKey(name: 'pages_visitor', fromJson: _stringToInt)
  final int? pagesVisitor;
  @override
  @JsonKey(name: 'pages_priority')
  final String? pagesPriority;
  @override
  @JsonKey(name: 'pages_date')
  final String? pagesDate;
  @override
  @JsonKey(name: 'pages_active')
  final bool? pagesActive;

  /// Create a copy of PageDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageDetailCopyWith<_PageDetail> get copyWith =>
      __$PageDetailCopyWithImpl<_PageDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageDetailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageDetail &&
            (identical(other.pagesId, pagesId) || other.pagesId == pagesId) &&
            (identical(other.pagesMenus, pagesMenus) ||
                other.pagesMenus == pagesMenus) &&
            (identical(other.pagesTitle, pagesTitle) ||
                other.pagesTitle == pagesTitle) &&
            (identical(other.pagesContent, pagesContent) ||
                other.pagesContent == pagesContent) &&
            (identical(other.pagesLan, pagesLan) ||
                other.pagesLan == pagesLan) &&
            (identical(other.pagesVisitor, pagesVisitor) ||
                other.pagesVisitor == pagesVisitor) &&
            (identical(other.pagesPriority, pagesPriority) ||
                other.pagesPriority == pagesPriority) &&
            (identical(other.pagesDate, pagesDate) ||
                other.pagesDate == pagesDate) &&
            (identical(other.pagesActive, pagesActive) ||
                other.pagesActive == pagesActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pagesId,
      pagesMenus,
      pagesTitle,
      pagesContent,
      pagesLan,
      pagesVisitor,
      pagesPriority,
      pagesDate,
      pagesActive);

  @override
  String toString() {
    return 'PageDetail(pagesId: $pagesId, pagesMenus: $pagesMenus, pagesTitle: $pagesTitle, pagesContent: $pagesContent, pagesLan: $pagesLan, pagesVisitor: $pagesVisitor, pagesPriority: $pagesPriority, pagesDate: $pagesDate, pagesActive: $pagesActive)';
  }
}

/// @nodoc
abstract mixin class _$PageDetailCopyWith<$Res>
    implements $PageDetailCopyWith<$Res> {
  factory _$PageDetailCopyWith(
          _PageDetail value, $Res Function(_PageDetail) _then) =
      __$PageDetailCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pages_id', fromJson: _stringToInt) int? pagesId,
      @JsonKey(name: 'pages_menus') String? pagesMenus,
      @JsonKey(name: 'pages_title') String? pagesTitle,
      @JsonKey(name: 'pages_content') String? pagesContent,
      @JsonKey(name: 'pages_lan') String? pagesLan,
      @JsonKey(name: 'pages_visitor', fromJson: _stringToInt) int? pagesVisitor,
      @JsonKey(name: 'pages_priority') String? pagesPriority,
      @JsonKey(name: 'pages_date') String? pagesDate,
      @JsonKey(name: 'pages_active') bool? pagesActive});
}

/// @nodoc
class __$PageDetailCopyWithImpl<$Res> implements _$PageDetailCopyWith<$Res> {
  __$PageDetailCopyWithImpl(this._self, this._then);

  final _PageDetail _self;
  final $Res Function(_PageDetail) _then;

  /// Create a copy of PageDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pagesId = freezed,
    Object? pagesMenus = freezed,
    Object? pagesTitle = freezed,
    Object? pagesContent = freezed,
    Object? pagesLan = freezed,
    Object? pagesVisitor = freezed,
    Object? pagesPriority = freezed,
    Object? pagesDate = freezed,
    Object? pagesActive = freezed,
  }) {
    return _then(_PageDetail(
      pagesId: freezed == pagesId
          ? _self.pagesId
          : pagesId // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesMenus: freezed == pagesMenus
          ? _self.pagesMenus
          : pagesMenus // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesTitle: freezed == pagesTitle
          ? _self.pagesTitle
          : pagesTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesContent: freezed == pagesContent
          ? _self.pagesContent
          : pagesContent // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesLan: freezed == pagesLan
          ? _self.pagesLan
          : pagesLan // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesVisitor: freezed == pagesVisitor
          ? _self.pagesVisitor
          : pagesVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesPriority: freezed == pagesPriority
          ? _self.pagesPriority
          : pagesPriority // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesDate: freezed == pagesDate
          ? _self.pagesDate
          : pagesDate // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesActive: freezed == pagesActive
          ? _self.pagesActive
          : pagesActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
