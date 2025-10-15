import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../data/models/contact_model.dart';
import '../../domain/repositories/contact_repository.dart';
import 'contact_event.dart';
import 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepository contactRepository;

  ContactBloc({required this.contactRepository})
      : super(ContactState(status: BlocStatus.initial())) {
    on<SubmitContactFormEvent>(_onSubmitContactForm);
    on<ResetContactFormEvent>(_onResetContactForm);
  }

  Future<void> _onSubmitContactForm(
    SubmitContactFormEvent event,
    Emitter<ContactState> emit,
  ) async {
    try {
      emit(state.copyWith(status: BlocStatus.loading()));
      AppLogger.info('Submitting contact form');

      final request = ContactRequest(
        senderName: event.senderName,
        senderEmail: event.senderEmail,
        senderPhone: event.senderPhone,
        senderCountry: event.senderCountry,
        senderMessage: event.senderMessage,
      );

      final result = await contactRepository.submitContactForm(request);

      result.fold(
        (exception) {
          AppLogger.error('Failed to submit contact form: ${exception.toString()}');
          emit(state.copyWith(
            status: BlocStatus.fail(error: 'فشل إرسال الرسالة. يرجى التحقق من الاتصال بالإنترنت'),
          ));
        },
        (response) {
          if (response.success == true) {
            AppLogger.info('Contact form submitted successfully');
            emit(state.copyWith(
              status: BlocStatus.success(),
              successMessage: 'تم إرسال رسالتك بنجاح! سنتواصل معك قريباً',
            ));
          } else {
            AppLogger.error('Invalid response from API');
            emit(state.copyWith(
              status: BlocStatus.fail(
                error: 'فشل إرسال الرسالة. يرجى المحاولة مرة أخرى',
              ),
            ));
          }
        },
      );
    } catch (e) {
      AppLogger.error('Unexpected error in ContactBloc: $e');
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى'),
      ));
    }
  }

  void _onResetContactForm(
    ResetContactFormEvent event,
    Emitter<ContactState> emit,
  ) {
    emit(ContactState(status: BlocStatus.initial()));
  }
}

