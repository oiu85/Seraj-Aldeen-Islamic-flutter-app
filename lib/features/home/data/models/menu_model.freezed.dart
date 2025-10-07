// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuModel {
  @JsonKey(name: 'menus_id', fromJson: _stringToInt)
  int? get menusId;
  @JsonKey(name: 'menus_name')
  String? get menusName;
  @JsonKey(name: 'menus_url')
  String? get menusUrl;
  @JsonKey(name: 'menus_pos')
  String? get menusPos;
  @JsonKey(name: 'menus_priority', fromJson: _stringToInt)
  int? get menusPriority;
  @JsonKey(name: 'menus_lan')
  String? get menusLan;
  @JsonKey(name: 'menus_date')
  String? get menusDate;
  @JsonKey(name: 'menus_active_header', fromJson: _stringToBool)
  bool? get menusActiveHeader;
  @JsonKey(name: 'menus_active', fromJson: _stringToBool)
  bool? get menusActive;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuModelCopyWith<MenuModel> get copyWith =>
      _$MenuModelCopyWithImpl<MenuModel>(this as MenuModel, _$identity);

  /// Serializes this MenuModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MenuModel &&
            (identical(other.menusId, menusId) || other.menusId == menusId) &&
            (identical(other.menusName, menusName) ||
                other.menusName == menusName) &&
            (identical(other.menusUrl, menusUrl) ||
                other.menusUrl == menusUrl) &&
            (identical(other.menusPos, menusPos) ||
                other.menusPos == menusPos) &&
            (identical(other.menusPriority, menusPriority) ||
                other.menusPriority == menusPriority) &&
            (identical(other.menusLan, menusLan) ||
                other.menusLan == menusLan) &&
            (identical(other.menusDate, menusDate) ||
                other.menusDate == menusDate) &&
            (identical(other.menusActiveHeader, menusActiveHeader) ||
                other.menusActiveHeader == menusActiveHeader) &&
            (identical(other.menusActive, menusActive) ||
                other.menusActive == menusActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      menusId,
      menusName,
      menusUrl,
      menusPos,
      menusPriority,
      menusLan,
      menusDate,
      menusActiveHeader,
      menusActive);

  @override
  String toString() {
    return 'MenuModel(menusId: $menusId, menusName: $menusName, menusUrl: $menusUrl, menusPos: $menusPos, menusPriority: $menusPriority, menusLan: $menusLan, menusDate: $menusDate, menusActiveHeader: $menusActiveHeader, menusActive: $menusActive)';
  }
}

