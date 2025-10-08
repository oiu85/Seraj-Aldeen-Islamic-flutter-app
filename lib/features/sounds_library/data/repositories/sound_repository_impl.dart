import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/sound_repository.dart';
import '../models/sound_model.dart';

class SoundRepositoryImpl implements SoundRepository {
  final NetworkClient networkClient;

  SoundRepositoryImpl({required this.networkClient});

  @override
  Future<Either<Exception, SoundResponse>> getSoundCategories() async {
    try {
      AppLogger.info('Fetching sound categories');
      
      final response = await networkClient.get(ApiConfig.soundsCategories);
      
      if (response.statusCode == 200 && response.data != null) {
        final soundResponse = SoundResponse.fromJson(response.data);
        
        if (_isValidSoundResponse(soundResponse)) {
          AppLogger.info('Sound categories fetched successfully');
          return Right(soundResponse);
        } else {
          AppLogger.error('Invalid sound response structure');
          return Left(Exception('Invalid response structure'));
        }
      } else {
        AppLogger.error('HTTP error ${response.statusCode}');
        return Left(Exception('HTTP error ${response.statusCode}'));
      }
    } on DioException catch (e) {
      AppLogger.apiError('DioException in getSoundCategories', e);
      return Left(Exception(e.message ?? 'Network error'));
    } catch (e) {
      AppLogger.error('Unexpected error in getSoundCategories: $e');
      return Left(Exception('Parse error'));
    }
  }
  
  bool _isValidSoundResponse(SoundResponse response) {
    return response.success == true && response.data != null;
  }

  @override
  Future<Either<Exception, CategoryContentResponse>> getCategoryContent({
    required int categoryId,
    required int page,
    required int perPage,
  }) async {
    try {
      // Validate input before making API call
      if (categoryId <= 0) {
        AppLogger.error('Invalid category ID: $categoryId');
        return Left(Exception('Invalid category ID'));
      }
      
      if (page <= 0 || perPage <= 0) {
        AppLogger.error('Invalid pagination params: page=$page, perPage=$perPage');
        return Left(Exception('Invalid pagination parameters'));
      }
      
      AppLogger.info('Fetching category $categoryId content, page $page');
      
      final endpoint = '/categories/sounds/$categoryId/content?per_page=$perPage&page=$page';
      final response = await networkClient.get(endpoint);
      
      if (response.statusCode == 200 && response.data != null) {
        final categoryContentResponse = CategoryContentResponse.fromJson(response.data);
        
        if (_isValidCategoryContentResponse(categoryContentResponse)) {
          AppLogger.info('Category content fetched successfully');
          return Right(categoryContentResponse);
        } else {
          AppLogger.error('Invalid category content response structure');
          return Left(Exception('Invalid response structure'));
        }
      } else {
        AppLogger.error('HTTP error ${response.statusCode}');
        return Left(Exception('HTTP error ${response.statusCode}'));
      }
    } on DioException catch (e) {
      AppLogger.apiError('DioException in getCategoryContent', e);
      return Left(Exception(e.message ?? 'Network error'));
    } catch (e) {
      AppLogger.error('Unexpected error in getCategoryContent: $e');
      return Left(Exception('Parse error'));
    }
  }
  
  bool _isValidCategoryContentResponse(CategoryContentResponse response) {
    return response.success == true && response.data != null;
  }
}
