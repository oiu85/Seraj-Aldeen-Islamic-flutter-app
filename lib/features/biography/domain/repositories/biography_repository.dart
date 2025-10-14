import 'package:dartz/dartz.dart';
import '../../data/models/biography_model.dart';

abstract class BiographyRepository {
  Future<Either<Exception, BiographyResponse>> getPages({
    int page = 1,
    int perPage = 15,
  });
  
  Future<Either<Exception, PageDetailResponse>> getPageDetail({
    required int pageId,
  });
}

