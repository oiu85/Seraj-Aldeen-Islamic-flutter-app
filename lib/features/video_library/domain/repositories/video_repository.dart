import 'package:dartz/dartz.dart';
import '../../data/models/video_model.dart';

abstract class VideoRepository {
  Future<Either<Exception, VideoResponse>> getMainCategories();
  
  Future<Either<Exception, CategoryVideoContentResponse>> getCategoryContent({
    required int categoryId,
    required int page,
    required int perPage,
  });
  
  Future<Either<Exception, VideoDetailResponse>> getVideoDetail({
    required int videoId,
  });
}

