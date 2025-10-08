import 'package:dartz/dartz.dart';
import '../../data/models/sound_model.dart';

abstract class SoundRepository {
  Future<Either<Exception, SoundResponse>> getSoundCategories();
  Future<Either<Exception, CategoryContentResponse>> getCategoryContent({
    required int categoryId,
    required int page,
    required int perPage,
  });
}
