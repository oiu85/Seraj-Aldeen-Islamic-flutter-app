// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResponse {
  bool? get success;
  SearchData? get data;
  String? get message;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      _$SearchResponseCopyWithImpl<SearchResponse>(
          this as SearchResponse, _$identity);

  /// Serializes this SearchResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'SearchResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
          SearchResponse value, $Res Function(SearchResponse) _then) =
      _$SearchResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, SearchData? data, String? message});

  $SearchDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._self, this._then);

  final SearchResponse _self;
  final $Res Function(SearchResponse) _then;

  /// Create a copy of SearchResponse
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
              as SearchData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $SearchDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SearchResponse].
extension SearchResponsePatterns on SearchResponse {
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
    TResult Function(_SearchResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchResponse() when $default != null:
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
    TResult Function(_SearchResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResponse():
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
    TResult? Function(_SearchResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResponse() when $default != null:
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
    TResult Function(bool? success, SearchData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchResponse() when $default != null:
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
    TResult Function(bool? success, SearchData? data, String? message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResponse():
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
    TResult? Function(bool? success, SearchData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SearchResponse implements SearchResponse {
  const _SearchResponse({this.success, this.data, this.message});
  factory _SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

  @override
  final bool? success;
  @override
  final SearchData? data;
  @override
  final String? message;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchResponseCopyWith<_SearchResponse> get copyWith =>
      __$SearchResponseCopyWithImpl<_SearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'SearchResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SearchResponseCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(
          _SearchResponse value, $Res Function(_SearchResponse) _then) =
      __$SearchResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, SearchData? data, String? message});

  @override
  $SearchDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$SearchResponseCopyWithImpl<$Res>
    implements _$SearchResponseCopyWith<$Res> {
  __$SearchResponseCopyWithImpl(this._self, this._then);

  final _SearchResponse _self;
  final $Res Function(_SearchResponse) _then;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_SearchResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $SearchDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$SearchData {
  String? get keyword;
  String? get search_type;
  String? get sort_by;
  String? get filters;
  @JsonKey(fromJson: _stringToInt)
  int? get total_results;
  SearchResults? get results;

  /// Create a copy of SearchData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchDataCopyWith<SearchData> get copyWith =>
      _$SearchDataCopyWithImpl<SearchData>(this as SearchData, _$identity);

  /// Serializes this SearchData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchData &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.search_type, search_type) ||
                other.search_type == search_type) &&
            (identical(other.sort_by, sort_by) || other.sort_by == sort_by) &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.total_results, total_results) ||
                other.total_results == total_results) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keyword, search_type, sort_by,
      filters, total_results, results);

  @override
  String toString() {
    return 'SearchData(keyword: $keyword, search_type: $search_type, sort_by: $sort_by, filters: $filters, total_results: $total_results, results: $results)';
  }
}

/// @nodoc
abstract mixin class $SearchDataCopyWith<$Res> {
  factory $SearchDataCopyWith(
          SearchData value, $Res Function(SearchData) _then) =
      _$SearchDataCopyWithImpl;
  @useResult
  $Res call(
      {String? keyword,
      String? search_type,
      String? sort_by,
      String? filters,
      @JsonKey(fromJson: _stringToInt) int? total_results,
      SearchResults? results});

  $SearchResultsCopyWith<$Res>? get results;
}

/// @nodoc
class _$SearchDataCopyWithImpl<$Res> implements $SearchDataCopyWith<$Res> {
  _$SearchDataCopyWithImpl(this._self, this._then);

  final SearchData _self;
  final $Res Function(SearchData) _then;

  /// Create a copy of SearchData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = freezed,
    Object? search_type = freezed,
    Object? sort_by = freezed,
    Object? filters = freezed,
    Object? total_results = freezed,
    Object? results = freezed,
  }) {
    return _then(_self.copyWith(
      keyword: freezed == keyword
          ? _self.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      search_type: freezed == search_type
          ? _self.search_type
          : search_type // ignore: cast_nullable_to_non_nullable
              as String?,
      sort_by: freezed == sort_by
          ? _self.sort_by
          : sort_by // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: freezed == filters
          ? _self.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as String?,
      total_results: freezed == total_results
          ? _self.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as SearchResults?,
    ));
  }

  /// Create a copy of SearchData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchResultsCopyWith<$Res>? get results {
    if (_self.results == null) {
      return null;
    }

    return $SearchResultsCopyWith<$Res>(_self.results!, (value) {
      return _then(_self.copyWith(results: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SearchData].
extension SearchDataPatterns on SearchData {
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
    TResult Function(_SearchData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchData() when $default != null:
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
    TResult Function(_SearchData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchData():
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
    TResult? Function(_SearchData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchData() when $default != null:
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
            String? keyword,
            String? search_type,
            String? sort_by,
            String? filters,
            @JsonKey(fromJson: _stringToInt) int? total_results,
            SearchResults? results)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchData() when $default != null:
        return $default(_that.keyword, _that.search_type, _that.sort_by,
            _that.filters, _that.total_results, _that.results);
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
            String? keyword,
            String? search_type,
            String? sort_by,
            String? filters,
            @JsonKey(fromJson: _stringToInt) int? total_results,
            SearchResults? results)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchData():
        return $default(_that.keyword, _that.search_type, _that.sort_by,
            _that.filters, _that.total_results, _that.results);
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
            String? keyword,
            String? search_type,
            String? sort_by,
            String? filters,
            @JsonKey(fromJson: _stringToInt) int? total_results,
            SearchResults? results)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchData() when $default != null:
        return $default(_that.keyword, _that.search_type, _that.sort_by,
            _that.filters, _that.total_results, _that.results);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SearchData implements SearchData {
  const _SearchData(
      {this.keyword,
      this.search_type,
      this.sort_by,
      this.filters,
      @JsonKey(fromJson: _stringToInt) this.total_results,
      this.results});
  factory _SearchData.fromJson(Map<String, dynamic> json) =>
      _$SearchDataFromJson(json);

  @override
  final String? keyword;
  @override
  final String? search_type;
  @override
  final String? sort_by;
  @override
  final String? filters;
  @override
  @JsonKey(fromJson: _stringToInt)
  final int? total_results;
  @override
  final SearchResults? results;

  /// Create a copy of SearchData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchDataCopyWith<_SearchData> get copyWith =>
      __$SearchDataCopyWithImpl<_SearchData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchData &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.search_type, search_type) ||
                other.search_type == search_type) &&
            (identical(other.sort_by, sort_by) || other.sort_by == sort_by) &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.total_results, total_results) ||
                other.total_results == total_results) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keyword, search_type, sort_by,
      filters, total_results, results);

