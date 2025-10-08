import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/models/video_model.dart';

class VideosState extends Equatable {
  final BlocStatus status;
  final List<VideoCategory> mainCategories;
  final VideoCategoryInfo? selectedCategoryInfo;
  final List<VideoItem> categoryVideos;
  final bool hasNextPage;
  final int currentPage;
  final int? selectedCategoryId;

  const VideosState({
    this.status = const BlocStatus.initial(),
    this.mainCategories = const [],
    this.selectedCategoryInfo,
    this.categoryVideos = const [],
    this.hasNextPage = false,
    this.currentPage = 1,
    this.selectedCategoryId,
  });

  VideosState copyWith({
    BlocStatus? status,
    List<VideoCategory>? mainCategories,
    VideoCategoryInfo? selectedCategoryInfo,
    List<VideoItem>? categoryVideos,
    bool? hasNextPage,
    int? currentPage,
    int? selectedCategoryId,
  }) {
    return VideosState(
      status: status ?? this.status,
      mainCategories: mainCategories ?? this.mainCategories,
      selectedCategoryInfo: selectedCategoryInfo ?? this.selectedCategoryInfo,
      categoryVideos: categoryVideos ?? this.categoryVideos,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      currentPage: currentPage ?? this.currentPage,
      selectedCategoryId: selectedCategoryId ?? this.selectedCategoryId,
    );
  }

  @override
  List<Object?> get props => [
        status,
        mainCategories,
        selectedCategoryInfo,
        categoryVideos,
        hasNextPage,
        currentPage,
        selectedCategoryId,
      ];
}

