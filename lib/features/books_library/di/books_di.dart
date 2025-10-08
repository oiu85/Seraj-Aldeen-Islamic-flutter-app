import 'package:get_it/get_it.dart';
import '../data/repositories/book_repository_impl.dart';
import '../domain/repositories/book_repository.dart';
import '../presentation/bloc/books_bloc.dart';

void setupBooksDependencies(GetIt getIt) {
  // Repository
  getIt.registerLazySingleton<BookRepository>(
    () => BookRepositoryImpl(getIt()),
  );

  // BLoC
  getIt.registerFactory<BooksBloc>(
    () => BooksBloc(getIt()),
  );
}
