import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/contact_repository.dart';
import '../models/contact_model.dart';

class ContactRepositoryImpl implements ContactRepository {
  final NetworkClient networkClient;

  ContactRepositoryImpl({required this.networkClient});

  @override
  Future<Either<Exception, ContactResponse>> submitContactForm(
    ContactRequest request,
  ) async {
    try {
      AppLogger.info('Submitting contact form');
      
      final response = await networkClient.post(
        ApiConfig.contactUs,
        data: request.toJson(),
      );
      
      if (response.statusCode == 200 || response.statusCode == 201) {
        final contactResponse = ContactResponse.fromJson(response.data);
        AppLogger.info('Contact form submitted successfully');
        return Right(contactResponse);
      } else {
        AppLogger.error('Failed to submit contact form: ${response.statusCode}');
        return Left(Exception('Failed to submit contact form'));
      }
    } on DioException catch (e) {
      AppLogger.apiError('DioException in submitContactForm', e);
      return Left(Exception(e.message ?? 'Network error'));
    } catch (e) {
      AppLogger.error('Unexpected error in submitContactForm: $e');
      return Left(Exception('Unexpected error: $e'));
    }
  }
}

