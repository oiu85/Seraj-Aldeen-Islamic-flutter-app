import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/models/book_model.dart';

class BooksState extends Equatable {
  final BlocStatus status;
  final List<BookCategory> categories;
  final List<BookPageInfo> pageInfo;
  
  // Category books state
  final BlocStatus categoryBooksStatus;
  final List<CategoryBookItem> categoryBooks;
  final int currentPage;
  final int totalPages;
  final bool hasNextPage;
  final bool isLoadingMore;
  final CategoryInfo? categoryInfo;

  // Book detail state
  final BlocStatus bookDetailStatus;
  final BookDetailData? bookDetail;

  // Download state
  final bool isDownloading;
  final double downloadProgress;
  final String? downloadingFormat;
  final String? downloadMessage;

  const BooksState({
    this.status = const BlocStatus.initial(),
    this.categories = const [],
    this.pageInfo = const [],
    this.categoryBooksStatus = const BlocStatus.initial(),
    this.categoryBooks = const [],
    this.currentPage = 1,
    this.totalPages = 1,
    this.hasNextPage = false,
    this.isLoadingMore = false,
    this.categoryInfo,
    this.bookDetailStatus = const BlocStatus.initial(),
    this.bookDetail,
    this.isDownloading = false,
    this.downloadProgress = 0.0,
    this.downloadingFormat,
    this.downloadMessage,
  });

  BooksState copyWith({
    BlocStatus? status,
    List<BookCategory>? categories,
    List<BookPageInfo>? pageInfo,
    BlocStatus? categoryBooksStatus,
    List<CategoryBookItem>? categoryBooks,
    int? currentPage,
    int? totalPages,
    bool? hasNextPage,
    bool? isLoadingMore,
    CategoryInfo? categoryInfo,
    BlocStatus? bookDetailStatus,
    BookDetailData? bookDetail,
    bool? isDownloading,
    double? downloadProgress,
    String? downloadingFormat,
    String? downloadMessage,
  }) {
    return BooksState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      pageInfo: pageInfo ?? this.pageInfo,
      categoryBooksStatus: categoryBooksStatus ?? this.categoryBooksStatus,
      categoryBooks: categoryBooks ?? this.categoryBooks,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      categoryInfo: categoryInfo ?? this.categoryInfo,
      bookDetailStatus: bookDetailStatus ?? this.bookDetailStatus,
      bookDetail: bookDetail ?? this.bookDetail,
      isDownloading: isDownloading ?? this.isDownloading,
      downloadProgress: downloadProgress ?? this.downloadProgress,
      downloadingFormat: downloadingFormat ?? this.downloadingFormat,
      downloadMessage: downloadMessage ?? this.downloadMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        categories,
        pageInfo,
        categoryBooksStatus,
        categoryBooks,
        currentPage,
        totalPages,
        hasNextPage,
        isLoadingMore,
        categoryInfo,
        bookDetailStatus,
        bookDetail,
        isDownloading,
        downloadProgress,
        downloadingFormat,
        downloadMessage,
      ];
}
