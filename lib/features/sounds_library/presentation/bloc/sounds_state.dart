import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/models/sound_model.dart';

class SoundsState extends Equatable {
  final BlocStatus status;
  final List<SoundCategory> categories;
  final PageInfo? pageInfo;
  final CategoryInfo? categoryInfo;
  final List<SoundItem> categoryContent;
  final bool hasNextPage;
  final int currentPage;

  const SoundsState({
    required this.status,
    this.categories = const [],
    this.pageInfo,
    this.categoryInfo,
    this.categoryContent = const [],
    this.hasNextPage = false,
    this.currentPage = 1,
  });

  SoundsState copyWith({
    BlocStatus? status,
    List<SoundCategory>? categories,
    PageInfo? pageInfo,
    CategoryInfo? categoryInfo,
    List<SoundItem>? categoryContent,
    bool? hasNextPage,
    int? currentPage,
  }) {
    return SoundsState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      pageInfo: pageInfo ?? this.pageInfo,
      categoryInfo: categoryInfo ?? this.categoryInfo,
      categoryContent: categoryContent ?? this.categoryContent,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [status, categories, pageInfo, categoryInfo, categoryContent, hasNextPage, currentPage];

  @override
  bool get stringify => true;
}
