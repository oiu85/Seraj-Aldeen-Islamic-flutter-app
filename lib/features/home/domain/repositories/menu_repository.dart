import 'package:dartz/dartz.dart';
import '../../data/models/menu_model.dart';

abstract class MenuRepository {
  Future<Either<Exception, MenuResponse>> getBottomHeaderMenus();
}

