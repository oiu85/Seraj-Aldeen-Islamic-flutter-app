import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/menu_repository.dart';
import '../models/menu_model.dart';

class MenuRepositoryImpl implements MenuRepository {
  final NetworkClient networkClient;

  MenuRepositoryImpl({required this.networkClient});

  @override
  Future<Either<Exception, MenuResponse>> getBottomHeaderMenus() async {
    try {
      AppLogger.info('Fetching bottom header menus');
      
      final response = await networkClient.get(ApiConfig.menusBottomHeader);
      
      if (response.statusCode == 200) {
        // Validate that response.data is a Map before parsing
        if (response.data is! Map<String, dynamic>) {
          AppLogger.error('Invalid response format: expected JSON object, got ${response.data.runtimeType}');
          return Left(Exception('Invalid response format from server'));
        }
        
        final menuResponse = MenuResponse.fromJson(response.data as Map<String, dynamic>);
        AppLogger.info('Bottom header menus fetched successfully');
        return Right(menuResponse);
      } else {
        AppLogger.error('Failed to fetch menus: ${response.statusCode}');
        return Left(Exception('Failed to fetch menus: ${response.statusCode}'));
      }
    } on DioException catch (e) {
      AppLogger.apiError('DioException in getBottomHeaderMenus', e);
      return Left(Exception(e.message ?? 'Network error'));
    } catch (e) {
      AppLogger.error('Unexpected error in getBottomHeaderMenus: $e');
      return Left(Exception('Unexpected error: $e'));
    }
  }
}

