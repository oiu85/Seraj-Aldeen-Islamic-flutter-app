import 'package:get_it/get_it.dart';

import '../../features/benefits_fatwas/data/di/benefits_di.dart';
import '../../features/biography/data/di/biography_di.dart';
import '../../features/books_library/di/books_di.dart';
import '../../features/home/data/di/home_di.dart';
import '../../features/sounds_library/di/sounds_di.dart';
import '../../features/video_library/di/videos_di.dart';
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
  setupBenefitsDependencies(getIt);
  setupSoundsDependencies(getIt);
  setupVideosDependencies(getIt);
  setupBooksDependencies(getIt);
}
