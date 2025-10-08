import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/video_repository.dart';
import 'videos_event.dart';
import 'videos_state.dart';

class VideosBloc extends Bloc<VideosEvent, VideosState> {
  final VideoRepository _repository;

  VideosBloc(this._repository) : super(const VideosState()) {
    on<LoadVideoMainCategoriesEvent>(_onLoadVideoMainCategories);
    on<LoadCategoryVideosEvent>(_onLoadCategoryVideos);
  }

  Future<void> _onLoadVideoMainCategories(
    LoadVideoMainCategoriesEvent event,
    Emitter<VideosState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const BlocStatus.loading()));
      AppLogger.info('Loading main video categories...');

      final result = await _repository.getMainCategories();

      await result.fold(
        (exception) async {
          AppLogger.error('Failed to load main video categories: $exception');
          emit(state.copyWith(
            status: BlocStatus.fail(error: exception.toString()),
          ));
        },
        (response) async {
          if (response.data?.categories != null && response.data!.categories!.isNotEmpty) {
            final categories = response.data!.categories!;
            AppLogger.info('Loaded ${categories.length} main video categories');

            // Get the first category's ID and fetch its videos
            final firstCategoryId = categories.first.id;
            if (firstCategoryId != null) {
              AppLogger.info('Auto-loading videos for first category: $firstCategoryId');
              
              // Update state with categories and selected category ID
              emit(state.copyWith(
                mainCategories: categories,
                selectedCategoryId: firstCategoryId,
                status: const BlocStatus.loading(), // Keep loading while fetching videos
              ));

              // Fetch videos for the first category
              final contentResult = await _repository.getCategoryContent(
                categoryId: firstCategoryId,
                page: 1,
                perPage: 6,
              );

              contentResult.fold(
                (exception) {
                  AppLogger.error('Failed to load category videos: $exception');
                  emit(state.copyWith(
                    status: BlocStatus.fail(error: exception.toString()),
                  ));
                },
                (contentResponse) {
                  final categoryInfo = contentResponse.data?.category;
                  final videos = contentResponse.data?.content ?? [];
                  final hasNextPage = contentResponse.data?.pagination?.hasNextPage ?? false;

                  AppLogger.info('Loaded ${videos.length} videos for category $firstCategoryId');
                  
                  emit(state.copyWith(
                    status: const BlocStatus.success(),
                    selectedCategoryId: firstCategoryId,
                    selectedCategoryInfo: categoryInfo,
                    categoryVideos: videos,
                    hasNextPage: hasNextPage,
                    currentPage: 1,
                  ));
                },
              );
            } else {
              // No valid first category ID, just show categories
              emit(state.copyWith(
                mainCategories: categories,
                status: const BlocStatus.success(),
              ));
            }
          } else {
            AppLogger.warning('No video categories found in response');
            emit(state.copyWith(
              status: const BlocStatus.success(),
              mainCategories: [],
            ));
          }
        },
      );
    } catch (e, stackTrace) {
      AppLogger.error('Unexpected error loading main video categories', e, stackTrace);
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'Unexpected error: $e'),
      ));
    }
  }

  Future<void> _onLoadCategoryVideos(
    LoadCategoryVideosEvent event,
    Emitter<VideosState> emit,
  ) async {
    try {
      final isLoadingMore = event.page > 1;
      
      if (isLoadingMore) {
        emit(state.copyWith(status: const BlocStatus.loadingMore()));
        AppLogger.info('Loading more videos for category ${event.categoryId}, page ${event.page}');
      } else {
        emit(state.copyWith(status: const BlocStatus.loading()));
        AppLogger.info('Loading videos for category ${event.categoryId}');
      }

      final result = await _repository.getCategoryContent(
        categoryId: event.categoryId,
        page: event.page,
        perPage: event.perPage,
      );

      result.fold(
        (exception) {
          AppLogger.error('Failed to load category videos: $exception');
          emit(state.copyWith(
            status: BlocStatus.fail(error: exception.toString()),
          ));
        },
        (response) {
          final categoryInfo = response.data?.category;
          final newVideos = response.data?.content ?? [];
          final hasNextPage = response.data?.pagination?.hasNextPage ?? false;

          AppLogger.info('Loaded ${newVideos.length} videos for category ${event.categoryId}');

          final updatedVideos = isLoadingMore
              ? [...state.categoryVideos, ...newVideos]
              : newVideos;

          emit(state.copyWith(
            status: const BlocStatus.success(),
            selectedCategoryId: event.categoryId,
            selectedCategoryInfo: categoryInfo,
            categoryVideos: updatedVideos,
            hasNextPage: hasNextPage,
            currentPage: event.page,
          ));
        },
      );
    } catch (e, stackTrace) {
      AppLogger.error('Unexpected error loading category videos', e, stackTrace);
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'Unexpected error: $e'),
      ));
    }
  }
}

