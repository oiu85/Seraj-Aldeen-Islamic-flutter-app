import 'package:get_it/get_it.dart';
import '../../../../core/network/network_client.dart';
import '../../domain/repositories/article_repository.dart';
import '../../presentation/bloc/benefits_bloc.dart';
import '../repositories/article_repository_impl.dart';

void setupBenefitsDependencies(GetIt getIt) {
  getIt.registerLazySingleton<BenefitsFatwasRepository>(
    () => BenefitsFatwasRepositoryImpl(networkClient: getIt<NetworkClient>()),
  );

  getIt.registerFactory<BenefitsBloc>(
    () => BenefitsBloc(benefitsFatwasRepository: getIt<BenefitsFatwasRepository>()),
  );
}
