import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/models/article_model.dart';

class BenefitsState extends Equatable {
  final BlocStatus status;
  final List<ArticleCategory> categories;
  final List<ArticleItem> categoryContent;
  final bool hasNextPage;
  final int currentPage;

  const BenefitsState({
    required this.status,
    this.categories = const [],
    this.categoryContent = const [],
    this.hasNextPage = false,
    this.currentPage = 1,
  });

  BenefitsState copyWith({
    BlocStatus? status,
    List<ArticleCategory>? categories,
    List<ArticleItem>? categoryContent,
    bool? hasNextPage,
    int? currentPage,
  }) {
    return BenefitsState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      categoryContent: categoryContent ?? this.categoryContent,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [status, categories, categoryContent, hasNextPage, currentPage];

  @override
  bool get stringify => true;
}
