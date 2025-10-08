import 'package:dartz/dartz.dart';
import '../../data/models/book_model.dart';

abstract class BookRepository {
  Future<Either<Exception, BookResponse>> getMainCategories();
  Future<Either<Exception, BookDetailResponse>> getBookDetail({required int bookId});
  Future<Either<Exception, CategoryBooksResponse>> getCategoryBooks({
    required int categoryId,
    required int page,
    required int perPage,
  });
}
