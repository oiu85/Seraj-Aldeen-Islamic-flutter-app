import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/book_repository.dart';
import 'books_event.dart';
import 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final BookRepository _repository;
  final Dio _dio = Dio();

  BooksBloc(this._repository) : super(const BooksState()) {
    on<LoadBookMainCategoriesEvent>(_onLoadBookMainCategories);
    on<LoadCategoryBooksEvent>(_onLoadCategoryBooks);
    on<LoadMoreCategoryBooksEvent>(_onLoadMoreCategoryBooks);
    on<LoadBookDetailEvent>(_onLoadBookDetail);
    on<DownloadBookEvent>(_onDownloadBook);
    on<ResetBookDetailEvent>(_onResetBookDetail);
  }

  Future<void> _onLoadBookMainCategories(
    LoadBookMainCategoriesEvent event,
    Emitter<BooksState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const BlocStatus.loading()));
      AppLogger.info('Loading main book categories...');

      final result = await _repository.getMainCategories();

      await result.fold(
        (exception) async {
          AppLogger.error('Failed to load main book categories: $exception');
          emit(state.copyWith(
            status: BlocStatus.fail(error: exception.toString()),
          ));
        },
        (response) async {
          if (response.data?.categories != null) {
            final categories = response.data!.categories!;
            final pageInfo = response.data!.pages ?? [];
            
            AppLogger.info('Loaded ${categories.length} main book categories');

            emit(state.copyWith(
              status: const BlocStatus.success(),
              categories: categories,
              pageInfo: pageInfo,
            ));
          } else {
            AppLogger.warning('No book categories found in response');
            emit(state.copyWith(
              status: const BlocStatus.success(),
              categories: [],
              pageInfo: [],
            ));
          }
        },
      );
    } catch (e, stackTrace) {
      AppLogger.error('Unexpected error loading main book categories', e, stackTrace);
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'Unexpected error: $e'),
      ));
    }
  }

  Future<void> _onLoadCategoryBooks(
    LoadCategoryBooksEvent event,
    Emitter<BooksState> emit,
  ) async {
    try {
      emit(state.copyWith(categoryBooksStatus: const BlocStatus.loading()));
      AppLogger.info('Loading books for category ${event.categoryId}...');

      final result = await _repository.getCategoryBooks(
        categoryId: event.categoryId,
        page: event.page,
        perPage: event.perPage,
      );

      await result.fold(
        (exception) async {
          AppLogger.error('Failed to load category books: $exception');
          emit(state.copyWith(
            categoryBooksStatus: BlocStatus.fail(error: exception.toString()),
          ));
        },
        (response) async {
          final booksData = response.data;
          final books = booksData?.content ?? [];
          final pagination = booksData?.pagination;
          final categoryInfo = booksData?.category;

          AppLogger.info('Loaded ${books.length} books for category ${event.categoryId}');

          emit(state.copyWith(
            categoryBooksStatus: const BlocStatus.success(),
            categoryBooks: List.from(books),
            currentPage: pagination?.currentPage ?? 1,
            totalPages: pagination?.totalPages ?? 1,
            hasNextPage: pagination?.hasNextPage ?? false,
            categoryInfo: categoryInfo,
            isLoadingMore: false,
          ));
        },
      );
    } catch (e, stackTrace) {
      AppLogger.error('Unexpected error loading category books', e, stackTrace);
      emit(state.copyWith(
        categoryBooksStatus: BlocStatus.fail(error: 'Unexpected error: $e'),
      ));
    }
  }

  Future<void> _onLoadMoreCategoryBooks(
    LoadMoreCategoryBooksEvent event,
    Emitter<BooksState> emit,
  ) async {
    if (state.isLoadingMore || !state.hasNextPage) return;

    try {
      emit(state.copyWith(isLoadingMore: true));
      AppLogger.info('Loading more books for category ${event.categoryId}, page ${state.currentPage + 1}...');

      final result = await _repository.getCategoryBooks(
        categoryId: event.categoryId,
        page: state.currentPage + 1,
        perPage: 6,
      );

      await result.fold(
        (exception) async {
          AppLogger.error('Failed to load more category books: $exception');
          emit(state.copyWith(isLoadingMore: false));
        },
        (response) async {
          final booksData = response.data;
          final newBooks = booksData?.content ?? [];
          final pagination = booksData?.pagination;

          AppLogger.info('Loaded ${newBooks.length} more books');

          final updatedBooks = [...state.categoryBooks, ...newBooks];

          emit(state.copyWith(
            categoryBooks: updatedBooks,
            currentPage: pagination?.currentPage ?? state.currentPage,
            totalPages: pagination?.totalPages ?? state.totalPages,
            hasNextPage: pagination?.hasNextPage ?? false,
            isLoadingMore: false,
          ));
        },
      );
    } catch (e, stackTrace) {
      AppLogger.error('Unexpected error loading more category books', e, stackTrace);
      emit(state.copyWith(isLoadingMore: false));
    }
  }

  Future<void> _onLoadBookDetail(
    LoadBookDetailEvent event,
    Emitter<BooksState> emit,
  ) async {
    try {
      emit(state.copyWith(bookDetailStatus: const BlocStatus.loading()));
      AppLogger.info('Fetching book detail for ID: ${event.bookId}');

      final result = await _repository.getBookDetail(bookId: event.bookId);

      await result.fold(
        (exception) async {
          AppLogger.error('Failed to fetch book detail: $exception');
          emit(state.copyWith(
            bookDetailStatus: BlocStatus.fail(error: exception.toString()),
          ));
        },
        (response) async {
          AppLogger.info('Successfully fetched book detail for ID: ${event.bookId}');
          emit(state.copyWith(
            bookDetailStatus: const BlocStatus.success(),
            bookDetail: response.data,
          ));
        },
      );
    } catch (e, stackTrace) {
      AppLogger.error('Unexpected error fetching book detail', e, stackTrace);
      emit(state.copyWith(
        bookDetailStatus: BlocStatus.fail(error: 'Unexpected error: $e'),
      ));
    }
  }

  Future<void> _onDownloadBook(
    DownloadBookEvent event,
    Emitter<BooksState> emit,
  ) async {
    try {
      emit(state.copyWith(
        isDownloading: true,
        downloadingFormat: event.format,
        downloadProgress: 0.0,
        downloadMessage: null,
      ));

      // Request permissions for Android 13+
      if (Platform.isAndroid) {
        // For Android 13+, we need to handle permissions differently
        if (await Permission.manageExternalStorage.request().isGranted) {
          // Permission granted
        } else {
          // Try with regular storage permission
          final status = await Permission.storage.request();
          if (!status.isGranted) {
            emit(state.copyWith(
              isDownloading: false,
              downloadingFormat: null,
              downloadMessage: 'يجب منح إذن التخزين لتحميل الكتاب',
            ));
            return;
          }
        }
      } else {
        // For iOS or other platforms, request storage permission
        final status = await Permission.storage.request();
        if (!status.isGranted) {
          emit(state.copyWith(
            isDownloading: false,
            downloadingFormat: null,
            downloadMessage: 'يجب منح إذن التخزين لتحميل الكتاب',
          ));
          return;
        }
      }

      // Get download directory - use Downloads folder or app documents
      Directory? directory;
      if (Platform.isAndroid) {
        try {
          // Try to use the Downloads folder first
          directory = Directory('/storage/emulated/0/Download');
          if (!await directory.exists()) {
            // Create the directory if it doesn't exist
            await directory.create(recursive: true);
          }
        } catch (e) {
          // If Downloads folder fails, try external storage directory
          try {
            directory = await getExternalStorageDirectory();
          } catch (e) {
            // If external storage fails, use app documents
            directory = await getApplicationDocumentsDirectory();
          }
        }
      } else {
        directory = await getApplicationDocumentsDirectory();
      }

      if (directory == null) {
        throw Exception('Could not find download directory');
      }

      // Create file name using book title
      final extension = event.format.toLowerCase();
      var bookTitle = state.bookDetail?.bookTitle
          // Remove Arabic diacritical marks (tashkeel/vowels)
          ?.replaceAll(RegExp(r'[\u064B-\u065F\u0670]'), '')
          // Keep only Arabic letters, alphanumeric, spaces, and hyphens
          ?.replaceAll(RegExp(r'[^\u0600-\u06FF\w\s-]'), '')
          .trim()
          // Replace multiple spaces with single underscore
          .replaceAll(RegExp(r'\s+'), '_')
          ?? 'book';
      
      // Limit filename length to avoid "File name too long" error
      // Most file systems have a 255 character limit for filenames
      final maxFileNameLength = 200; // Leave room for extension
      if (bookTitle.length > maxFileNameLength) {
        bookTitle = bookTitle.substring(0, maxFileNameLength);
      }
      
      final finalFileName = '$bookTitle.$extension';
      final savePath = '${directory.path}/$finalFileName';

      AppLogger.info('Downloading book to: $savePath');
      AppLogger.info('Download URL: ${event.url}');

      // Download file with better error handling
      await _dio.download(
        event.url,
        savePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = received / total;
            emit(state.copyWith(downloadProgress: progress));
          }
        },
        options: Options(
          followRedirects: true,
          validateStatus: (status) {
            return status != null && status < 500;
          },
        ),
      );

      AppLogger.info('Book downloaded successfully to: $savePath');

      emit(state.copyWith(
        isDownloading: false,
        downloadProgress: 0.0,
        downloadingFormat: null,
        downloadMessage: 'تم تحميل الكتاب بنجاح في مجلد التنزيلات',
      ));

      // Auto-clear success message after 3 seconds
      await Future.delayed(const Duration(seconds: 3));
      emit(state.copyWith(downloadMessage: null));
    } catch (e, stackTrace) {
      AppLogger.error('Failed to download book', e, stackTrace);
      emit(state.copyWith(
        isDownloading: false,
        downloadProgress: 0.0,
        downloadingFormat: null,
        downloadMessage: 'فشل تحميل الكتاب: ${e.toString()}',
      ));

      // Auto-clear error message after 4 seconds
      await Future.delayed(const Duration(seconds: 4));
      emit(state.copyWith(downloadMessage: null));
    }
  }

  void _onResetBookDetail(
    ResetBookDetailEvent event,
    Emitter<BooksState> emit,
  ) {
    emit(state.copyWith(
      bookDetailStatus: const BlocStatus.initial(),
      bookDetail: null,
      downloadMessage: null,
    ));
  }
}
