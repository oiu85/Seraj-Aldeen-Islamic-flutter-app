import 'package:get_it/get_it.dart';
import '../../../../core/network/network_client.dart';
import '../../domain/repositories/menu_repository.dart';
import '../../presentation/bloc/home_bloc.dart';
import '../repositories/menu_repository_impl.dart';

void setupHomeDependencies(GetIt getIt) {
  // Register repository
  getIt.registerLazySingleton<MenuRepository>(
    () => MenuRepositoryImpl(networkClient: getIt<NetworkClient>()),
  );

  // Register BLoC
  getIt.registerFactory<HomeBloc>(
    () => HomeBloc(menuRepository: getIt<MenuRepository>()),
  );
}

