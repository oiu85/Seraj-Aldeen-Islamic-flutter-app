abstract class GalleryEvent {}

class LoadGalleryCategoriesEvent extends GalleryEvent {
  final int page;
  final int perPage;

  LoadGalleryCategoriesEvent({
    this.page = 1,
    this.perPage = 15,
  });
}

class LoadCategoryContentEvent extends GalleryEvent {
  final int categoryId;
  final int page;
  final int perPage;

  LoadCategoryContentEvent({
    required this.categoryId,
    this.page = 1,
    this.perPage = 8,
  });
}

class LoadMoreCategoryContentEvent extends GalleryEvent {
  final int categoryId;

  LoadMoreCategoryContentEvent({required this.categoryId});
}

