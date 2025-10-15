import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';

class ContactState extends Equatable {
  final BlocStatus status;
  final String? successMessage;

  const ContactState({
    required this.status,
    this.successMessage,
  });

  ContactState copyWith({
    BlocStatus? status,
    String? successMessage,
  }) {
    return ContactState(
      status: status ?? this.status,
      successMessage: successMessage ?? this.successMessage,
    );
  }

  @override
  List<Object?> get props => [status, successMessage];
}

