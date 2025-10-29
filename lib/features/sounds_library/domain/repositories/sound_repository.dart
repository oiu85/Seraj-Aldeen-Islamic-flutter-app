import 'package:dartz/dartz.dart';
import '../../data/models/sound_model.dart';

abstract class SoundRepository {
  Future<Either<Exception, SoundResponse>> getSoundCategories({
    int page = 1,
    int perPage = 10,
  });
  Future<Either<Exception, CategoryContentResponse>> getCategoryContent({
    required int categoryId,
    required int page,
    required int perPage,
  });
  Future<Either<Exception, AudioBookSubcategoriesResponse>> getAudioBookSubcategories();
  Future<Either<Exception, SoundDetailResponse>> getSoundDetail({
    required int soundId,
  });
}
