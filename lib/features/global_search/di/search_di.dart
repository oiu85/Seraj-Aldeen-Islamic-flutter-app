import 'package:get_it/get_it.dart';
import '../data/repositories/search_repository_impl.dart';
import '../domain/repositories/search_repository.dart';
import '../presentation/bloc/search_bloc.dart';

void setupSearchDependencies(GetIt getIt) {
  getIt.registerLazySingleton<SearchRepository>(
    () => SearchRepositoryImpl(getIt()),
  );
  
  getIt.registerFactory<SearchBloc>(
    () => SearchBloc(searchRepository: getIt()),
  );
}



