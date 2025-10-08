import 'package:dartz/dartz.dart';
import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/video_repository.dart';
import '../models/video_model.dart';

class VideoRepositoryImpl implements VideoRepository {
  final NetworkClient _networkClient;

  VideoRepositoryImpl(this._networkClient);

  @override
  Future<Either<Exception, VideoResponse>> getMainCategories() async {
    try {
      AppLogger.info('Fetching main video categories from: ${ApiConfig.videosCategories}');
      
      final response = await _networkClient.get(ApiConfig.videosCategories);
      
      if (response.statusCode == 200 && response.data != null) {
        final videoResponse = VideoResponse.fromJson(response.data);
        
        if (videoResponse.success == true && videoResponse.data != null) {
          AppLogger.info('Successfully fetched ${videoResponse.data?.categories?.length ?? 0} video categories');
          return Right(videoResponse);
        } else {
          final errorMsg = videoResponse.message ?? 'Failed to fetch video categories';
          AppLogger.error('API returned unsuccessful response: $errorMsg');
          return Left(Exception(errorMsg));
        }
      } else {
        final errorMsg = 'Invalid response: status=${response.statusCode}';
        AppLogger.error(errorMsg);
        return Left(Exception(errorMsg));
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error fetching video categories: $e', e, stackTrace);
      return Left(Exception('Failed to fetch video categories: $e'));
    }
  }

  @override
  Future<Either<Exception, CategoryVideoContentResponse>> getCategoryContent({
    required int categoryId,
    required int page,
    required int perPage,
  }) async {
    try {
      // Input validation
      if (categoryId <= 0) {
        AppLogger.warning('Invalid category ID: $categoryId');
        return Left(Exception('Invalid category ID'));
      }
      
      if (page <= 0 || perPage <= 0) {
        AppLogger.warning('Invalid pagination parameters: page=$page, perPage=$perPage');
        return Left(Exception('Invalid pagination parameters'));
      }

      final endpoint = '/categories/videos/$categoryId/content?page=$page&per_page=$perPage';
      AppLogger.info('Fetching video category content from: $endpoint');
      
      final response = await _networkClient.get(endpoint);
      
      if (response.statusCode == 200 && response.data != null) {
        final contentResponse = CategoryVideoContentResponse.fromJson(response.data);
        
        if (contentResponse.success == true && contentResponse.data != null) {
          final contentCount = contentResponse.data?.content?.length ?? 0;
          AppLogger.info('Successfully fetched $contentCount videos for category $categoryId (page $page)');
          return Right(contentResponse);
        } else {
          final errorMsg = contentResponse.message ?? 'Failed to fetch category content';
          AppLogger.error('API returned unsuccessful response: $errorMsg');
          return Left(Exception(errorMsg));
        }
      } else {
        final errorMsg = 'Invalid response: status=${response.statusCode}';
        AppLogger.error(errorMsg);
        return Left(Exception(errorMsg));
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error fetching video category content: $e', e, stackTrace);
      return Left(Exception('Failed to fetch category content: $e'));
    }
  }

  @override
  Future<Either<Exception, VideoDetailResponse>> getVideoDetail({
    required int videoId,
  }) async {
    try {
      if (videoId <= 0) {
        AppLogger.warning('Invalid video ID: $videoId');
        return Left(Exception('Invalid video ID'));
      }

      final endpoint = '/videos/$videoId';
      AppLogger.info('Fetching video detail from: $endpoint');
      
      final response = await _networkClient.get(endpoint);
      
      if (response.statusCode == 200 && response.data != null) {
        final detailResponse = VideoDetailResponse.fromJson(response.data);
        
        if (detailResponse.success == true && detailResponse.data != null) {
          AppLogger.info('Successfully fetched video detail for video $videoId');
          return Right(detailResponse);
        } else {
          final errorMsg = detailResponse.message ?? 'Failed to fetch video detail';
          AppLogger.error('API returned unsuccessful response: $errorMsg');
          return Left(Exception(errorMsg));
        }
      } else {
        final errorMsg = 'Invalid response: status=${response.statusCode}';
        AppLogger.error(errorMsg);
        return Left(Exception(errorMsg));
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error fetching video detail: $e', e, stackTrace);
      return Left(Exception('Failed to fetch video detail: $e'));
    }
  }
}

