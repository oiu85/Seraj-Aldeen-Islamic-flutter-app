import 'package:equatable/equatable.dart';

abstract class BenefitsEvent extends Equatable {
  const BenefitsEvent();

  @override
  List<Object?> get props => [];
}

class LoadArticleCategoriesEvent extends BenefitsEvent {
  const LoadArticleCategoriesEvent();
}

class LoadCategoryContentEvent extends BenefitsEvent {
  final int categoryId;
  final int page;
  final int perPage;

  const LoadCategoryContentEvent({
    required this.categoryId,
    required this.page,
    required this.perPage,
  });

  @override
  List<Object?> get props => [categoryId, page, perPage];
}
