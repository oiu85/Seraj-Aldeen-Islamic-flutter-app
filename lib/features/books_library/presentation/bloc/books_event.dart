abstract class BooksEvent {}

class LoadBookMainCategoriesEvent extends BooksEvent {}

class LoadCategoryBooksEvent extends BooksEvent {
  final int categoryId;
  final int page;
  final int perPage;

  LoadCategoryBooksEvent({
    required this.categoryId,
    this.page = 1,
    this.perPage = 6,
  });
}

class LoadMoreCategoryBooksEvent extends BooksEvent {
  final int categoryId;

  LoadMoreCategoryBooksEvent({required this.categoryId});
}

class LoadBookDetailEvent extends BooksEvent {
  final int bookId;

  LoadBookDetailEvent({
    required this.bookId,
  });
}

class DownloadBookEvent extends BooksEvent {
  final String url;
  final String format;

  DownloadBookEvent({
    required this.url,
    required this.format,
  });
}

class ResetBookDetailEvent extends BooksEvent {}

class ReadBookEvent extends BooksEvent {
  final String? preferredFormat; // Preferred format (PDF, ePub, KFX), null for first available

  ReadBookEvent({this.preferredFormat});
}