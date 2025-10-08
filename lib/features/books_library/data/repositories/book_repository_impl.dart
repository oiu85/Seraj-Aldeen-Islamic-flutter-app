import 'package:dartz/dartz.dart';
import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/book_repository.dart';
import '../models/book_model.dart';

class BookRepositoryImpl implements BookRepository {
  final NetworkClient _networkClient;

  BookRepositoryImpl(this._networkClient);

  @override
  Future<Either<Exception, BookResponse>> getMainCategories() async {
    try {
      AppLogger.info('Fetching main book categories from: ${ApiConfig.booksCategories}');
      
      final response = await _networkClient.get(ApiConfig.booksCategories);
      
      if (response.statusCode == 200 && response.data != null) {
        final bookResponse = BookResponse.fromJson(response.data);
        
        if (bookResponse.success == true && bookResponse.data != null) {
          AppLogger.info('Successfully fetched ${bookResponse.data?.categories?.length ?? 0} book categories');
          return Right(bookResponse);
        } else {
          final errorMsg = bookResponse.message ?? 'Failed to fetch book categories';
          AppLogger.error('API returned unsuccessful response: $errorMsg');
          return Left(Exception(errorMsg));
        }
      } else {
        final errorMsg = 'Invalid response: status=${response.statusCode}';
        AppLogger.error(errorMsg);
        return Left(Exception(errorMsg));
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error fetching book categories: $e', e, stackTrace);
      return Left(Exception('Failed to fetch book categories: $e'));
    }
  }

  @override
  Future<Either<Exception, BookDetailResponse>> getBookDetail({required int bookId}) async {
    try {
      AppLogger.info('Fetching book detail for ID: $bookId');
      
      final response = await _networkClient.get('/books/$bookId');
      
      if (response.statusCode == 200 && response.data != null) {
        final bookDetailResponse = BookDetailResponse.fromJson(response.data);
        
        if (bookDetailResponse.success == true && bookDetailResponse.data != null) {
          AppLogger.info('Successfully fetched book detail for ID: $bookId');
          return Right(bookDetailResponse);
        } else {
          final errorMsg = bookDetailResponse.message ?? 'Failed to fetch book detail';
          AppLogger.error('API returned unsuccessful response: $errorMsg');
          return Left(Exception(errorMsg));
        }
      } else {
        final errorMsg = 'Invalid response: status=${response.statusCode}';
        AppLogger.error(errorMsg);
        return Left(Exception(errorMsg));
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error fetching book detail: $e', e, stackTrace);
      return Left(Exception('Failed to fetch book detail: $e'));
    }
  }

  @override
  Future<Either<Exception, CategoryBooksResponse>> getCategoryBooks({
    required int categoryId,
    required int page,
    required int perPage,
  }) async {
    try {
      AppLogger.info('Fetching category books for category: $categoryId, page: $page');
      
      final response = await _networkClient.get(
        '/categories/books/$categoryId/content',
        queryParameters: {
          'page': page,
          'per_page': perPage,
        },
      );
      
      if (response.statusCode == 200 && response.data != null) {
        final categoryBooksResponse = CategoryBooksResponse.fromJson(response.data);
        
        if (categoryBooksResponse.success == true && categoryBooksResponse.data != null) {
          AppLogger.info('Successfully fetched ${categoryBooksResponse.data?.content?.length ?? 0} books');
          return Right(categoryBooksResponse);
        } else {
          final errorMsg = categoryBooksResponse.message ?? 'Failed to fetch category books';
          AppLogger.error('API returned unsuccessful response: $errorMsg');
          return Left(Exception(errorMsg));
        }
      } else {
        final errorMsg = 'Invalid response: status=${response.statusCode}';
        AppLogger.error(errorMsg);
        return Left(Exception(errorMsg));
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error fetching category books: $e', e, stackTrace);
      return Left(Exception('Failed to fetch category books: $e'));
    }
  }
}
