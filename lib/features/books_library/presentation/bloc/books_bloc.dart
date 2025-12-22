import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_file/open_file.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/services/storage_permission_service.dart';
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
    on<ReadBookEvent>(_onReadBook);
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

      // Check and request storage permissions
      final hasPermission = await StoragePermissionService.hasStoragePermission();
      if (!hasPermission) {
        AppLogger.info('Storage permission not granted, requesting...');
        final permissionGranted = await StoragePermissionService.requestAllStoragePermissions();
        
        if (!permissionGranted) {
          // Check if permanently denied
          final isPermanentlyDenied = await StoragePermissionService.openAppSettingsIfNeeded();
          
          emit(state.copyWith(
            isDownloading: false,
            downloadProgress: 0.0,
            downloadingFormat: null,
            downloadMessage: isPermanentlyDenied
                ? 'تم رفض الصلاحية بشكل دائم. يرجى فتح الإعدادات ومنح صلاحية الوصول إلى الملفات'
                : 'يرجى منح صلاحيات الوصول إلى الملفات لتحميل الكتب',
          ));
          
          // Auto-clear error message after 5 seconds
          await Future.delayed(const Duration(seconds: 5));
          emit(state.copyWith(downloadMessage: null));
          return;
        }
      }

      // Get the public Downloads directory
      final downloadsPath = await StoragePermissionService.getDownloadsDirectory();
      if (downloadsPath == null) {
        AppLogger.error('Failed to get Downloads directory');
        emit(state.copyWith(
          isDownloading: false,
          downloadProgress: 0.0,
          downloadingFormat: null,
          downloadMessage: 'فشل الوصول إلى مجلد التنزيلات',
        ));
        
        // Auto-clear error message after 4 seconds
        await Future.delayed(const Duration(seconds: 4));
        emit(state.copyWith(downloadMessage: null));
        return;
      }

      // Create Downloads directory if it doesn't exist
      final directory = Directory(downloadsPath);
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }

      // Create file name using book title
      final extension = event.format.toLowerCase();
      var bookTitle = state.bookDetail?.bookTitle
          // Remove Arabic diacritical marks (tashkeel/vowels)
          ?.replaceAll(RegExp(r'[\u064B-\u065F\u0670]'), '')
          // Keep only Arabic letters, alphanumeric, spaces, and hyphens
          .replaceAll(RegExp(r'[^\u0600-\u06FF\w\s-]'), '')
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
        downloadMessage: 'تم تحميل الكتاب بنجاح',
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

  /// Get the file path for a book based on title and format
  Future<String?> _getBookFilePath(String format) async {
    if (state.bookDetail == null) return null;

    final downloadsPath = await StoragePermissionService.getDownloadsDirectory();
    if (downloadsPath == null) return null;

    final extension = format.toLowerCase();
    var bookTitle = state.bookDetail!.bookTitle
        ?.replaceAll(RegExp(r'[\u064B-\u065F\u0670]'), '')
        .replaceAll(RegExp(r'[^\u0600-\u06FF\w\s-]'), '')
        .trim()
        .replaceAll(RegExp(r'\s+'), '_')
        ?? 'book';

    final maxFileNameLength = 200;
    if (bookTitle.length > maxFileNameLength) {
      bookTitle = bookTitle.substring(0, maxFileNameLength);
    }

    final fileName = '$bookTitle.$extension';
    return '$downloadsPath/$fileName';
  }

  /// Check if a book file exists locally
  Future<bool> _isBookFileDownloaded(String format) async {
    final filePath = await _getBookFilePath(format);
    if (filePath == null) return false;

    final file = File(filePath);
    return await file.exists();
  }

  /// Open a book file using open_file (handles FileProvider automatically)
  Future<bool> _openBookFile(String format) async {
    try {
      final filePath = await _getBookFilePath(format);
      if (filePath == null) {
        AppLogger.error('Failed to get file path for format: $format');
        return false;
      }

      final file = File(filePath);
      if (!await file.exists()) {
        AppLogger.error('File does not exist: $filePath');
        return false;
      }

      // Use open_file package which handles FileProvider automatically
      final result = await OpenFile.open(filePath);

      if (result.type == ResultType.done) {
        AppLogger.info('Successfully opened book file: $filePath');
        return true;
      } else if (result.type == ResultType.noAppToOpen) {
        AppLogger.error('No app found to open file: $filePath');
        return false;
      } else if (result.type == ResultType.fileNotFound) {
        AppLogger.error('File not found: $filePath');
        return false;
      } else {
        AppLogger.error('Failed to open file: ${result.message}');
        return false;
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error opening book file', e, stackTrace);
      return false;
    }
  }

  /// Get the first available download link format
  String? _getFirstAvailableFormat() {
    final book = state.bookDetail;
    if (book == null) return null;

    if (book.bookFile != null && book.bookFile!.isNotEmpty) {
      return 'PDF';
    }
    if (book.bookFileEPub != null && book.bookFileEPub!.isNotEmpty) {
      return 'ePub';
    }
    if (book.bookFileKfx != null && book.bookFileKfx!.isNotEmpty) {
      return 'KFX';
    }
    return null;
  }

  /// Get download link URL for a format
  String? _getDownloadUrlForFormat(String format) {
    final book = state.bookDetail;
    if (book == null) return null;

    switch (format.toUpperCase()) {
      case 'PDF':
        return book.bookFileUrl;
      case 'EPUB':
        return book.bookFileEpubUrl;
      case 'KFX':
        return book.bookFileKfxUrl;
      default:
        return null;
    }
  }

  Future<void> _onReadBook(
    ReadBookEvent event,
    Emitter<BooksState> emit,
  ) async {
    try {
      // Determine which format to use
      String? format = event.preferredFormat;
      if (format == null) {
        format = _getFirstAvailableFormat();
      }

      if (format == null) {
        emit(state.copyWith(
          downloadMessage: 'لا توجد نسخة متاحة للقراءة',
        ));
        await Future.delayed(const Duration(seconds: 3));
        emit(state.copyWith(downloadMessage: null));
        return;
      }

      // Check if file is already downloaded
      final isDownloaded = await _isBookFileDownloaded(format);
      
      if (isDownloaded) {
        // File exists, open it directly
        AppLogger.info('Book file already downloaded, opening...');
        final opened = await _openBookFile(format);
        
        if (!opened) {
          emit(state.copyWith(
            downloadMessage: 'فشل فتح الملف. يرجى المحاولة مرة أخرى',
          ));
          await Future.delayed(const Duration(seconds: 3));
          emit(state.copyWith(downloadMessage: null));
        }
      } else {
        // File doesn't exist, download it first
        AppLogger.info('Book file not downloaded, downloading first...');
        
        final downloadUrl = _getDownloadUrlForFormat(format);
        if (downloadUrl == null || downloadUrl.isEmpty) {
          emit(state.copyWith(
            downloadMessage: 'رابط التحميل غير متاح',
          ));
          await Future.delayed(const Duration(seconds: 3));
          emit(state.copyWith(downloadMessage: null));
          return;
        }

        // Show downloading message
        emit(state.copyWith(
          isDownloading: true,
          downloadingFormat: format,
          downloadProgress: 0.0,
          downloadMessage: 'جاري تحميل الكتاب للقراءة...',
        ));

        // Check and request storage permissions
        final hasPermission = await StoragePermissionService.hasStoragePermission();
        if (!hasPermission) {
          final permissionGranted = await StoragePermissionService.requestAllStoragePermissions();
          
          if (!permissionGranted) {
            emit(state.copyWith(
              isDownloading: false,
              downloadProgress: 0.0,
              downloadingFormat: null,
              downloadMessage: 'يرجى منح صلاحيات الوصول إلى الملفات',
            ));
            await Future.delayed(const Duration(seconds: 4));
            emit(state.copyWith(downloadMessage: null));
            return;
          }
        }

        // Get Downloads directory
        final downloadsPath = await StoragePermissionService.getDownloadsDirectory();
        if (downloadsPath == null) {
          emit(state.copyWith(
            isDownloading: false,
            downloadProgress: 0.0,
            downloadingFormat: null,
            downloadMessage: 'فشل الوصول إلى مجلد التنزيلات',
          ));
          await Future.delayed(const Duration(seconds: 4));
          emit(state.copyWith(downloadMessage: null));
          return;
        }

        // Create directory if needed
        final directory = Directory(downloadsPath);
        if (!await directory.exists()) {
          await directory.create(recursive: true);
        }

        // Create file name
        final extension = format.toLowerCase();
        var bookTitle = state.bookDetail?.bookTitle
            ?.replaceAll(RegExp(r'[\u064B-\u065F\u0670]'), '')
            .replaceAll(RegExp(r'[^\u0600-\u06FF\w\s-]'), '')
            .trim()
            .replaceAll(RegExp(r'\s+'), '_')
            ?? 'book';

        final maxFileNameLength = 200;
        if (bookTitle.length > maxFileNameLength) {
          bookTitle = bookTitle.substring(0, maxFileNameLength);
        }

        final finalFileName = '$bookTitle.$extension';
        final savePath = '${directory.path}/$finalFileName';

        // Download the file
        await _dio.download(
          downloadUrl,
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

        AppLogger.info('Book downloaded successfully, opening...');

        // Open the file after download
        final opened = await _openBookFile(format);
        
        emit(state.copyWith(
          isDownloading: false,
          downloadProgress: 0.0,
          downloadingFormat: null,
          downloadMessage: opened
              ? 'تم فتح الكتاب بنجاح'
              : 'تم التحميل ولكن فشل فتح الملف',
        ));

        await Future.delayed(const Duration(seconds: 3));
        emit(state.copyWith(downloadMessage: null));
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error reading book', e, stackTrace);
      emit(state.copyWith(
        isDownloading: false,
        downloadProgress: 0.0,
        downloadingFormat: null,
        downloadMessage: 'فشل فتح الكتاب: ${e.toString()}',
      ));
      await Future.delayed(const Duration(seconds: 4));
      emit(state.copyWith(downloadMessage: null));
    }
  }

  void _onResetBookDetail(
    ResetBookDetailEvent event,
    Emitter<BooksState> emit,
  ) {
    AppLogger.info('Resetting book detail state');
    emit(state.copyWith(
      bookDetailStatus: const BlocStatus.initial(),
      bookDetail: null,
      downloadMessage: null,
    ));
  }
}
