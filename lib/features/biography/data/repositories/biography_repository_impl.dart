import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/biography_repository.dart';
import '../models/biography_model.dart';

class BiographyRepositoryImpl implements BiographyRepository {
  final NetworkClient networkClient;

  BiographyRepositoryImpl({required this.networkClient});

  @override
  Future<Either<Exception, BiographyResponse>> getPages({
    int page = 1,
    int perPage = 15,
  }) async {
    try {
      AppLogger.info('Fetching pages: page=$page, perPage=$perPage');
      
      final response = await networkClient.get(
        ApiConfig.pages,
        queryParameters: {
          'page': page,
          'per_page': perPage,
        },
      );
      
      if (response.statusCode == 200) {
        final biographyResponse = BiographyResponse.fromJson(response.data);
        AppLogger.info('Pages fetched successfully');
        return Right(biographyResponse);
      } else {
        AppLogger.error('Failed to fetch pages: ${response.statusCode}');
        return Left(Exception('Failed to fetch pages'));
      }
    } on DioException catch (e) {
      AppLogger.apiError('DioException in getPages', e);
      return Left(Exception(e.message ?? 'Network error'));
    } catch (e) {
      AppLogger.error('Unexpected error in getPages: $e');
      return Left(Exception('Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Exception, PageDetailResponse>> getPageDetail({
    required int pageId,
  }) async {
    try {
      if (pageId <= 0) {
        AppLogger.error('Invalid page ID: $pageId');
        return Left(Exception('Invalid page ID'));
      }
      
      AppLogger.info('Fetching page detail for ID: $pageId');
      
      final endpoint = '${ApiConfig.pages}/$pageId';
      final response = await networkClient.get(endpoint);
      
      if (response.statusCode == 200 && response.data != null) {
        final pageDetailResponse = PageDetailResponse.fromJson(response.data);
        
        if (pageDetailResponse.success == true && pageDetailResponse.data != null) {
          AppLogger.info('Page detail fetched successfully');
          return Right(pageDetailResponse);
        } else {
          AppLogger.error('Invalid page detail response structure');
          return Left(Exception('Invalid response structure'));
        }
      } else {
        AppLogger.error('HTTP error ${response.statusCode}');
        return Left(Exception('HTTP error ${response.statusCode}'));
      }
    } on DioException catch (e) {
      AppLogger.apiError('DioException in getPageDetail', e);
      return Left(Exception(e.message ?? 'Network error'));
    } catch (e) {
      AppLogger.error('Unexpected error in getPageDetail: $e');
      return Left(Exception('Parse error'));
    }
  }
}

