import 'package:get_it/get_it.dart';
import '../data/repositories/video_repository_impl.dart';
import '../domain/repositories/video_repository.dart';
import '../presentation/bloc/videos_bloc.dart';

void setupVideosDependencies(GetIt getIt) {
  // Repository
  getIt.registerLazySingleton<VideoRepository>(
    () => VideoRepositoryImpl(getIt()),
  );

  // BLoC
  getIt.registerFactory<VideosBloc>(
    () => VideosBloc(getIt()),
  );
}