  @override
  String toString() {
    return 'SearchData(keyword: $keyword, search_type: $search_type, sort_by: $sort_by, filters: $filters, total_results: $total_results, results: $results)';
  }
}

/// @nodoc
abstract mixin class _$SearchDataCopyWith<$Res>
    implements $SearchDataCopyWith<$Res> {
  factory _$SearchDataCopyWith(
          _SearchData value, $Res Function(_SearchData) _then) =
      __$SearchDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? keyword,
      String? search_type,
      String? sort_by,
      String? filters,
      @JsonKey(fromJson: _stringToInt) int? total_results,
      SearchResults? results});

  @override
  $SearchResultsCopyWith<$Res>? get results;
}

/// @nodoc
class __$SearchDataCopyWithImpl<$Res> implements _$SearchDataCopyWith<$Res> {
  __$SearchDataCopyWithImpl(this._self, this._then);

  final _SearchData _self;
  final $Res Function(_SearchData) _then;

  /// Create a copy of SearchData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyword = freezed,
    Object? search_type = freezed,
    Object? sort_by = freezed,
    Object? filters = freezed,
    Object? total_results = freezed,
    Object? results = freezed,
  }) {
    return _then(_SearchData(
      keyword: freezed == keyword
          ? _self.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      search_type: freezed == search_type
          ? _self.search_type
          : search_type // ignore: cast_nullable_to_non_nullable
              as String?,
      sort_by: freezed == sort_by
          ? _self.sort_by
          : sort_by // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: freezed == filters
          ? _self.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as String?,
      total_results: freezed == total_results
          ? _self.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as SearchResults?,
    ));
  }

  /// Create a copy of SearchData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchResultsCopyWith<$Res>? get results {
    if (_self.results == null) {
      return null;
    }

    return $SearchResultsCopyWith<$Res>(_self.results!, (value) {
      return _then(_self.copyWith(results: value));
    });
  }
}

/// @nodoc
mixin _$SearchResults {
  SearchCategory? get articles;
  SearchCategory? get books;
  SearchCategory? get videos;
  SearchCategory? get sounds;
  SearchCategory? get photo_galleries;
  SearchCategory? get pages;

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchResultsCopyWith<SearchResults> get copyWith =>
      _$SearchResultsCopyWithImpl<SearchResults>(
          this as SearchResults, _$identity);

  /// Serializes this SearchResults to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchResults &&
            (identical(other.articles, articles) ||
                other.articles == articles) &&
            (identical(other.books, books) || other.books == books) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.sounds, sounds) || other.sounds == sounds) &&
            (identical(other.photo_galleries, photo_galleries) ||
                other.photo_galleries == photo_galleries) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, articles, books, videos, sounds, photo_galleries, pages);

  @override
  String toString() {
    return 'SearchResults(articles: $articles, books: $books, videos: $videos, sounds: $sounds, photo_galleries: $photo_galleries, pages: $pages)';
  }
}

/// @nodoc
abstract mixin class $SearchResultsCopyWith<$Res> {
  factory $SearchResultsCopyWith(
          SearchResults value, $Res Function(SearchResults) _then) =
      _$SearchResultsCopyWithImpl;
  @useResult
  $Res call(
      {SearchCategory? articles,
      SearchCategory? books,
      SearchCategory? videos,
      SearchCategory? sounds,
      SearchCategory? photo_galleries,
      SearchCategory? pages});

  $SearchCategoryCopyWith<$Res>? get articles;
  $SearchCategoryCopyWith<$Res>? get books;
  $SearchCategoryCopyWith<$Res>? get videos;
  $SearchCategoryCopyWith<$Res>? get sounds;
  $SearchCategoryCopyWith<$Res>? get photo_galleries;
  $SearchCategoryCopyWith<$Res>? get pages;
}

