import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../data/models/sound_model.dart';
import '../../domain/repositories/sound_repository.dart';
import 'sounds_event.dart';
import 'sounds_state.dart';

class SoundsBloc extends Bloc<SoundsEvent, SoundsState> {
  final SoundRepository soundRepository;

  SoundsBloc({required this.soundRepository}) 
      : super(SoundsState(status: BlocStatus.initial())) {
    on<LoadSoundCategoriesEvent>(_onLoadSoundCategories);
    on<LoadCategoryContentEvent>(_onLoadCategoryContent);
  }

  Future<void> _onLoadSoundCategories(
    LoadSoundCategoriesEvent event,
    Emitter<SoundsState> emit,
  ) async {
    try {
      _emitLoadingState(emit);
      AppLogger.info('Loading sound categories from API');

      final result = await soundRepository.getSoundCategories();

      result.fold(
        (exception) => _handleError(emit, exception.toString()),
        (response) => _handleSuccess(emit, response),
      );
    } catch (e) {
      _handleUnexpectedError(emit, e);
    }
  }

  void _emitLoadingState(Emitter<SoundsState> emit) {
    if (!emit.isDone && !state.status.isLoading()) {
      emit(state.copyWith(status: BlocStatus.loading()));
    }
  }

  void _handleError(Emitter<SoundsState> emit, String error) {
    AppLogger.error('Error in SoundsBloc: $error');
    if (!emit.isDone && state.status.isLoading()) {
      emit(state.copyWith(status: BlocStatus.fail(error: error)));
    }
  }

  void _handleSuccess(Emitter<SoundsState> emit, SoundResponse response) {
    if (!_isValidResponse(response)) {
      _handleError(emit, 'Invalid response structure');
      return;
    }

    final validCategories = _processCategories(response.data!.categories!);
    final pageInfo = _extractPageInfo(response.data!.pages);
    
    AppLogger.info('Loaded ${validCategories.length} valid sound categories');

    if (!emit.isDone && state.status.isLoading()) {
      emit(state.copyWith(
        status: BlocStatus.success(),
        categories: validCategories,
        pageInfo: pageInfo,
      ));
    }
  }

  bool _isValidResponse(SoundResponse response) {
    return response.success == true && 
           response.data != null && 
           response.data!.categories != null;
  }

  List<SoundCategory> _processCategories(List<SoundCategory> categories) {
    final categoriesCopy = List<SoundCategory>.from(categories);
    final validCategories = _filterValidCategories(categoriesCopy);
    _sortCategoriesByPosition(validCategories);
    return validCategories;
  }

  List<SoundCategory> _filterValidCategories(List<SoundCategory> categories) {
    return categories
        .where((category) => category.data != null && category.data!.isNotEmpty)
        .toList();
  }

  void _sortCategoriesByPosition(List<SoundCategory> categories) {
    categories.sort((a, b) {
      final posA = int.tryParse(a.position ?? '0') ?? 0;
      final posB = int.tryParse(b.position ?? '0') ?? 0;
      return posA.compareTo(posB);
    });
  }

  PageInfo? _extractPageInfo(List<PageInfo>? pages) {
    if (pages == null || pages.isEmpty) return null;
    return pages.first;
  }

  void _handleUnexpectedError(Emitter<SoundsState> emit, dynamic error) {
    AppLogger.error('Unexpected error in SoundsBloc: $error');
    if (!emit.isDone && state.status.isLoading()) {
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'حدث خطأ غير متوقع'),
      ));
    }
  }

  Future<void> _onLoadCategoryContent(
    LoadCategoryContentEvent event,
    Emitter<SoundsState> emit,
  ) async {
    try {
      final isLoadingMore = event.page > 1;
      
      if (!isLoadingMore) {
        _emitLoadingState(emit);
      } else {
        emit(state.copyWith(status: BlocStatus.loadingMore()));
      }
      
      AppLogger.info('Loading category content for category ${event.categoryId}, page ${event.page}');

      final result = await soundRepository.getCategoryContent(
        categoryId: event.categoryId,
        page: event.page,
        perPage: event.perPage,
      );

      result.fold(
        (exception) => _handleError(emit, exception.toString()),
        (response) => _handleCategoryContentSuccess(emit, response, isLoadingMore),
      );
    } catch (e) {
      _handleUnexpectedError(emit, e);
    }
  }

  void _handleCategoryContentSuccess(
    Emitter<SoundsState> emit,
    CategoryContentResponse response,
    bool isLoadingMore,
  ) {
    if (response.success != true || response.data == null) {
      _handleError(emit, 'Invalid response structure');
      return;
    }

    final content = response.data!.content ?? [];
    final hasNextPage = response.data!.pagination?.hasNextPage ?? false;
    final currentPage = response.data!.pagination?.currentPage ?? 1;
    final categoryInfo = response.data!.category;

    final newContent = isLoadingMore
        ? [...state.categoryContent, ...content]
        : content;

    AppLogger.info('Loaded ${content.length} sounds, total: ${newContent.length}');

    if (!emit.isDone) {
      emit(state.copyWith(
        status: BlocStatus.success(),
        categoryContent: newContent,
        categoryInfo: categoryInfo,
        hasNextPage: hasNextPage,
        currentPage: currentPage,
      ));
    }
  }
}
