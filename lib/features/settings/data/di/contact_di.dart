import 'package:get_it/get_it.dart';
import '../../../../core/network/network_client.dart';
import '../../domain/repositories/contact_repository.dart';
import '../../presentation/bloc/contact_bloc.dart';
import '../repositories/contact_repository_impl.dart';

void setupContactDependencies(GetIt getIt) {
  // Register repository
  getIt.registerLazySingleton<ContactRepository>(
    () => ContactRepositoryImpl(networkClient: getIt<NetworkClient>()),
  );

  // Register BLoC
  getIt.registerFactory<ContactBloc>(
    () => ContactBloc(contactRepository: getIt<ContactRepository>()),
  );
}

