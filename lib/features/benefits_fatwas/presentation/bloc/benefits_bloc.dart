import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/features/benefits_fatwas/data/models/article_model.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/article_repository.dart';
import 'benefits_event.dart';
import 'benefits_state.dart';

class BenefitsBloc extends Bloc<BenefitsEvent, BenefitsState> {
  final BenefitsFatwasRepository benefitsFatwasRepository;

  BenefitsBloc({required this.benefitsFatwasRepository}) 
      : super(BenefitsState(status: BlocStatus.initial())) {
    on<LoadArticleCategoriesEvent>(_onLoadArticleCategories);
    on<LoadCategoryContentEvent>(_onLoadCategoryContent);
  }

  Future<void> _onLoadArticleCategories(
    LoadArticleCategoriesEvent event,
    Emitter<BenefitsState> emit,
  ) async {
    try {
      _emitLoadingState(emit);
      AppLogger.info('Loading article categories from API');

      final result = await benefitsFatwasRepository.getArticleCategories();

      result.fold(
        (exception) => _handleError(emit, exception.toString()),
        (response) => _handleSuccess(emit, response),
      );
    } catch (e) {
      _handleUnexpectedError(emit, e);
    }
  }

  void _emitLoadingState(Emitter<BenefitsState> emit) {
    if (!state.status.isLoading()) {
      emit(state.copyWith(status: BlocStatus.loading()));
    }
  }

  void _handleError(Emitter<BenefitsState> emit, String error) {
    AppLogger.error('Failed to load article categories: $error');
    if (state.status.isLoading()) {
      emit(state.copyWith(status: BlocStatus.fail(error: error)));
    }
  }

  void _handleSuccess(Emitter<BenefitsState> emit, ArticleResponse response) {
    if (!_isValidResponse(response)) {
      _handleError(emit, 'Invalid response from API');
      return;
    }

    final validCategories = _processCategories(response.data!.categories!);
    AppLogger.info('Loaded ${validCategories.length} valid article categories');

    if (state.status.isLoading()) {
      emit(state.copyWith(
        status: BlocStatus.success(),
        categories: validCategories,
      ));
    }
  }

  bool _isValidResponse(ArticleResponse response) {
    return response.success == true && 
           response.data != null && 
           response.data!.categories != null;
  }

  List<ArticleCategory> _processCategories(List<ArticleCategory> categories) {
    final categoriesCopy = List<ArticleCategory>.from(categories);
    final validCategories = _filterValidCategories(categoriesCopy);
    _sortCategoriesByPosition(validCategories);
    return validCategories;
  }

  List<ArticleCategory> _filterValidCategories(List<ArticleCategory> categories) {
    return categories
        .where((category) => category.data != null && category.data!.isNotEmpty)
        .toList();
  }

  void _sortCategoriesByPosition(List<ArticleCategory> categories) {
    categories.sort((a, b) {
      final posA = int.tryParse(a.position ?? '0') ?? 0;
      final posB = int.tryParse(b.position ?? '0') ?? 0;
      return posA.compareTo(posB);
    });
  }

  void _handleUnexpectedError(Emitter<BenefitsState> emit, dynamic error) {
    AppLogger.error('Unexpected error in BenefitsBloc: $error');
    if (state.status.isLoading()) {
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'Unexpected error: $error'),
      ));
    }
  }

  Future<void> _onLoadCategoryContent(
    LoadCategoryContentEvent event,
    Emitter<BenefitsState> emit,
  ) async {
    try {
      final isLoadingMore = event.page > 1;
      
      if (!isLoadingMore) {
        _emitLoadingState(emit);
      } else {
        emit(state.copyWith(status: BlocStatus.loadingMore()));
      }
      
      AppLogger.info('Loading category content for category ${event.categoryId}, page ${event.page}');

      final result = await benefitsFatwasRepository.getCategoryContent(
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
    Emitter<BenefitsState> emit,
    CategoryContentResponse response,
    bool isLoadingMore,
  ) {
    if (response.success != true || response.data == null) {
      _handleError(emit, 'Invalid response from API');
      return;
    }

    final content = response.data!.content ?? [];
    final hasNextPage = response.data!.pagination?.hasNextPage ?? false;
    final currentPage = response.data!.pagination?.currentPage ?? 1;

    final List<ArticleItem> newContent;
    if (isLoadingMore) {
      newContent = List.from(state.categoryContent)..addAll(content);
    } else {
      newContent = content;
    }

    AppLogger.info('Loaded ${content.length} articles, total: ${newContent.length}');

    emit(state.copyWith(
      status: BlocStatus.success(),
      categoryContent: newContent,
      hasNextPage: hasNextPage,
      currentPage: currentPage,
    ));
  }
}
