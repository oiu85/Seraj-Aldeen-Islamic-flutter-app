import 'package:dartz/dartz.dart';
import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/gallery_repository.dart';
import '../models/gallery_model.dart';

class GalleryRepositoryImpl implements GalleryRepository {
  final NetworkClient _networkClient;

  GalleryRepositoryImpl(this._networkClient);

  @override
  Future<Either<Exception, GalleryResponse>> getMainCategories({
    required int page,
    required int perPage,
  }) async {
    try {
      AppLogger.info('Fetching gallery categories: page=$page, perPage=$perPage');
      
      final response = await _networkClient.get(
        ApiConfig.photoGalleriesCategories,
        queryParameters: {
          'page': page,
          'per_page': perPage,
        },
      );
      
      if (response.statusCode == 200 && response.data != null) {
        final galleryResponse = GalleryResponse.fromJson(response.data);
        
        if (galleryResponse.success == true && galleryResponse.data != null) {
          AppLogger.info('Successfully fetched ${galleryResponse.data?.categories?.length ?? 0} gallery categories');
          return Right(galleryResponse);
        } else {
          final errorMsg = galleryResponse.message ?? 'Failed to fetch gallery categories';
          AppLogger.error('API returned unsuccessful response: $errorMsg');
          return Left(Exception(errorMsg));
        }
      } else {
        final errorMsg = 'Invalid response: status=${response.statusCode}';
        AppLogger.error(errorMsg);
        return Left(Exception(errorMsg));
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error fetching gallery categories: $e', e, stackTrace);
      return Left(Exception('Failed to fetch gallery categories: $e'));
    }
  }
}

