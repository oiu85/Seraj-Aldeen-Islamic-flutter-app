abstract class SoundsEvent {}

class LoadSoundCategoriesEvent extends SoundsEvent {}

class LoadCategoryContentEvent extends SoundsEvent {
  final int categoryId;
  final int page;
  final int perPage;

  LoadCategoryContentEvent({
    required this.categoryId,
    this.page = 1,
    this.perPage = 6,
  });
}
