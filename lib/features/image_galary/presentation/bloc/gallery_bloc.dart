import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/gallery_repository.dart';
import 'gallery_event.dart';
import 'gallery_state.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  final GalleryRepository _repository;

  GalleryBloc(this._repository) : super(const GalleryState()) {
    on<LoadGalleryCategoriesEvent>(_onLoadGalleryCategories);
  }

  Future<void> _onLoadGalleryCategories(
    LoadGalleryCategoriesEvent event,
    Emitter<GalleryState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const BlocStatus.loading()));
      AppLogger.info('Loading gallery categories...');

      final result = await _repository.getMainCategories(
        page: event.page,
        perPage: event.perPage,
      );

      await result.fold(
        (exception) async {
          AppLogger.error('Failed to load gallery categories: $exception');
          emit(state.copyWith(
            status: BlocStatus.fail(error: exception.toString()),
          ));
        },
        (response) async {
          if (response.data?.categories != null) {
            final categories = response.data!.categories!;
            final pagination = response.data!.pagination;
            
            AppLogger.info('Loaded ${categories.length} gallery categories');

            emit(state.copyWith(
              status: const BlocStatus.success(),
              categories: categories,
              currentPage: pagination?.currentPage ?? 1,
              totalPages: pagination?.totalPages ?? 1,
              hasNextPage: pagination?.hasNextPage ?? false,
            ));
          } else {
            AppLogger.warning('No gallery categories found in response');
            emit(state.copyWith(
              status: const BlocStatus.success(),
              categories: [],
            ));
          }
        },
      );
    } catch (e, stackTrace) {
      AppLogger.error('Unexpected error loading gallery categories', e, stackTrace);
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'Unexpected error: $e'),
      ));
    }
  }
}

