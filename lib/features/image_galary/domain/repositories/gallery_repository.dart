import 'package:dartz/dartz.dart';
import '../../data/models/gallery_model.dart';

abstract class GalleryRepository {
  Future<Either<Exception, GalleryResponse>> getMainCategories({
    required int page,
    required int perPage,
  });
  
  Future<Either<Exception, CategoryContentResponse>> getCategoryContent({
    required int categoryId,
    required int page,
    required int perPage,
  });
}

