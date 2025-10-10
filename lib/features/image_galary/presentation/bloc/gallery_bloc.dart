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
    on<LoadCategoryContentEvent>(_onLoadCategoryContent);
    on<LoadMoreCategoryContentEvent>(_onLoadMoreCategoryContent);
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

  Future<void> _onLoadCategoryContent(
    LoadCategoryContentEvent event,
    Emitter<GalleryState> emit,
  ) async {
    try {
      emit(state.copyWith(categoryContentStatus: const BlocStatus.loading()));
      AppLogger.info('Loading category content for category ${event.categoryId}...');

      final result = await _repository.getCategoryContent(
        categoryId: event.categoryId,
        page: event.page,
        perPage: event.perPage,
      );

      await result.fold(
        (exception) async {
          AppLogger.error('Failed to load category content: $exception');
          emit(state.copyWith(
            categoryContentStatus: BlocStatus.fail(error: exception.toString()),
          ));
        },
        (response) async {
          final contentData = response.data;
          final content = contentData?.content ?? [];
          final pagination = contentData?.pagination;
          final categoryInfo = contentData?.category;

          AppLogger.info('Loaded ${content.length} images for category ${event.categoryId}');

          emit(state.copyWith(
            categoryContentStatus: const BlocStatus.success(),
            categoryContent: List.from(content),
            categoryInfo: categoryInfo,
            contentCurrentPage: pagination?.currentPage ?? 1,
            contentTotalPages: pagination?.totalPages ?? 1,
            contentHasNextPage: pagination?.hasNextPage ?? false,
            isLoadingMore: false,
          ));
        },
      );
    } catch (e, stackTrace) {
      AppLogger.error('Unexpected error loading category content', e, stackTrace);
      emit(state.copyWith(
        categoryContentStatus: BlocStatus.fail(error: 'Unexpected error: $e'),
      ));
    }
  }

  Future<void> _onLoadMoreCategoryContent(
    LoadMoreCategoryContentEvent event,
    Emitter<GalleryState> emit,
  ) async {
    if (state.isLoadingMore || !state.contentHasNextPage) return;

    try {
      emit(state.copyWith(isLoadingMore: true));
      AppLogger.info('Loading more images for category ${event.categoryId}, page ${state.contentCurrentPage + 1}...');

      final result = await _repository.getCategoryContent(
        categoryId: event.categoryId,
        page: state.contentCurrentPage + 1,
        perPage: 8,
      );

      await result.fold(
        (exception) async {
          AppLogger.error('Failed to load more images: $exception');
          emit(state.copyWith(isLoadingMore: false));
        },
        (response) async {
          final contentData = response.data;
          final newContent = contentData?.content ?? [];
          final pagination = contentData?.pagination;

          AppLogger.info('Loaded ${newContent.length} more images');

          final updatedContent = [...state.categoryContent, ...newContent];

          emit(state.copyWith(
            categoryContent: updatedContent,
            contentCurrentPage: pagination?.currentPage ?? state.contentCurrentPage,
            contentTotalPages: pagination?.totalPages ?? state.contentTotalPages,
            contentHasNextPage: pagination?.hasNextPage ?? false,
            isLoadingMore: false,
          ));
        },
      );
    } catch (e, stackTrace) {
      AppLogger.error('Unexpected error loading more images', e, stackTrace);
      emit(state.copyWith(isLoadingMore: false));
    }
  }
}

