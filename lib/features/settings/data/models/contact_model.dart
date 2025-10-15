import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
abstract class ContactRequest with _$ContactRequest {
  const factory ContactRequest({
    @JsonKey(name: 'sender_name') required String senderName,
    @JsonKey(name: 'sender_email') required String senderEmail,
    @JsonKey(name: 'sender_phone') required String senderPhone,
    @JsonKey(name: 'sender_country') required String senderCountry,
    @JsonKey(name: 'sender_message') required String senderMessage,
  }) = _ContactRequest;

  factory ContactRequest.fromJson(Map<String, dynamic> json) =>
      _$ContactRequestFromJson(json);
}

@freezed
abstract class ContactResponse with _$ContactResponse {
  const factory ContactResponse({
    bool? success,
    String? message,
    dynamic data,
  }) = _ContactResponse;

  factory ContactResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactResponseFromJson(json);
}

