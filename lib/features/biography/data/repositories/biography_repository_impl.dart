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
}

