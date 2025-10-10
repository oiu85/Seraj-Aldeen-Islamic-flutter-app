import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/models/gallery_model.dart';

class GalleryState extends Equatable {
  final BlocStatus status;
  final List<GalleryCategory> categories;
  final int currentPage;
  final int totalPages;
  final bool hasNextPage;

  const GalleryState({
    this.status = const BlocStatus.initial(),
    this.categories = const [],
    this.currentPage = 1,
    this.totalPages = 1,
    this.hasNextPage = false,
  });

  GalleryState copyWith({
    BlocStatus? status,
    List<GalleryCategory>? categories,
    int? currentPage,
    int? totalPages,
    bool? hasNextPage,
  }) {
    return GalleryState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        categories,
        currentPage,
        totalPages,
        hasNextPage,
      ];
}

