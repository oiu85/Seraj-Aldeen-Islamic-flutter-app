import 'package:get_it/get_it.dart';

import '../../features/biography/data/di/biography_di.dart';
import '../../features/home/data/di/home_di.dart';
import '../network/network_client.dart';


/// Global GetIt instance
final GetIt getIt = GetIt.instance;

/// Initialize all app dependencies
void setupAppDependencies() {
  // Register core dependencies
  getIt.registerLazySingleton<NetworkClient>(() => NetworkClient());
  
  // Register feature dependencies
  setupHomeDependencies(getIt);
  setupBiographyDependencies(getIt);
}
