import 'package:dartz/dartz.dart';
import '../../data/models/sound_model.dart';

abstract class SoundRepository {
  Future<Either<Exception, SoundResponse>> getSoundCategories();
}