/// @nodoc
abstract mixin class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) _then) =
      _$MenuModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'menus_id', fromJson: _stringToInt) int? menusId,
      @JsonKey(name: 'menus_name') String? menusName,
      @JsonKey(name: 'menus_url') String? menusUrl,
      @JsonKey(name: 'menus_pos') String? menusPos,
      @JsonKey(name: 'menus_priority', fromJson: _stringToInt)
      int? menusPriority,
      @JsonKey(name: 'menus_lan') String? menusLan,
      @JsonKey(name: 'menus_date') String? menusDate,
      @JsonKey(name: 'menus_active_header', fromJson: _stringToBool)
      bool? menusActiveHeader,
      @JsonKey(name: 'menus_active', fromJson: _stringToBool)
      bool? menusActive});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res> implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._self, this._then);

  final MenuModel _self;
  final $Res Function(MenuModel) _then;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menusId = freezed,
    Object? menusName = freezed,
    Object? menusUrl = freezed,
    Object? menusPos = freezed,
    Object? menusPriority = freezed,
    Object? menusLan = freezed,
    Object? menusDate = freezed,
    Object? menusActiveHeader = freezed,
    Object? menusActive = freezed,
  }) {
    return _then(_self.copyWith(
      menusId: freezed == menusId
          ? _self.menusId
          : menusId // ignore: cast_nullable_to_non_nullable
              as int?,
      menusName: freezed == menusName
          ? _self.menusName
          : menusName // ignore: cast_nullable_to_non_nullable
              as String?,
      menusUrl: freezed == menusUrl
          ? _self.menusUrl
          : menusUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      menusPos: freezed == menusPos
          ? _self.menusPos
          : menusPos // ignore: cast_nullable_to_non_nullable
              as String?,
      menusPriority: freezed == menusPriority
          ? _self.menusPriority
          : menusPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      menusLan: freezed == menusLan
          ? _self.menusLan
          : menusLan // ignore: cast_nullable_to_non_nullable
              as String?,
      menusDate: freezed == menusDate
          ? _self.menusDate
          : menusDate // ignore: cast_nullable_to_non_nullable
              as String?,
      menusActiveHeader: freezed == menusActiveHeader
          ? _self.menusActiveHeader
          : menusActiveHeader // ignore: cast_nullable_to_non_nullable
              as bool?,
      menusActive: freezed == menusActive
          ? _self.menusActive
          : menusActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MenuModel].
extension MenuModelPatterns on MenuModel {
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
    TResult Function(_MenuModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MenuModel() when $default != null:
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
    TResult Function(_MenuModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuModel():
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
    TResult? Function(_MenuModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuModel() when $default != null:
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
            @JsonKey(name: 'menus_id', fromJson: _stringToInt) int? menusId,
            @JsonKey(name: 'menus_name') String? menusName,
            @JsonKey(name: 'menus_url') String? menusUrl,
            @JsonKey(name: 'menus_pos') String? menusPos,
            @JsonKey(name: 'menus_priority', fromJson: _stringToInt)
            int? menusPriority,
            @JsonKey(name: 'menus_lan') String? menusLan,
            @JsonKey(name: 'menus_date') String? menusDate,
            @JsonKey(name: 'menus_active_header', fromJson: _stringToBool)
            bool? menusActiveHeader,
            @JsonKey(name: 'menus_active', fromJson: _stringToBool)
            bool? menusActive)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MenuModel() when $default != null:
        return $default(
            _that.menusId,
            _that.menusName,
            _that.menusUrl,
            _that.menusPos,
            _that.menusPriority,
            _that.menusLan,
            _that.menusDate,
            _that.menusActiveHeader,
            _that.menusActive);
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
            @JsonKey(name: 'menus_id', fromJson: _stringToInt) int? menusId,
            @JsonKey(name: 'menus_name') String? menusName,
            @JsonKey(name: 'menus_url') String? menusUrl,
            @JsonKey(name: 'menus_pos') String? menusPos,
            @JsonKey(name: 'menus_priority', fromJson: _stringToInt)
            int? menusPriority,
            @JsonKey(name: 'menus_lan') String? menusLan,
            @JsonKey(name: 'menus_date') String? menusDate,
            @JsonKey(name: 'menus_active_header', fromJson: _stringToBool)
            bool? menusActiveHeader,
            @JsonKey(name: 'menus_active', fromJson: _stringToBool)
            bool? menusActive)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuModel():
        return $default(
            _that.menusId,
            _that.menusName,
            _that.menusUrl,
            _that.menusPos,
            _that.menusPriority,
            _that.menusLan,
            _that.menusDate,
            _that.menusActiveHeader,
            _that.menusActive);
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
            @JsonKey(name: 'menus_id', fromJson: _stringToInt) int? menusId,
            @JsonKey(name: 'menus_name') String? menusName,
            @JsonKey(name: 'menus_url') String? menusUrl,
            @JsonKey(name: 'menus_pos') String? menusPos,
            @JsonKey(name: 'menus_priority', fromJson: _stringToInt)
            int? menusPriority,
            @JsonKey(name: 'menus_lan') String? menusLan,
            @JsonKey(name: 'menus_date') String? menusDate,
            @JsonKey(name: 'menus_active_header', fromJson: _stringToBool)
            bool? menusActiveHeader,
            @JsonKey(name: 'menus_active', fromJson: _stringToBool)
            bool? menusActive)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuModel() when $default != null:
        return $default(
            _that.menusId,
            _that.menusName,
            _that.menusUrl,
            _that.menusPos,
            _that.menusPriority,
            _that.menusLan,
            _that.menusDate,
            _that.menusActiveHeader,
            _that.menusActive);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MenuModel implements MenuModel {
  const _MenuModel(
      {@JsonKey(name: 'menus_id', fromJson: _stringToInt) this.menusId,
      @JsonKey(name: 'menus_name') this.menusName,
      @JsonKey(name: 'menus_url') this.menusUrl,
      @JsonKey(name: 'menus_pos') this.menusPos,
      @JsonKey(name: 'menus_priority', fromJson: _stringToInt)
      this.menusPriority,
      @JsonKey(name: 'menus_lan') this.menusLan,
      @JsonKey(name: 'menus_date') this.menusDate,
      @JsonKey(name: 'menus_active_header', fromJson: _stringToBool)
      this.menusActiveHeader,
      @JsonKey(name: 'menus_active', fromJson: _stringToBool)
      this.menusActive});
  factory _MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);

  @override
  @JsonKey(name: 'menus_id', fromJson: _stringToInt)
  final int? menusId;
  @override
  @JsonKey(name: 'menus_name')
  final String? menusName;
  @override
  @JsonKey(name: 'menus_url')
  final String? menusUrl;
  @override
  @JsonKey(name: 'menus_pos')
  final String? menusPos;
  @override
  @JsonKey(name: 'menus_priority', fromJson: _stringToInt)
  final int? menusPriority;
  @override
  @JsonKey(name: 'menus_lan')
  final String? menusLan;
  @override
  @JsonKey(name: 'menus_date')
  final String? menusDate;
  @override
  @JsonKey(name: 'menus_active_header', fromJson: _stringToBool)
  final bool? menusActiveHeader;
  @override
  @JsonKey(name: 'menus_active', fromJson: _stringToBool)
  final bool? menusActive;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      __$MenuModelCopyWithImpl<_MenuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MenuModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenuModel &&
            (identical(other.menusId, menusId) || other.menusId == menusId) &&
            (identical(other.menusName, menusName) ||
                other.menusName == menusName) &&
            (identical(other.menusUrl, menusUrl) ||
                other.menusUrl == menusUrl) &&
            (identical(other.menusPos, menusPos) ||
                other.menusPos == menusPos) &&
            (identical(other.menusPriority, menusPriority) ||
                other.menusPriority == menusPriority) &&
            (identical(other.menusLan, menusLan) ||
                other.menusLan == menusLan) &&
            (identical(other.menusDate, menusDate) ||
                other.menusDate == menusDate) &&
            (identical(other.menusActiveHeader, menusActiveHeader) ||
                other.menusActiveHeader == menusActiveHeader) &&
            (identical(other.menusActive, menusActive) ||
                other.menusActive == menusActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      menusId,
      menusName,
      menusUrl,
      menusPos,
      menusPriority,
      menusLan,
      menusDate,
      menusActiveHeader,
      menusActive);

  @override
  String toString() {
    return 'MenuModel(menusId: $menusId, menusName: $menusName, menusUrl: $menusUrl, menusPos: $menusPos, menusPriority: $menusPriority, menusLan: $menusLan, menusDate: $menusDate, menusActiveHeader: $menusActiveHeader, menusActive: $menusActive)';
  }
}

/// @nodoc
abstract mixin class _$MenuModelCopyWith<$Res>
    implements $MenuModelCopyWith<$Res> {
  factory _$MenuModelCopyWith(
          _MenuModel value, $Res Function(_MenuModel) _then) =
      __$MenuModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'menus_id', fromJson: _stringToInt) int? menusId,
      @JsonKey(name: 'menus_name') String? menusName,
      @JsonKey(name: 'menus_url') String? menusUrl,
      @JsonKey(name: 'menus_pos') String? menusPos,
      @JsonKey(name: 'menus_priority', fromJson: _stringToInt)
      int? menusPriority,
      @JsonKey(name: 'menus_lan') String? menusLan,
      @JsonKey(name: 'menus_date') String? menusDate,
      @JsonKey(name: 'menus_active_header', fromJson: _stringToBool)
      bool? menusActiveHeader,
      @JsonKey(name: 'menus_active', fromJson: _stringToBool)
      bool? menusActive});
}

