abstract class GalleryEvent {}

class LoadGalleryCategoriesEvent extends GalleryEvent {
  final int page;
  final int perPage;

  LoadGalleryCategoriesEvent({
    this.page = 1,
    this.perPage = 15,
  });
}

