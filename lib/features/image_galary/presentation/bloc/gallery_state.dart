import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/models/gallery_model.dart';

class GalleryState extends Equatable {
  final BlocStatus status;
  final List<GalleryCategory> categories;
  final int currentPage;
  final int totalPages;
  final bool hasNextPage;
  
  // Category content state
  final BlocStatus categoryContentStatus;
  final List<GalleryItem> categoryContent;
  final CategoryInfo? categoryInfo;
  final int contentCurrentPage;
  final int contentTotalPages;
  final bool contentHasNextPage;
  final bool isLoadingMore;

  const GalleryState({
    this.status = const BlocStatus.initial(),
    this.categories = const [],
    this.currentPage = 1,
    this.totalPages = 1,
    this.hasNextPage = false,
    this.categoryContentStatus = const BlocStatus.initial(),
    this.categoryContent = const [],
    this.categoryInfo,
    this.contentCurrentPage = 1,
    this.contentTotalPages = 1,
    this.contentHasNextPage = false,
    this.isLoadingMore = false,
  });

  GalleryState copyWith({
    BlocStatus? status,
    List<GalleryCategory>? categories,
    int? currentPage,
    int? totalPages,
    bool? hasNextPage,
    BlocStatus? categoryContentStatus,
    List<GalleryItem>? categoryContent,
    CategoryInfo? categoryInfo,
    int? contentCurrentPage,
    int? contentTotalPages,
    bool? contentHasNextPage,
    bool? isLoadingMore,
  }) {
    return GalleryState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      categoryContentStatus: categoryContentStatus ?? this.categoryContentStatus,
      categoryContent: categoryContent ?? this.categoryContent,
      categoryInfo: categoryInfo ?? this.categoryInfo,
      contentCurrentPage: contentCurrentPage ?? this.contentCurrentPage,
      contentTotalPages: contentTotalPages ?? this.contentTotalPages,
      contentHasNextPage: contentHasNextPage ?? this.contentHasNextPage,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
    );
  }

  @override
  List<Object?> get props => [
        status,
        categories,
        currentPage,
        totalPages,
        hasNextPage,
        categoryContentStatus,
        categoryContent,
        categoryInfo,
        contentCurrentPage,
        contentTotalPages,
        contentHasNextPage,
        isLoadingMore,
      ];
}

