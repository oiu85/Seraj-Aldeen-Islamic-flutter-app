// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactRequestModel {
  @JsonKey(name: 'sender_name')
  String get senderName;
  @JsonKey(name: 'sender_email')
  String get senderEmail;
  @JsonKey(name: 'sender_phone')
  String get senderPhone;
  @JsonKey(name: 'sender_country')
  String get senderCountry;
  @JsonKey(name: 'sender_message')
  String get senderMessage;

  /// Create a copy of ContactRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactRequestModelCopyWith<ContactRequestModel> get copyWith =>
      _$ContactRequestModelCopyWithImpl<ContactRequestModel>(
          this as ContactRequestModel, _$identity);

  /// Serializes this ContactRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactRequestModel &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderEmail, senderEmail) ||
                other.senderEmail == senderEmail) &&
            (identical(other.senderPhone, senderPhone) ||
                other.senderPhone == senderPhone) &&
            (identical(other.senderCountry, senderCountry) ||
                other.senderCountry == senderCountry) &&
            (identical(other.senderMessage, senderMessage) ||
                other.senderMessage == senderMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, senderName, senderEmail,
      senderPhone, senderCountry, senderMessage);

  @override
  String toString() {
    return 'ContactRequestModel(senderName: $senderName, senderEmail: $senderEmail, senderPhone: $senderPhone, senderCountry: $senderCountry, senderMessage: $senderMessage)';
  }
}

/// @nodoc
abstract mixin class $ContactRequestModelCopyWith<$Res> {
  factory $ContactRequestModelCopyWith(
          ContactRequestModel value, $Res Function(ContactRequestModel) _then) =
      _$ContactRequestModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'sender_name') String senderName,
      @JsonKey(name: 'sender_email') String senderEmail,
      @JsonKey(name: 'sender_phone') String senderPhone,
      @JsonKey(name: 'sender_country') String senderCountry,
      @JsonKey(name: 'sender_message') String senderMessage});
}

