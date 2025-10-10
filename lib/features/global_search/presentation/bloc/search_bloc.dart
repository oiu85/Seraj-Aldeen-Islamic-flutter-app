import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/core/models/page_state/bloc_status.dart';
import '../../domain/repositories/search_repository.dart';
import 'search_event.dart';
import 'search_state.dart';
import 'package:flutter/foundation.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository searchRepository;

  SearchBloc({required this.searchRepository})
      : super(SearchState(status: BlocStatus.initial())) {
    on<PerformSearchEvent>(_onPerformSearch);
    on<ClearSearchEvent>(_onClearSearch);
  }

  Future<void> _onPerformSearch(
    PerformSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    try {
      // Don't search if query is empty or too short
      if (event.query.trim().isEmpty || event.query.trim().length < 2) {
        emit(state.copyWith(
          status: BlocStatus.initial(),
          currentQuery: event.query,
          searchData: null,
          searchResults: null,
          totalResults: 0,
        ));
        return;
      }

      debugPrint('🔍 SearchBloc: Searching for "${event.query}"');
      
      emit(state.copyWith(
        status: BlocStatus.loading(),
        currentQuery: event.query,
      ));

      final result = await searchRepository.search(query: event.query);

      result.fold(
        (exception) {
          debugPrint('❌ SearchBloc: Search failed - $exception');
          emit(state.copyWith(
            status: BlocStatus.fail(error: exception.toString()),
            errorMessage: exception.toString(),
          ));
        },
        (searchResponse) {
          debugPrint('✅ SearchBloc: Search successful - ${searchResponse.data?.total_results ?? 0} results');
          
          emit(state.copyWith(
            status: BlocStatus.success(),
            searchData: searchResponse.data,
            searchResults: searchResponse.data?.results,
            totalResults: searchResponse.data?.total_results ?? 0,
          ));
        },
      );
    } catch (e, stackTrace) {
      debugPrint('❌ SearchBloc: Unexpected error - $e');
      debugPrint('Stack trace: $stackTrace');
      emit(state.copyWith(
        status: BlocStatus.fail(error: e.toString()),
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onClearSearch(
    ClearSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    debugPrint('🔍 SearchBloc: Clearing search');
    emit(SearchState(status: BlocStatus.initial()));
  }
}
