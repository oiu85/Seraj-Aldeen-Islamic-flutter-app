import 'package:equatable/equatable.dart';
import 'package:seraj_aldean_flutter_app/core/models/page_state/bloc_status.dart';
import '../../data/models/search_model.dart';

class SearchState extends Equatable {
  final BlocStatus status;
  final String? errorMessage;
  final String currentQuery;
  final SearchData? searchData;
  final SearchResults? searchResults;
  final int totalResults;

  const SearchState({
    required this.status,
    this.errorMessage,
    this.currentQuery = '',
    this.searchData,
    this.searchResults,
    this.totalResults = 0,
  });

  SearchState copyWith({
    BlocStatus? status,
    String? errorMessage,
    String? currentQuery,
    SearchData? searchData,
    SearchResults? searchResults,
    int? totalResults,
  }) {
    return SearchState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      currentQuery: currentQuery ?? this.currentQuery,
      searchData: searchData ?? this.searchData,
      searchResults: searchResults ?? this.searchResults,
      totalResults: totalResults ?? this.totalResults,
    );
  }

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        currentQuery,
        searchData,
        searchResults,
        totalResults,
      ];

  // Helper methods to check if each category has results
  bool get hasArticles => (searchResults?.articles?.count ?? 0) > 0;
  bool get hasBooks => (searchResults?.books?.count ?? 0) > 0;
  bool get hasVideos => (searchResults?.videos?.count ?? 0) > 0;
  bool get hasSounds => (searchResults?.sounds?.count ?? 0) > 0;
  bool get hasPhotoGalleries => (searchResults?.photo_galleries?.count ?? 0) > 0;
  bool get hasPages => (searchResults?.pages?.count ?? 0) > 0;
  
  bool get hasAnyResults => totalResults > 0;
}

