import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../data/models/biography_model.dart';
import '../../domain/repositories/biography_repository.dart';
import 'biography_event.dart';
import 'biography_state.dart';

class BiographyBloc extends Bloc<BiographyEvent, BiographyState> {
  final BiographyRepository biographyRepository;

  BiographyBloc({required this.biographyRepository}) 
      : super(BiographyState(status: BlocStatus.initial())) {
    on<LoadPagesEvent>(_onLoadPages);
  }

  Future<void> _onLoadPages(
    LoadPagesEvent event,
    Emitter<BiographyState> emit,
  ) async {
    try {
      emit(state.copyWith(status: BlocStatus.loading()));
      AppLogger.info('Loading biography pages');

      final result = await biographyRepository.getPages(
        page: event.page,
        perPage: event.perPage,
      );

      result.fold(
        (exception) {
          AppLogger.error('Failed to load pages: ${exception.toString()}');
          emit(state.copyWith(
            status: BlocStatus.fail(error: exception.toString()),
          ));
        },
        (response) {
          if (response.success == true && response.data != null) {
            // Create a mutable copy of the list
            final pages = List<PageModel>.from(response.data!.data ?? []);
            
            // Sort by priority
            pages.sort((a, b) {
              final priorityA = a.pagesPriority ?? 0;
              final priorityB = b.pagesPriority ?? 0;
              return priorityA.compareTo(priorityB);
            });

            final currentPage = response.data!.currentPage ?? 1;
            final lastPage = response.data!.lastPage ?? 1;
            final total = response.data!.total ?? 0;
            final hasMore = currentPage < lastPage;

            AppLogger.info('Loaded ${pages.length} pages');
            emit(state.copyWith(
              status: BlocStatus.success(),
              pages: pages,
              currentPage: currentPage,
              lastPage: lastPage,
              total: total,
              hasMore: hasMore,
            ));
          } else {
            AppLogger.error('Invalid response from API');
            emit(state.copyWith(
              status: BlocStatus.fail(error: 'Invalid response from API'),
            ));
          }
        },
      );
    } catch (e) {
      AppLogger.error('Unexpected error in BiographyBloc: $e');
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'Unexpected error: $e'),
      ));
    }
  }
}

