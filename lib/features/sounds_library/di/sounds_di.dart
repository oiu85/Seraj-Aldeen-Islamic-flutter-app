import 'package:get_it/get_it.dart';
import '../../../core/network/network_client.dart';
import '../domain/repositories/sound_repository.dart';
import '../presentation/bloc/sounds_bloc.dart';
import '../data/repositories/sound_repository_impl.dart';

void setupSoundsDependencies(GetIt getIt) {
  getIt.registerLazySingleton<SoundRepository>(
    () => SoundRepositoryImpl(networkClient: getIt<NetworkClient>()),
  );

  getIt.registerFactory<SoundsBloc>(
    () => SoundsBloc(soundRepository: getIt<SoundRepository>()),
  );
}
