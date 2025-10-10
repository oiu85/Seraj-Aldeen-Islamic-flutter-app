import 'package:dartz/dartz.dart';
import '../../data/models/gallery_model.dart';

abstract class GalleryRepository {
  Future<Either<Exception, GalleryResponse>> getMainCategories({
    required int page,
    required int perPage,
  });
}