/// @nodoc
class _$ContactRequestModelCopyWithImpl<$Res>
    implements $ContactRequestModelCopyWith<$Res> {
  _$ContactRequestModelCopyWithImpl(this._self, this._then);

  final ContactRequestModel _self;
  final $Res Function(ContactRequestModel) _then;

  /// Create a copy of ContactRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderName = null,
    Object? senderEmail = null,
    Object? senderPhone = null,
    Object? senderCountry = null,
    Object? senderMessage = null,
  }) {
    return _then(_self.copyWith(
      senderName: null == senderName
          ? _self.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderEmail: null == senderEmail
          ? _self.senderEmail
          : senderEmail // ignore: cast_nullable_to_non_nullable
              as String,
      senderPhone: null == senderPhone
          ? _self.senderPhone
          : senderPhone // ignore: cast_nullable_to_non_nullable
              as String,
      senderCountry: null == senderCountry
          ? _self.senderCountry
          : senderCountry // ignore: cast_nullable_to_non_nullable
              as String,
      senderMessage: null == senderMessage
          ? _self.senderMessage
          : senderMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ContactRequestModel].
extension ContactRequestModelPatterns on ContactRequestModel {
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
    TResult Function(_ContactRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactRequestModel() when $default != null:
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
    TResult Function(_ContactRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactRequestModel():
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
    TResult? Function(_ContactRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactRequestModel() when $default != null:
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
            @JsonKey(name: 'sender_name') String senderName,
            @JsonKey(name: 'sender_email') String senderEmail,
            @JsonKey(name: 'sender_phone') String senderPhone,
            @JsonKey(name: 'sender_country') String senderCountry,
            @JsonKey(name: 'sender_message') String senderMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactRequestModel() when $default != null:
        return $default(_that.senderName, _that.senderEmail, _that.senderPhone,
            _that.senderCountry, _that.senderMessage);
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
            @JsonKey(name: 'sender_name') String senderName,
            @JsonKey(name: 'sender_email') String senderEmail,
            @JsonKey(name: 'sender_phone') String senderPhone,
            @JsonKey(name: 'sender_country') String senderCountry,
            @JsonKey(name: 'sender_message') String senderMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactRequestModel():
        return $default(_that.senderName, _that.senderEmail, _that.senderPhone,
            _that.senderCountry, _that.senderMessage);
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
            @JsonKey(name: 'sender_name') String senderName,
            @JsonKey(name: 'sender_email') String senderEmail,
            @JsonKey(name: 'sender_phone') String senderPhone,
            @JsonKey(name: 'sender_country') String senderCountry,
            @JsonKey(name: 'sender_message') String senderMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactRequestModel() when $default != null:
        return $default(_that.senderName, _that.senderEmail, _that.senderPhone,
            _that.senderCountry, _that.senderMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ContactRequestModel implements ContactRequestModel {
  const _ContactRequestModel(
      {@JsonKey(name: 'sender_name') required this.senderName,
      @JsonKey(name: 'sender_email') required this.senderEmail,
      @JsonKey(name: 'sender_phone') required this.senderPhone,
      @JsonKey(name: 'sender_country') required this.senderCountry,
      @JsonKey(name: 'sender_message') required this.senderMessage});
  factory _ContactRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ContactRequestModelFromJson(json);

  @override
  @JsonKey(name: 'sender_name')
  final String senderName;
  @override
  @JsonKey(name: 'sender_email')
  final String senderEmail;
  @override
  @JsonKey(name: 'sender_phone')
  final String senderPhone;
  @override
  @JsonKey(name: 'sender_country')
  final String senderCountry;
  @override
  @JsonKey(name: 'sender_message')
  final String senderMessage;

  /// Create a copy of ContactRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactRequestModelCopyWith<_ContactRequestModel> get copyWith =>
      __$ContactRequestModelCopyWithImpl<_ContactRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactRequestModel &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderEmail, senderEmail) ||
                other.senderEmail == senderEmail) &&
            (identical(other.senderPhone, senderPhone) ||
                other.senderPhone == senderPhone) &&
            (identical(other.senderCountry, senderCountry) ||
                other.senderCountry == senderCountry) &&
            (identical(other.senderMessage, senderMessage) ||
                other.senderMessage == senderMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, senderName, senderEmail,
      senderPhone, senderCountry, senderMessage);

  @override
  String toString() {
    return 'ContactRequestModel(senderName: $senderName, senderEmail: $senderEmail, senderPhone: $senderPhone, senderCountry: $senderCountry, senderMessage: $senderMessage)';
  }
}

/// @nodoc
abstract mixin class _$ContactRequestModelCopyWith<$Res>
    implements $ContactRequestModelCopyWith<$Res> {
  factory _$ContactRequestModelCopyWith(_ContactRequestModel value,
          $Res Function(_ContactRequestModel) _then) =
      __$ContactRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sender_name') String senderName,
      @JsonKey(name: 'sender_email') String senderEmail,
      @JsonKey(name: 'sender_phone') String senderPhone,
      @JsonKey(name: 'sender_country') String senderCountry,
      @JsonKey(name: 'sender_message') String senderMessage});
}

/// @nodoc
class __$ContactRequestModelCopyWithImpl<$Res>
    implements _$ContactRequestModelCopyWith<$Res> {
  __$ContactRequestModelCopyWithImpl(this._self, this._then);

  final _ContactRequestModel _self;
  final $Res Function(_ContactRequestModel) _then;

  /// Create a copy of ContactRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? senderName = null,
    Object? senderEmail = null,
    Object? senderPhone = null,
    Object? senderCountry = null,
    Object? senderMessage = null,
  }) {
    return _then(_ContactRequestModel(
      senderName: null == senderName
          ? _self.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderEmail: null == senderEmail
          ? _self.senderEmail
          : senderEmail // ignore: cast_nullable_to_non_nullable
              as String,
      senderPhone: null == senderPhone
          ? _self.senderPhone
          : senderPhone // ignore: cast_nullable_to_non_nullable
              as String,
      senderCountry: null == senderCountry
          ? _self.senderCountry
          : senderCountry // ignore: cast_nullable_to_non_nullable
              as String,
      senderMessage: null == senderMessage
          ? _self.senderMessage
          : senderMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
