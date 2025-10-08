abstract class VideosEvent {}

class LoadVideoMainCategoriesEvent extends VideosEvent {}

class LoadCategoryVideosEvent extends VideosEvent {
  final int categoryId;
  final int page;
  final int perPage;

  LoadCategoryVideosEvent({
    required this.categoryId,
    this.page = 1,
    this.perPage = 6,
  });
}

