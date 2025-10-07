import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/article_repository.dart';
import '../models/article_model.dart';

class BenefitsFatwasRepositoryImpl implements BenefitsFatwasRepository {
  final NetworkClient networkClient;

  BenefitsFatwasRepositoryImpl({required this.networkClient});

  @override
  Future<Either<Exception, ArticleResponse>> getArticleCategories() async {
    try {
      AppLogger.info('Fetching article categories');
      
      final response = await networkClient.get(ApiConfig.articlesCategories);
      
      if (response.statusCode == 200) {
        final articleResponse = ArticleResponse.fromJson(response.data);
        AppLogger.info('Article categories fetched successfully');
        return Right(articleResponse);
      } else {
        AppLogger.error('Failed to fetch article categories: ${response.statusCode}');
        return Left(Exception('Failed to fetch article categories'));
      }
    } on DioException catch (e) {
      AppLogger.apiError('DioException in getArticleCategories', e);
      return Left(Exception(e.message ?? 'Network error'));
    } catch (e) {
      AppLogger.error('Unexpected error in getArticleCategories: $e');
      return Left(Exception('Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Exception, CategoryContentResponse>> getCategoryContent({
    required int categoryId,
    required int page,
    required int perPage,
  }) async {
    try {
      AppLogger.info('Fetching category content for category $categoryId, page $page');
      
      final endpoint = '/categories/articles/$categoryId/content?per_page=$perPage&page=$page';
      final response = await networkClient.get(endpoint);
      
      if (response.statusCode == 200) {
        final categoryContentResponse = CategoryContentResponse.fromJson(response.data);
        AppLogger.info('Category content fetched successfully');
        return Right(categoryContentResponse);
      } else {
        AppLogger.error('Failed to fetch category content: ${response.statusCode}');
        return Left(Exception('Failed to fetch category content'));
      }
    } on DioException catch (e) {
      AppLogger.apiError('DioException in getCategoryContent', e);
      return Left(Exception(e.message ?? 'Network error'));
    } catch (e) {
      AppLogger.error('Unexpected error in getCategoryContent: $e');
      return Left(Exception('Unexpected error: $e'));
    }
  }
}
