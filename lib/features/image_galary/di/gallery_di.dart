import 'package:get_it/get_it.dart';
import '../data/repositories/gallery_repository_impl.dart';
import '../domain/repositories/gallery_repository.dart';
import '../presentation/bloc/gallery_bloc.dart';

void setupGalleryDependencies(GetIt getIt) {
  // Repository
  getIt.registerLazySingleton<GalleryRepository>(
    () => GalleryRepositoryImpl(getIt()),
  );

  // BLoC
  getIt.registerFactory<GalleryBloc>(
    () => GalleryBloc(getIt()),
  );
}

