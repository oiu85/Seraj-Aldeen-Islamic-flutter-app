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
  Future<Either<Exception, SoundResponse>> getSoundCategories({
    int page = 1,
    int perPage = 10,
  }) async {
    try {
      // Validate pagination parameters
      if (page <= 0 || perPage <= 0) {
        AppLogger.error('Invalid pagination params: page=$page, perPage=$perPage');
        return Left(Exception('Invalid pagination parameters'));
      }
      
      AppLogger.info('Fetching sound categories - page: $page, perPage: $perPage');
      
      final endpoint = '${ApiConfig.soundsCategories}?page=$page&per_page=$perPage';
      final response = await networkClient.get(endpoint);
      
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

  @override
  Future<Either<Exception, AudioBookSubcategoriesResponse>> getAudioBookSubcategories() async {
    try {
      const audioBookCategoryId = 42; // Static ID for audio books category
      AppLogger.info('Fetching audio book subcategories for category $audioBookCategoryId');
      
      final endpoint = '/categories/sounds/$audioBookCategoryId/subcategories';
      final response = await networkClient.get(endpoint);
      
      if (response.statusCode == 200 && response.data != null) {
        final audioBookResponse = AudioBookSubcategoriesResponse.fromJson(response.data);
        
        if (_isValidAudioBookResponse(audioBookResponse)) {
          AppLogger.info('Audio book subcategories fetched successfully');
          return Right(audioBookResponse);
        } else {
          AppLogger.error('Invalid audio book response structure');
          return Left(Exception('Invalid response structure'));
        }
      } else {
        AppLogger.error('HTTP error ${response.statusCode}');
        return Left(Exception('HTTP error ${response.statusCode}'));
      }
    } on DioException catch (e) {
      AppLogger.apiError('DioException in getAudioBookSubcategories', e);
      return Left(Exception(e.message ?? 'Network error'));
    } catch (e) {
      AppLogger.error('Unexpected error in getAudioBookSubcategories: $e');
      return Left(Exception('Parse error: $e'));
    }
  }
  
  bool _isValidAudioBookResponse(AudioBookSubcategoriesResponse response) {
    return response.success == true && response.data != null;
  }

  @override
  Future<Either<Exception, SoundDetailResponse>> getSoundDetail({
    required int soundId,
  }) async {
    try {
      if (soundId <= 0) {
        AppLogger.error('Invalid sound ID: $soundId');
        return Left(Exception('Invalid sound ID'));
      }
      
      AppLogger.info('Fetching sound detail for sound ID: $soundId');
      
      final endpoint = '/sounds/$soundId';
      final response = await networkClient.get(endpoint);
      
      if (response.statusCode == 200 && response.data != null) {
        final soundDetailResponse = SoundDetailResponse.fromJson(response.data);
        
        if (_isValidSoundDetailResponse(soundDetailResponse)) {
          AppLogger.info('Sound detail fetched successfully');
          return Right(soundDetailResponse);
        } else {
          AppLogger.error('Invalid sound detail response structure');
          return Left(Exception('Invalid response structure'));
        }
      } else {
        AppLogger.error('HTTP error ${response.statusCode}');
        return Left(Exception('HTTP error ${response.statusCode}'));
      }
    } on DioException catch (e) {
      AppLogger.apiError('DioException in getSoundDetail', e);
      return Left(Exception(e.message ?? 'Network error'));
    } catch (e) {
      AppLogger.error('Unexpected error in getSoundDetail: $e');
      return Left(Exception('Parse error'));
    }
  }
  
  bool _isValidSoundDetailResponse(SoundDetailResponse response) {
    return response.success == true && response.data != null;
  }
}