/// @nodoc
class _$SearchResultsCopyWithImpl<$Res>
    implements $SearchResultsCopyWith<$Res> {
  _$SearchResultsCopyWithImpl(this._self, this._then);

  final SearchResults _self;
  final $Res Function(SearchResults) _then;

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = freezed,
    Object? books = freezed,
    Object? videos = freezed,
    Object? sounds = freezed,
    Object? photo_galleries = freezed,
    Object? pages = freezed,
  }) {
    return _then(_self.copyWith(
      articles: freezed == articles
          ? _self.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
      books: freezed == books
          ? _self.books
          : books // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
      videos: freezed == videos
          ? _self.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
      sounds: freezed == sounds
          ? _self.sounds
          : sounds // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
      photo_galleries: freezed == photo_galleries
          ? _self.photo_galleries
          : photo_galleries // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
      pages: freezed == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
    ));
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get articles {
    if (_self.articles == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.articles!, (value) {
      return _then(_self.copyWith(articles: value));
    });
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get books {
    if (_self.books == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.books!, (value) {
      return _then(_self.copyWith(books: value));
    });
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get videos {
    if (_self.videos == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.videos!, (value) {
      return _then(_self.copyWith(videos: value));
    });
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get sounds {
    if (_self.sounds == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.sounds!, (value) {
      return _then(_self.copyWith(sounds: value));
    });
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get photo_galleries {
    if (_self.photo_galleries == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.photo_galleries!, (value) {
      return _then(_self.copyWith(photo_galleries: value));
    });
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get pages {
    if (_self.pages == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.pages!, (value) {
      return _then(_self.copyWith(pages: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SearchResults].
extension SearchResultsPatterns on SearchResults {
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
    TResult Function(_SearchResults value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchResults() when $default != null:
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
    TResult Function(_SearchResults value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResults():
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
    TResult? Function(_SearchResults value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResults() when $default != null:
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
            SearchCategory? articles,
            SearchCategory? books,
            SearchCategory? videos,
            SearchCategory? sounds,
            SearchCategory? photo_galleries,
            SearchCategory? pages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchResults() when $default != null:
        return $default(_that.articles, _that.books, _that.videos, _that.sounds,
            _that.photo_galleries, _that.pages);
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
            SearchCategory? articles,
            SearchCategory? books,
            SearchCategory? videos,
            SearchCategory? sounds,
            SearchCategory? photo_galleries,
            SearchCategory? pages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResults():
        return $default(_that.articles, _that.books, _that.videos, _that.sounds,
            _that.photo_galleries, _that.pages);
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
            SearchCategory? articles,
            SearchCategory? books,
            SearchCategory? videos,
            SearchCategory? sounds,
            SearchCategory? photo_galleries,
            SearchCategory? pages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResults() when $default != null:
        return $default(_that.articles, _that.books, _that.videos, _that.sounds,
            _that.photo_galleries, _that.pages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SearchResults implements SearchResults {
  const _SearchResults(
      {this.articles,
      this.books,
      this.videos,
      this.sounds,
      this.photo_galleries,
      this.pages});
  factory _SearchResults.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsFromJson(json);

  @override
  final SearchCategory? articles;
  @override
  final SearchCategory? books;
  @override
  final SearchCategory? videos;
  @override
  final SearchCategory? sounds;
  @override
  final SearchCategory? photo_galleries;
  @override
  final SearchCategory? pages;

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchResultsCopyWith<_SearchResults> get copyWith =>
      __$SearchResultsCopyWithImpl<_SearchResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchResultsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchResults &&
            (identical(other.articles, articles) ||
                other.articles == articles) &&
            (identical(other.books, books) || other.books == books) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.sounds, sounds) || other.sounds == sounds) &&
            (identical(other.photo_galleries, photo_galleries) ||
                other.photo_galleries == photo_galleries) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, articles, books, videos, sounds, photo_galleries, pages);

  @override
  String toString() {
    return 'SearchResults(articles: $articles, books: $books, videos: $videos, sounds: $sounds, photo_galleries: $photo_galleries, pages: $pages)';
  }
}

/// @nodoc
abstract mixin class _$SearchResultsCopyWith<$Res>
    implements $SearchResultsCopyWith<$Res> {
  factory _$SearchResultsCopyWith(
          _SearchResults value, $Res Function(_SearchResults) _then) =
      __$SearchResultsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SearchCategory? articles,
      SearchCategory? books,
      SearchCategory? videos,
      SearchCategory? sounds,
      SearchCategory? photo_galleries,
      SearchCategory? pages});

  @override
  $SearchCategoryCopyWith<$Res>? get articles;
  @override
  $SearchCategoryCopyWith<$Res>? get books;
  @override
  $SearchCategoryCopyWith<$Res>? get videos;
  @override
  $SearchCategoryCopyWith<$Res>? get sounds;
  @override
  $SearchCategoryCopyWith<$Res>? get photo_galleries;
  @override
  $SearchCategoryCopyWith<$Res>? get pages;
}

/// @nodoc
class __$SearchResultsCopyWithImpl<$Res>
    implements _$SearchResultsCopyWith<$Res> {
  __$SearchResultsCopyWithImpl(this._self, this._then);

  final _SearchResults _self;
  final $Res Function(_SearchResults) _then;

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? articles = freezed,
    Object? books = freezed,
    Object? videos = freezed,
    Object? sounds = freezed,
    Object? photo_galleries = freezed,
    Object? pages = freezed,
  }) {
    return _then(_SearchResults(
      articles: freezed == articles
          ? _self.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
      books: freezed == books
          ? _self.books
          : books // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
      videos: freezed == videos
          ? _self.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
      sounds: freezed == sounds
          ? _self.sounds
          : sounds // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
      photo_galleries: freezed == photo_galleries
          ? _self.photo_galleries
          : photo_galleries // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
      pages: freezed == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as SearchCategory?,
    ));
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get articles {
    if (_self.articles == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.articles!, (value) {
      return _then(_self.copyWith(articles: value));
    });
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get books {
    if (_self.books == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.books!, (value) {
      return _then(_self.copyWith(books: value));
    });
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get videos {
    if (_self.videos == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.videos!, (value) {
      return _then(_self.copyWith(videos: value));
    });
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get sounds {
    if (_self.sounds == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.sounds!, (value) {
      return _then(_self.copyWith(sounds: value));
    });
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get photo_galleries {
    if (_self.photo_galleries == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.photo_galleries!, (value) {
      return _then(_self.copyWith(photo_galleries: value));
    });
  }

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<$Res>? get pages {
    if (_self.pages == null) {
      return null;
    }

    return $SearchCategoryCopyWith<$Res>(_self.pages!, (value) {
      return _then(_self.copyWith(pages: value));
    });
  }
}

/// @nodoc
mixin _$SearchCategory {
  List<SearchResultItem>? get data;
  @JsonKey(fromJson: _stringToInt)
  int? get count;
  String? get label;

  /// Create a copy of SearchCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchCategoryCopyWith<SearchCategory> get copyWith =>
      _$SearchCategoryCopyWithImpl<SearchCategory>(
          this as SearchCategory, _$identity);

  /// Serializes this SearchCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchCategory &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), count, label);

  @override
  String toString() {
    return 'SearchCategory(data: $data, count: $count, label: $label)';
  }
}

/// @nodoc
abstract mixin class $SearchCategoryCopyWith<$Res> {
  factory $SearchCategoryCopyWith(
          SearchCategory value, $Res Function(SearchCategory) _then) =
      _$SearchCategoryCopyWithImpl;
  @useResult
  $Res call(
      {List<SearchResultItem>? data,
      @JsonKey(fromJson: _stringToInt) int? count,
      String? label});
}

/// @nodoc
class _$SearchCategoryCopyWithImpl<$Res>
    implements $SearchCategoryCopyWith<$Res> {
  _$SearchCategoryCopyWithImpl(this._self, this._then);

  final SearchCategory _self;
  final $Res Function(SearchCategory) _then;

  /// Create a copy of SearchCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? count = freezed,
    Object? label = freezed,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchCategory].
extension SearchCategoryPatterns on SearchCategory {
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
    TResult Function(_SearchCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchCategory() when $default != null:
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
    TResult Function(_SearchCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchCategory():
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
    TResult? Function(_SearchCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchCategory() when $default != null:
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
    TResult Function(List<SearchResultItem>? data,
            @JsonKey(fromJson: _stringToInt) int? count, String? label)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchCategory() when $default != null:
        return $default(_that.data, _that.count, _that.label);
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
    TResult Function(List<SearchResultItem>? data,
            @JsonKey(fromJson: _stringToInt) int? count, String? label)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchCategory():
        return $default(_that.data, _that.count, _that.label);
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
    TResult? Function(List<SearchResultItem>? data,
            @JsonKey(fromJson: _stringToInt) int? count, String? label)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchCategory() when $default != null:
        return $default(_that.data, _that.count, _that.label);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SearchCategory implements SearchCategory {
  const _SearchCategory(
      {final List<SearchResultItem>? data,
      @JsonKey(fromJson: _stringToInt) this.count,
      this.label})
      : _data = data;
  factory _SearchCategory.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryFromJson(json);

  final List<SearchResultItem>? _data;
  @override
  List<SearchResultItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(fromJson: _stringToInt)
  final int? count;
  @override
  final String? label;

  /// Create a copy of SearchCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchCategoryCopyWith<_SearchCategory> get copyWith =>
      __$SearchCategoryCopyWithImpl<_SearchCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchCategory &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), count, label);

  @override
  String toString() {
    return 'SearchCategory(data: $data, count: $count, label: $label)';
  }
}

/// @nodoc
abstract mixin class _$SearchCategoryCopyWith<$Res>
    implements $SearchCategoryCopyWith<$Res> {
  factory _$SearchCategoryCopyWith(
          _SearchCategory value, $Res Function(_SearchCategory) _then) =
      __$SearchCategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<SearchResultItem>? data,
      @JsonKey(fromJson: _stringToInt) int? count,
      String? label});
}

/// @nodoc
class __$SearchCategoryCopyWithImpl<$Res>
    implements _$SearchCategoryCopyWith<$Res> {
  __$SearchCategoryCopyWithImpl(this._self, this._then);

  final _SearchCategory _self;
  final $Res Function(_SearchCategory) _then;

  /// Create a copy of SearchCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? count = freezed,
    Object? label = freezed,
  }) {
    return _then(_SearchCategory(
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SearchResultItem {
  @JsonKey(fromJson: _stringToInt)
  int? get id;
  String? get title;
  String? get summary;
  String? get description;
  String? get content;
  String? get picture;
  String? get visitor_count;
  @JsonKey(fromJson: _stringToBool)
  bool? get is_new;
  String? get priority;
  String? get date;
  SearchItemCategory? get category;
  String? get type;
  String? get type_label;
  @JsonKey(fromJson: _stringToInt)
  int? get relevance_score; // Sound-specific field
  String? get sound_file_url; // Book-specific field
  String? get file;

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchResultItemCopyWith<SearchResultItem> get copyWith =>
      _$SearchResultItemCopyWithImpl<SearchResultItem>(
          this as SearchResultItem, _$identity);

  /// Serializes this SearchResultItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchResultItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.type_label, type_label) ||
                other.type_label == type_label) &&
            (identical(other.relevance_score, relevance_score) ||
                other.relevance_score == relevance_score) &&
            (identical(other.sound_file_url, sound_file_url) ||
                other.sound_file_url == sound_file_url) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      summary,
      description,
      content,
      picture,
      visitor_count,
      is_new,
      priority,
      date,
      category,
      type,
      type_label,
      relevance_score,
      sound_file_url,
      file);

  @override
  String toString() {
    return 'SearchResultItem(id: $id, title: $title, summary: $summary, description: $description, content: $content, picture: $picture, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, date: $date, category: $category, type: $type, type_label: $type_label, relevance_score: $relevance_score, sound_file_url: $sound_file_url, file: $file)';
  }
}

/// @nodoc
abstract mixin class $SearchResultItemCopyWith<$Res> {
  factory $SearchResultItemCopyWith(
          SearchResultItem value, $Res Function(SearchResultItem) _then) =
      _$SearchResultItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      String? title,
      String? summary,
      String? description,
      String? content,
      String? picture,
      String? visitor_count,
      @JsonKey(fromJson: _stringToBool) bool? is_new,
      String? priority,
      String? date,
      SearchItemCategory? category,
      String? type,
      String? type_label,
      @JsonKey(fromJson: _stringToInt) int? relevance_score,
      String? sound_file_url,
      String? file});

  $SearchItemCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$SearchResultItemCopyWithImpl<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  _$SearchResultItemCopyWithImpl(this._self, this._then);

  final SearchResultItem _self;
  final $Res Function(SearchResultItem) _then;

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? summary = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? picture = freezed,
    Object? visitor_count = freezed,
    Object? is_new = freezed,
    Object? priority = freezed,
    Object? date = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? type_label = freezed,
    Object? relevance_score = freezed,
    Object? sound_file_url = freezed,
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
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _self.picture
          : picture // ignore: cast_nullable_to_non_nullable
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
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as SearchItemCategory?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      type_label: freezed == type_label
          ? _self.type_label
          : type_label // ignore: cast_nullable_to_non_nullable
              as String?,
      relevance_score: freezed == relevance_score
          ? _self.relevance_score
          : relevance_score // ignore: cast_nullable_to_non_nullable
              as int?,
      sound_file_url: freezed == sound_file_url
          ? _self.sound_file_url
          : sound_file_url // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchItemCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $SearchItemCategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SearchResultItem].
extension SearchResultItemPatterns on SearchResultItem {
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
    TResult Function(_SearchResultItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchResultItem() when $default != null:
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
    TResult Function(_SearchResultItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResultItem():
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
    TResult? Function(_SearchResultItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResultItem() when $default != null:
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
            String? description,
            String? content,
            String? picture,
            String? visitor_count,
            @JsonKey(fromJson: _stringToBool) bool? is_new,
            String? priority,
            String? date,
            SearchItemCategory? category,
            String? type,
            String? type_label,
            @JsonKey(fromJson: _stringToInt) int? relevance_score,
            String? sound_file_url,
            String? file)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchResultItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.description,
            _that.content,
            _that.picture,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.date,
            _that.category,
            _that.type,
            _that.type_label,
            _that.relevance_score,
            _that.sound_file_url,
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
            String? description,
            String? content,
            String? picture,
            String? visitor_count,
            @JsonKey(fromJson: _stringToBool) bool? is_new,
            String? priority,
            String? date,
            SearchItemCategory? category,
            String? type,
            String? type_label,
            @JsonKey(fromJson: _stringToInt) int? relevance_score,
            String? sound_file_url,
            String? file)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResultItem():
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.description,
            _that.content,
            _that.picture,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.date,
            _that.category,
            _that.type,
            _that.type_label,
            _that.relevance_score,
            _that.sound_file_url,
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
            String? description,
            String? content,
            String? picture,
            String? visitor_count,
            @JsonKey(fromJson: _stringToBool) bool? is_new,
            String? priority,
            String? date,
            SearchItemCategory? category,
            String? type,
            String? type_label,
            @JsonKey(fromJson: _stringToInt) int? relevance_score,
            String? sound_file_url,
            String? file)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResultItem() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.summary,
            _that.description,
            _that.content,
            _that.picture,
            _that.visitor_count,
            _that.is_new,
            _that.priority,
            _that.date,
            _that.category,
            _that.type,
            _that.type_label,
            _that.relevance_score,
            _that.sound_file_url,
            _that.file);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SearchResultItem implements SearchResultItem {
  const _SearchResultItem(
      {@JsonKey(fromJson: _stringToInt) this.id,
      this.title,
      this.summary,
      this.description,
      this.content,
      this.picture,
      this.visitor_count,
      @JsonKey(fromJson: _stringToBool) this.is_new,
      this.priority,
      this.date,
      this.category,
      this.type,
      this.type_label,
      @JsonKey(fromJson: _stringToInt) this.relevance_score,
      this.sound_file_url,
      this.file});
  factory _SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$SearchResultItemFromJson(json);

  @override
  @JsonKey(fromJson: _stringToInt)
  final int? id;
  @override
  final String? title;
  @override
  final String? summary;
  @override
  final String? description;
  @override
  final String? content;
  @override
  final String? picture;
  @override
  final String? visitor_count;
  @override
  @JsonKey(fromJson: _stringToBool)
  final bool? is_new;
  @override
  final String? priority;
  @override
  final String? date;
  @override
  final SearchItemCategory? category;
  @override
  final String? type;
  @override
  final String? type_label;
  @override
  @JsonKey(fromJson: _stringToInt)
  final int? relevance_score;
// Sound-specific field
  @override
  final String? sound_file_url;
// Book-specific field
  @override
  final String? file;

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchResultItemCopyWith<_SearchResultItem> get copyWith =>
      __$SearchResultItemCopyWithImpl<_SearchResultItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchResultItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchResultItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.visitor_count, visitor_count) ||
                other.visitor_count == visitor_count) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.type_label, type_label) ||
                other.type_label == type_label) &&
            (identical(other.relevance_score, relevance_score) ||
                other.relevance_score == relevance_score) &&
            (identical(other.sound_file_url, sound_file_url) ||
                other.sound_file_url == sound_file_url) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      summary,
      description,
      content,
      picture,
      visitor_count,
      is_new,
      priority,
      date,
      category,
      type,
      type_label,
      relevance_score,
      sound_file_url,
      file);

  @override
  String toString() {
    return 'SearchResultItem(id: $id, title: $title, summary: $summary, description: $description, content: $content, picture: $picture, visitor_count: $visitor_count, is_new: $is_new, priority: $priority, date: $date, category: $category, type: $type, type_label: $type_label, relevance_score: $relevance_score, sound_file_url: $sound_file_url, file: $file)';
  }
}

/// @nodoc
abstract mixin class _$SearchResultItemCopyWith<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  factory _$SearchResultItemCopyWith(
          _SearchResultItem value, $Res Function(_SearchResultItem) _then) =
      __$SearchResultItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? id,
      String? title,
      String? summary,
      String? description,
      String? content,
      String? picture,
      String? visitor_count,
      @JsonKey(fromJson: _stringToBool) bool? is_new,
      String? priority,
      String? date,
      SearchItemCategory? category,
      String? type,
      String? type_label,
      @JsonKey(fromJson: _stringToInt) int? relevance_score,
      String? sound_file_url,
      String? file});

  @override
  $SearchItemCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$SearchResultItemCopyWithImpl<$Res>
    implements _$SearchResultItemCopyWith<$Res> {
  __$SearchResultItemCopyWithImpl(this._self, this._then);

  final _SearchResultItem _self;
  final $Res Function(_SearchResultItem) _then;

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? summary = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? picture = freezed,
    Object? visitor_count = freezed,
    Object? is_new = freezed,
    Object? priority = freezed,
    Object? date = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? type_label = freezed,
    Object? relevance_score = freezed,
    Object? sound_file_url = freezed,
    Object? file = freezed,
  }) {
    return _then(_SearchResultItem(
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
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _self.picture
          : picture // ignore: cast_nullable_to_non_nullable
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
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as SearchItemCategory?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      type_label: freezed == type_label
          ? _self.type_label
          : type_label // ignore: cast_nullable_to_non_nullable
              as String?,
      relevance_score: freezed == relevance_score
          ? _self.relevance_score
          : relevance_score // ignore: cast_nullable_to_non_nullable
              as int?,
      sound_file_url: freezed == sound_file_url
          ? _self.sound_file_url
          : sound_file_url // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchItemCategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $SearchItemCategoryCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// @nodoc
mixin _$SearchItemCategory {
  @JsonKey(fromJson: _stringToInt)
  int? get cat_id;
  String? get cat_father_id;
  String? get cat_menus;
  String? get cat_title;
  String? get cat_note;
  String? get cat_pic;
  String? get cat_sup;
  String? get cat_date;
  @JsonKey(fromJson: _stringToBool)
  bool? get cat_pic_active;
  String? get cat_lan;
  String? get cat_pos;
  @JsonKey(fromJson: _stringToBool)
  bool? get cat_active;
  @JsonKey(fromJson: _stringToBool)
  bool? get cat_show_menu;
  @JsonKey(fromJson: _stringToBool)
  bool? get cat_show_main;
  String? get cat_agent;

  /// Create a copy of SearchItemCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchItemCategoryCopyWith<SearchItemCategory> get copyWith =>
      _$SearchItemCategoryCopyWithImpl<SearchItemCategory>(
          this as SearchItemCategory, _$identity);

  /// Serializes this SearchItemCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchItemCategory &&
            (identical(other.cat_id, cat_id) || other.cat_id == cat_id) &&
            (identical(other.cat_father_id, cat_father_id) ||
                other.cat_father_id == cat_father_id) &&
            (identical(other.cat_menus, cat_menus) ||
                other.cat_menus == cat_menus) &&
            (identical(other.cat_title, cat_title) ||
                other.cat_title == cat_title) &&
            (identical(other.cat_note, cat_note) ||
                other.cat_note == cat_note) &&
            (identical(other.cat_pic, cat_pic) || other.cat_pic == cat_pic) &&
            (identical(other.cat_sup, cat_sup) || other.cat_sup == cat_sup) &&
            (identical(other.cat_date, cat_date) ||
                other.cat_date == cat_date) &&
            (identical(other.cat_pic_active, cat_pic_active) ||
                other.cat_pic_active == cat_pic_active) &&
            (identical(other.cat_lan, cat_lan) || other.cat_lan == cat_lan) &&
            (identical(other.cat_pos, cat_pos) || other.cat_pos == cat_pos) &&
            (identical(other.cat_active, cat_active) ||
                other.cat_active == cat_active) &&
            (identical(other.cat_show_menu, cat_show_menu) ||
                other.cat_show_menu == cat_show_menu) &&
            (identical(other.cat_show_main, cat_show_main) ||
                other.cat_show_main == cat_show_main) &&
            (identical(other.cat_agent, cat_agent) ||
                other.cat_agent == cat_agent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cat_id,
      cat_father_id,
      cat_menus,
      cat_title,
      cat_note,
      cat_pic,
      cat_sup,
      cat_date,
      cat_pic_active,
      cat_lan,
      cat_pos,
      cat_active,
      cat_show_menu,
      cat_show_main,
      cat_agent);

  @override
  String toString() {
    return 'SearchItemCategory(cat_id: $cat_id, cat_father_id: $cat_father_id, cat_menus: $cat_menus, cat_title: $cat_title, cat_note: $cat_note, cat_pic: $cat_pic, cat_sup: $cat_sup, cat_date: $cat_date, cat_pic_active: $cat_pic_active, cat_lan: $cat_lan, cat_pos: $cat_pos, cat_active: $cat_active, cat_show_menu: $cat_show_menu, cat_show_main: $cat_show_main, cat_agent: $cat_agent)';
  }
}

/// @nodoc
abstract mixin class $SearchItemCategoryCopyWith<$Res> {
  factory $SearchItemCategoryCopyWith(
          SearchItemCategory value, $Res Function(SearchItemCategory) _then) =
      _$SearchItemCategoryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? cat_id,
      String? cat_father_id,
      String? cat_menus,
      String? cat_title,
      String? cat_note,
      String? cat_pic,
      String? cat_sup,
      String? cat_date,
      @JsonKey(fromJson: _stringToBool) bool? cat_pic_active,
      String? cat_lan,
      String? cat_pos,
      @JsonKey(fromJson: _stringToBool) bool? cat_active,
      @JsonKey(fromJson: _stringToBool) bool? cat_show_menu,
      @JsonKey(fromJson: _stringToBool) bool? cat_show_main,
      String? cat_agent});
}

/// @nodoc
class _$SearchItemCategoryCopyWithImpl<$Res>
    implements $SearchItemCategoryCopyWith<$Res> {
  _$SearchItemCategoryCopyWithImpl(this._self, this._then);

  final SearchItemCategory _self;
  final $Res Function(SearchItemCategory) _then;

  /// Create a copy of SearchItemCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cat_id = freezed,
    Object? cat_father_id = freezed,
    Object? cat_menus = freezed,
    Object? cat_title = freezed,
    Object? cat_note = freezed,
    Object? cat_pic = freezed,
    Object? cat_sup = freezed,
    Object? cat_date = freezed,
    Object? cat_pic_active = freezed,
    Object? cat_lan = freezed,
    Object? cat_pos = freezed,
    Object? cat_active = freezed,
    Object? cat_show_menu = freezed,
    Object? cat_show_main = freezed,
    Object? cat_agent = freezed,
  }) {
    return _then(_self.copyWith(
      cat_id: freezed == cat_id
          ? _self.cat_id
          : cat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      cat_father_id: freezed == cat_father_id
          ? _self.cat_father_id
          : cat_father_id // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_menus: freezed == cat_menus
          ? _self.cat_menus
          : cat_menus // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_title: freezed == cat_title
          ? _self.cat_title
          : cat_title // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_note: freezed == cat_note
          ? _self.cat_note
          : cat_note // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_pic: freezed == cat_pic
          ? _self.cat_pic
          : cat_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_sup: freezed == cat_sup
          ? _self.cat_sup
          : cat_sup // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_date: freezed == cat_date
          ? _self.cat_date
          : cat_date // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_pic_active: freezed == cat_pic_active
          ? _self.cat_pic_active
          : cat_pic_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      cat_lan: freezed == cat_lan
          ? _self.cat_lan
          : cat_lan // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_pos: freezed == cat_pos
          ? _self.cat_pos
          : cat_pos // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_active: freezed == cat_active
          ? _self.cat_active
          : cat_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      cat_show_menu: freezed == cat_show_menu
          ? _self.cat_show_menu
          : cat_show_menu // ignore: cast_nullable_to_non_nullable
              as bool?,
      cat_show_main: freezed == cat_show_main
          ? _self.cat_show_main
          : cat_show_main // ignore: cast_nullable_to_non_nullable
              as bool?,
      cat_agent: freezed == cat_agent
          ? _self.cat_agent
          : cat_agent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchItemCategory].
extension SearchItemCategoryPatterns on SearchItemCategory {
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
    TResult Function(_SearchItemCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchItemCategory() when $default != null:
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
    TResult Function(_SearchItemCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchItemCategory():
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
    TResult? Function(_SearchItemCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchItemCategory() when $default != null:
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
            @JsonKey(fromJson: _stringToInt) int? cat_id,
            String? cat_father_id,
            String? cat_menus,
            String? cat_title,
            String? cat_note,
            String? cat_pic,
            String? cat_sup,
            String? cat_date,
            @JsonKey(fromJson: _stringToBool) bool? cat_pic_active,
            String? cat_lan,
            String? cat_pos,
            @JsonKey(fromJson: _stringToBool) bool? cat_active,
            @JsonKey(fromJson: _stringToBool) bool? cat_show_menu,
            @JsonKey(fromJson: _stringToBool) bool? cat_show_main,
            String? cat_agent)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchItemCategory() when $default != null:
        return $default(
            _that.cat_id,
            _that.cat_father_id,
            _that.cat_menus,
            _that.cat_title,
            _that.cat_note,
            _that.cat_pic,
            _that.cat_sup,
            _that.cat_date,
            _that.cat_pic_active,
            _that.cat_lan,
            _that.cat_pos,
            _that.cat_active,
            _that.cat_show_menu,
            _that.cat_show_main,
            _that.cat_agent);
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
            @JsonKey(fromJson: _stringToInt) int? cat_id,
            String? cat_father_id,
            String? cat_menus,
            String? cat_title,
            String? cat_note,
            String? cat_pic,
            String? cat_sup,
            String? cat_date,
            @JsonKey(fromJson: _stringToBool) bool? cat_pic_active,
            String? cat_lan,
            String? cat_pos,
            @JsonKey(fromJson: _stringToBool) bool? cat_active,
            @JsonKey(fromJson: _stringToBool) bool? cat_show_menu,
            @JsonKey(fromJson: _stringToBool) bool? cat_show_main,
            String? cat_agent)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchItemCategory():
        return $default(
            _that.cat_id,
            _that.cat_father_id,
            _that.cat_menus,
            _that.cat_title,
            _that.cat_note,
            _that.cat_pic,
            _that.cat_sup,
            _that.cat_date,
            _that.cat_pic_active,
            _that.cat_lan,
            _that.cat_pos,
            _that.cat_active,
            _that.cat_show_menu,
            _that.cat_show_main,
            _that.cat_agent);
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
            @JsonKey(fromJson: _stringToInt) int? cat_id,
            String? cat_father_id,
            String? cat_menus,
            String? cat_title,
            String? cat_note,
            String? cat_pic,
            String? cat_sup,
            String? cat_date,
            @JsonKey(fromJson: _stringToBool) bool? cat_pic_active,
            String? cat_lan,
            String? cat_pos,
            @JsonKey(fromJson: _stringToBool) bool? cat_active,
            @JsonKey(fromJson: _stringToBool) bool? cat_show_menu,
            @JsonKey(fromJson: _stringToBool) bool? cat_show_main,
            String? cat_agent)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchItemCategory() when $default != null:
        return $default(
            _that.cat_id,
            _that.cat_father_id,
            _that.cat_menus,
            _that.cat_title,
            _that.cat_note,
            _that.cat_pic,
            _that.cat_sup,
            _that.cat_date,
            _that.cat_pic_active,
            _that.cat_lan,
            _that.cat_pos,
            _that.cat_active,
            _that.cat_show_menu,
            _that.cat_show_main,
            _that.cat_agent);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SearchItemCategory implements SearchItemCategory {
  const _SearchItemCategory(
      {@JsonKey(fromJson: _stringToInt) this.cat_id,
      this.cat_father_id,
      this.cat_menus,
      this.cat_title,
      this.cat_note,
      this.cat_pic,
      this.cat_sup,
      this.cat_date,
      @JsonKey(fromJson: _stringToBool) this.cat_pic_active,
      this.cat_lan,
      this.cat_pos,
      @JsonKey(fromJson: _stringToBool) this.cat_active,
      @JsonKey(fromJson: _stringToBool) this.cat_show_menu,
      @JsonKey(fromJson: _stringToBool) this.cat_show_main,
      this.cat_agent});
  factory _SearchItemCategory.fromJson(Map<String, dynamic> json) =>
      _$SearchItemCategoryFromJson(json);

  @override
  @JsonKey(fromJson: _stringToInt)
  final int? cat_id;
  @override
  final String? cat_father_id;
  @override
  final String? cat_menus;
  @override
  final String? cat_title;
  @override
  final String? cat_note;
  @override
  final String? cat_pic;
  @override
  final String? cat_sup;
  @override
  final String? cat_date;
  @override
  @JsonKey(fromJson: _stringToBool)
  final bool? cat_pic_active;
  @override
  final String? cat_lan;
  @override
  final String? cat_pos;
  @override
  @JsonKey(fromJson: _stringToBool)
  final bool? cat_active;
  @override
  @JsonKey(fromJson: _stringToBool)
  final bool? cat_show_menu;
  @override
  @JsonKey(fromJson: _stringToBool)
  final bool? cat_show_main;
  @override
  final String? cat_agent;

  /// Create a copy of SearchItemCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchItemCategoryCopyWith<_SearchItemCategory> get copyWith =>
      __$SearchItemCategoryCopyWithImpl<_SearchItemCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchItemCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchItemCategory &&
            (identical(other.cat_id, cat_id) || other.cat_id == cat_id) &&
            (identical(other.cat_father_id, cat_father_id) ||
                other.cat_father_id == cat_father_id) &&
            (identical(other.cat_menus, cat_menus) ||
                other.cat_menus == cat_menus) &&
            (identical(other.cat_title, cat_title) ||
                other.cat_title == cat_title) &&
            (identical(other.cat_note, cat_note) ||
                other.cat_note == cat_note) &&
            (identical(other.cat_pic, cat_pic) || other.cat_pic == cat_pic) &&
            (identical(other.cat_sup, cat_sup) || other.cat_sup == cat_sup) &&
            (identical(other.cat_date, cat_date) ||
                other.cat_date == cat_date) &&
            (identical(other.cat_pic_active, cat_pic_active) ||
                other.cat_pic_active == cat_pic_active) &&
            (identical(other.cat_lan, cat_lan) || other.cat_lan == cat_lan) &&
            (identical(other.cat_pos, cat_pos) || other.cat_pos == cat_pos) &&
            (identical(other.cat_active, cat_active) ||
                other.cat_active == cat_active) &&
            (identical(other.cat_show_menu, cat_show_menu) ||
                other.cat_show_menu == cat_show_menu) &&
            (identical(other.cat_show_main, cat_show_main) ||
                other.cat_show_main == cat_show_main) &&
            (identical(other.cat_agent, cat_agent) ||
                other.cat_agent == cat_agent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cat_id,
      cat_father_id,
      cat_menus,
      cat_title,
      cat_note,
      cat_pic,
      cat_sup,
      cat_date,
      cat_pic_active,
      cat_lan,
      cat_pos,
      cat_active,
      cat_show_menu,
      cat_show_main,
      cat_agent);

  @override
  String toString() {
    return 'SearchItemCategory(cat_id: $cat_id, cat_father_id: $cat_father_id, cat_menus: $cat_menus, cat_title: $cat_title, cat_note: $cat_note, cat_pic: $cat_pic, cat_sup: $cat_sup, cat_date: $cat_date, cat_pic_active: $cat_pic_active, cat_lan: $cat_lan, cat_pos: $cat_pos, cat_active: $cat_active, cat_show_menu: $cat_show_menu, cat_show_main: $cat_show_main, cat_agent: $cat_agent)';
  }
}

/// @nodoc
abstract mixin class _$SearchItemCategoryCopyWith<$Res>
    implements $SearchItemCategoryCopyWith<$Res> {
  factory _$SearchItemCategoryCopyWith(
          _SearchItemCategory value, $Res Function(_SearchItemCategory) _then) =
      __$SearchItemCategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _stringToInt) int? cat_id,
      String? cat_father_id,
      String? cat_menus,
      String? cat_title,
      String? cat_note,
      String? cat_pic,
      String? cat_sup,
      String? cat_date,
      @JsonKey(fromJson: _stringToBool) bool? cat_pic_active,
      String? cat_lan,
      String? cat_pos,
      @JsonKey(fromJson: _stringToBool) bool? cat_active,
      @JsonKey(fromJson: _stringToBool) bool? cat_show_menu,
      @JsonKey(fromJson: _stringToBool) bool? cat_show_main,
      String? cat_agent});
}

/// @nodoc
class __$SearchItemCategoryCopyWithImpl<$Res>
    implements _$SearchItemCategoryCopyWith<$Res> {
  __$SearchItemCategoryCopyWithImpl(this._self, this._then);

  final _SearchItemCategory _self;
  final $Res Function(_SearchItemCategory) _then;

  /// Create a copy of SearchItemCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cat_id = freezed,
    Object? cat_father_id = freezed,
    Object? cat_menus = freezed,
    Object? cat_title = freezed,
    Object? cat_note = freezed,
    Object? cat_pic = freezed,
    Object? cat_sup = freezed,
    Object? cat_date = freezed,
    Object? cat_pic_active = freezed,
    Object? cat_lan = freezed,
    Object? cat_pos = freezed,
    Object? cat_active = freezed,
    Object? cat_show_menu = freezed,
    Object? cat_show_main = freezed,
    Object? cat_agent = freezed,
  }) {
    return _then(_SearchItemCategory(
      cat_id: freezed == cat_id
          ? _self.cat_id
          : cat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      cat_father_id: freezed == cat_father_id
          ? _self.cat_father_id
          : cat_father_id // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_menus: freezed == cat_menus
          ? _self.cat_menus
          : cat_menus // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_title: freezed == cat_title
          ? _self.cat_title
          : cat_title // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_note: freezed == cat_note
          ? _self.cat_note
          : cat_note // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_pic: freezed == cat_pic
          ? _self.cat_pic
          : cat_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_sup: freezed == cat_sup
          ? _self.cat_sup
          : cat_sup // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_date: freezed == cat_date
          ? _self.cat_date
          : cat_date // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_pic_active: freezed == cat_pic_active
          ? _self.cat_pic_active
          : cat_pic_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      cat_lan: freezed == cat_lan
          ? _self.cat_lan
          : cat_lan // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_pos: freezed == cat_pos
          ? _self.cat_pos
          : cat_pos // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_active: freezed == cat_active
          ? _self.cat_active
          : cat_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      cat_show_menu: freezed == cat_show_menu
          ? _self.cat_show_menu
          : cat_show_menu // ignore: cast_nullable_to_non_nullable
              as bool?,
      cat_show_main: freezed == cat_show_main
          ? _self.cat_show_main
          : cat_show_main // ignore: cast_nullable_to_non_nullable
              as bool?,
      cat_agent: freezed == cat_agent
          ? _self.cat_agent
          : cat_agent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
