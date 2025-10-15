// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactRequest {
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

  /// Create a copy of ContactRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactRequestCopyWith<ContactRequest> get copyWith =>
      _$ContactRequestCopyWithImpl<ContactRequest>(
          this as ContactRequest, _$identity);

  /// Serializes this ContactRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactRequest &&
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
    return 'ContactRequest(senderName: $senderName, senderEmail: $senderEmail, senderPhone: $senderPhone, senderCountry: $senderCountry, senderMessage: $senderMessage)';
  }
}

/// @nodoc
abstract mixin class $ContactRequestCopyWith<$Res> {
  factory $ContactRequestCopyWith(
          ContactRequest value, $Res Function(ContactRequest) _then) =
      _$ContactRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'sender_name') String senderName,
      @JsonKey(name: 'sender_email') String senderEmail,
      @JsonKey(name: 'sender_phone') String senderPhone,
      @JsonKey(name: 'sender_country') String senderCountry,
      @JsonKey(name: 'sender_message') String senderMessage});
}

/// @nodoc
class _$ContactRequestCopyWithImpl<$Res>
    implements $ContactRequestCopyWith<$Res> {
  _$ContactRequestCopyWithImpl(this._self, this._then);

  final ContactRequest _self;
  final $Res Function(ContactRequest) _then;

  /// Create a copy of ContactRequest
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

/// Adds pattern-matching-related methods to [ContactRequest].
extension ContactRequestPatterns on ContactRequest {
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
    TResult Function(_ContactRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactRequest() when $default != null:
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
    TResult Function(_ContactRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactRequest():
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
    TResult? Function(_ContactRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactRequest() when $default != null:
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
      case _ContactRequest() when $default != null:
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
      case _ContactRequest():
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
      case _ContactRequest() when $default != null:
        return $default(_that.senderName, _that.senderEmail, _that.senderPhone,
            _that.senderCountry, _that.senderMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ContactRequest implements ContactRequest {
  const _ContactRequest(
      {@JsonKey(name: 'sender_name') required this.senderName,
      @JsonKey(name: 'sender_email') required this.senderEmail,
      @JsonKey(name: 'sender_phone') required this.senderPhone,
      @JsonKey(name: 'sender_country') required this.senderCountry,
      @JsonKey(name: 'sender_message') required this.senderMessage});
  factory _ContactRequest.fromJson(Map<String, dynamic> json) =>
      _$ContactRequestFromJson(json);

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

  /// Create a copy of ContactRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactRequestCopyWith<_ContactRequest> get copyWith =>
      __$ContactRequestCopyWithImpl<_ContactRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactRequest &&
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
    return 'ContactRequest(senderName: $senderName, senderEmail: $senderEmail, senderPhone: $senderPhone, senderCountry: $senderCountry, senderMessage: $senderMessage)';
  }
}

/// @nodoc
abstract mixin class _$ContactRequestCopyWith<$Res>
    implements $ContactRequestCopyWith<$Res> {
  factory _$ContactRequestCopyWith(
          _ContactRequest value, $Res Function(_ContactRequest) _then) =
      __$ContactRequestCopyWithImpl;
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
class __$ContactRequestCopyWithImpl<$Res>
    implements _$ContactRequestCopyWith<$Res> {
  __$ContactRequestCopyWithImpl(this._self, this._then);

  final _ContactRequest _self;
  final $Res Function(_ContactRequest) _then;

  /// Create a copy of ContactRequest
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
    return _then(_ContactRequest(
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

/// @nodoc
mixin _$ContactResponse {
  bool? get success;
  String? get message;
  dynamic get data;

  /// Create a copy of ContactResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactResponseCopyWith<ContactResponse> get copyWith =>
      _$ContactResponseCopyWithImpl<ContactResponse>(
          this as ContactResponse, _$identity);

  /// Serializes this ContactResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ContactResponse(success: $success, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ContactResponseCopyWith<$Res> {
  factory $ContactResponseCopyWith(
          ContactResponse value, $Res Function(ContactResponse) _then) =
      _$ContactResponseCopyWithImpl;
  @useResult
  $Res call({bool? success, String? message, dynamic data});
}

/// @nodoc
class _$ContactResponseCopyWithImpl<$Res>
    implements $ContactResponseCopyWith<$Res> {
  _$ContactResponseCopyWithImpl(this._self, this._then);

  final ContactResponse _self;
  final $Res Function(ContactResponse) _then;

  /// Create a copy of ContactResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// Adds pattern-matching-related methods to [ContactResponse].
extension ContactResponsePatterns on ContactResponse {
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
    TResult Function(_ContactResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactResponse() when $default != null:
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
    TResult Function(_ContactResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactResponse():
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
    TResult? Function(_ContactResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactResponse() when $default != null:
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
    TResult Function(bool? success, String? message, dynamic data)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactResponse() when $default != null:
        return $default(_that.success, _that.message, _that.data);
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
    TResult Function(bool? success, String? message, dynamic data) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactResponse():
        return $default(_that.success, _that.message, _that.data);
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
    TResult? Function(bool? success, String? message, dynamic data)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactResponse() when $default != null:
        return $default(_that.success, _that.message, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ContactResponse implements ContactResponse {
  const _ContactResponse({this.success, this.message, this.data});
  factory _ContactResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactResponseFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic data;

  /// Create a copy of ContactResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactResponseCopyWith<_ContactResponse> get copyWith =>
      __$ContactResponseCopyWithImpl<_ContactResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ContactResponse(success: $success, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ContactResponseCopyWith<$Res>
    implements $ContactResponseCopyWith<$Res> {
  factory _$ContactResponseCopyWith(
          _ContactResponse value, $Res Function(_ContactResponse) _then) =
      __$ContactResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic data});
}

/// @nodoc
class __$ContactResponseCopyWithImpl<$Res>
    implements _$ContactResponseCopyWith<$Res> {
  __$ContactResponseCopyWithImpl(this._self, this._then);

  final _ContactResponse _self;
  final $Res Function(_ContactResponse) _then;

  /// Create a copy of ContactResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_ContactResponse(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
