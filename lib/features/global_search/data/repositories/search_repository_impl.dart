import 'package:dartz/dartz.dart';
import 'package:seraj_aldean_flutter_app/core/network/network_client.dart';
import 'package:seraj_aldean_flutter_app/config/api_config.dart';
import '../../domain/repositories/search_repository.dart';
import '../models/search_model.dart';
import 'package:flutter/foundation.dart';

class SearchRepositoryImpl implements SearchRepository {
  final NetworkClient networkClient;

  SearchRepositoryImpl(this.networkClient);

  @override
  Future<Either<Exception, SearchResponse>> search({
    required String query,
  }) async {
    try {
      // Validate input
      if (query.trim().isEmpty) {
        return Left(Exception('Search query cannot be empty'));
      }

      debugPrint('🔍 Searching for: $query');

      // Make API request
      final response = await networkClient.get(
        ApiConfig.search,
        queryParameters: {'q': query},
      );

      debugPrint('🔍 Search response received');

      // Parse response
      final searchResponse = SearchResponse.fromJson(response.data as Map<String, dynamic>);

      if (searchResponse.success == true) {
        debugPrint('✅ Search successful: ${searchResponse.data?.total_results ?? 0} results found');
        return Right(searchResponse);
      } else {
        debugPrint('❌ Search failed: ${searchResponse.message}');
        return Left(Exception(searchResponse.message ?? 'Search failed'));
      }
    } catch (e, stackTrace) {
      debugPrint('❌ Search error: $e');
      debugPrint('Stack trace: $stackTrace');
      return Left(Exception('Failed to perform search: $e'));
    }
  }
}