/// @nodoc
class __$MenuModelCopyWithImpl<$Res> implements _$MenuModelCopyWith<$Res> {
  __$MenuModelCopyWithImpl(this._self, this._then);

  final _MenuModel _self;
  final $Res Function(_MenuModel) _then;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? menusId = freezed,
    Object? menusName = freezed,
    Object? menusUrl = freezed,
    Object? menusPos = freezed,
    Object? menusPriority = freezed,
    Object? menusLan = freezed,
    Object? menusDate = freezed,
    Object? menusActiveHeader = freezed,
    Object? menusActive = freezed,
  }) {
    return _then(_MenuModel(
      menusId: freezed == menusId
          ? _self.menusId
          : menusId // ignore: cast_nullable_to_non_nullable
              as int?,
      menusName: freezed == menusName
          ? _self.menusName
          : menusName // ignore: cast_nullable_to_non_nullable
              as String?,
      menusUrl: freezed == menusUrl
          ? _self.menusUrl
          : menusUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      menusPos: freezed == menusPos
          ? _self.menusPos
          : menusPos // ignore: cast_nullable_to_non_nullable
              as String?,
      menusPriority: freezed == menusPriority
          ? _self.menusPriority
          : menusPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      menusLan: freezed == menusLan
          ? _self.menusLan
          : menusLan // ignore: cast_nullable_to_non_nullable
              as String?,
      menusDate: freezed == menusDate
          ? _self.menusDate
          : menusDate // ignore: cast_nullable_to_non_nullable
              as String?,
      menusActiveHeader: freezed == menusActiveHeader
          ? _self.menusActiveHeader
          : menusActiveHeader // ignore: cast_nullable_to_non_nullable
              as bool?,
      menusActive: freezed == menusActive
          ? _self.menusActive
          : menusActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$MenuResponse {
  bool? get success;
  List<MenuModel>? get data;
  String? get message;

  /// Create a copy of MenuResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuResponseCopyWith<MenuResponse> get copyWith =>
      _$MenuResponseCopyWithImpl<MenuResponse>(
          this as MenuResponse, _$identity);

  /// Serializes this MenuResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MenuResponse &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(data), message);

  @override
  String toString() {
    return 'MenuResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $MenuResponseCopyWith<$Res> {
  factory $MenuResponseCopyWith(
          MenuResponse value, $Res Function(MenuResponse) _then) =
      _$MenuResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, List<MenuModel>? data, String? message});
}

/// @nodoc
class _$MenuResponseCopyWithImpl<$Res> implements $MenuResponseCopyWith<$Res> {
  _$MenuResponseCopyWithImpl(this._self, this._then);

  final MenuResponse _self;
  final $Res Function(MenuResponse) _then;

  /// Create a copy of MenuResponse
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
              as List<MenuModel>?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MenuResponse].
extension MenuResponsePatterns on MenuResponse {
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
    TResult Function(_MenuResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MenuResponse() when $default != null:
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
    TResult Function(_MenuResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuResponse():
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
    TResult? Function(_MenuResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuResponse() when $default != null:
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
    TResult Function(bool? success, List<MenuModel>? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MenuResponse() when $default != null:
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
    TResult Function(bool? success, List<MenuModel>? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuResponse():
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
    TResult? Function(bool? success, List<MenuModel>? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MenuResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MenuResponse implements MenuResponse {
  const _MenuResponse({this.success, final List<MenuModel>? data, this.message})
      : _data = data;
  factory _MenuResponse.fromJson(Map<String, dynamic> json) =>
      _$MenuResponseFromJson(json);

  @override
  final bool? success;
  final List<MenuModel>? _data;
  @override
  List<MenuModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;

  /// Create a copy of MenuResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MenuResponseCopyWith<_MenuResponse> get copyWith =>
      __$MenuResponseCopyWithImpl<_MenuResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MenuResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenuResponse &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success,
      const DeepCollectionEquality().hash(_data), message);

  @override
  String toString() {
    return 'MenuResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$MenuResponseCopyWith<$Res>
    implements $MenuResponseCopyWith<$Res> {
  factory _$MenuResponseCopyWith(
          _MenuResponse value, $Res Function(_MenuResponse) _then) =
      __$MenuResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, List<MenuModel>? data, String? message});
}

/// @nodoc
class __$MenuResponseCopyWithImpl<$Res>
    implements _$MenuResponseCopyWith<$Res> {
  __$MenuResponseCopyWithImpl(this._self, this._then);

  final _MenuResponse _self;
  final $Res Function(_MenuResponse) _then;

  /// Create a copy of MenuResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_MenuResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
