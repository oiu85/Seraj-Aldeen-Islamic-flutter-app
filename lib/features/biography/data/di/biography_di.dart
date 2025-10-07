import 'package:get_it/get_it.dart';
import '../../../../core/network/network_client.dart';
import '../../domain/repositories/biography_repository.dart';
import '../../presentation/bloc/biography_bloc.dart';
import '../repositories/biography_repository_impl.dart';

void setupBiographyDependencies(GetIt getIt) {
  // Register repository
  getIt.registerLazySingleton<BiographyRepository>(
    () => BiographyRepositoryImpl(networkClient: getIt<NetworkClient>()),
  );

  // Register BLoC
  getIt.registerFactory<BiographyBloc>(
    () => BiographyBloc(biographyRepository: getIt<BiographyRepository>()),
  );
}

