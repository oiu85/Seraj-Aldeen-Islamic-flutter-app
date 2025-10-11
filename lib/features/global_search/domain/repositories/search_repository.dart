import 'package:dartz/dartz.dart';
import '../../data/models/search_model.dart';

abstract class SearchRepository {
  Future<Either<Exception, SearchResponse>> search({
    required String query,
  });
}



