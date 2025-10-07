import 'package:dartz/dartz.dart';
import '../../data/models/article_model.dart';

abstract class BenefitsFatwasRepository {
  Future<Either<Exception, ArticleResponse>> getArticleCategories();
  Future<Either<Exception, CategoryContentResponse>> getCategoryContent({
    required int categoryId,
    required int page,
    required int perPage,
  });
}
