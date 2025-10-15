import 'package:equatable/equatable.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object?> get props => [];
}

class SubmitContactFormEvent extends ContactEvent {
  final String senderName;
  final String senderEmail;
  final String senderPhone;
  final String senderCountry;
  final String senderMessage;

  const SubmitContactFormEvent({
    required this.senderName,
    required this.senderEmail,
    required this.senderPhone,
    required this.senderCountry,
    required this.senderMessage,
  });

  @override
  List<Object?> get props => [
        senderName,
        senderEmail,
        senderPhone,
        senderCountry,
        senderMessage,
      ];
}

class ResetContactFormEvent extends ContactEvent {
  const ResetContactFormEvent();
}

