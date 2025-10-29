import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/models/sound_model.dart';

/// Audio player state for individual sound items
class AudioPlayerState extends Equatable {
  final bool isInitialized;
  final bool isPlaying;
  final bool isLoading;
  final bool hasError;
  final Duration position;
  final Duration duration;

  const AudioPlayerState({
    this.isInitialized = false,
    this.isPlaying = false,
    this.isLoading = false,
    this.hasError = false,
    this.position = Duration.zero,
    this.duration = Duration.zero,
  });

  AudioPlayerState copyWith({
    bool? isInitialized,
    bool? isPlaying,
    bool? isLoading,
    bool? hasError,
    Duration? position,
    Duration? duration,
  }) {
    return AudioPlayerState(
      isInitialized: isInitialized ?? this.isInitialized,
      isPlaying: isPlaying ?? this.isPlaying,
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      position: position ?? this.position,
      duration: duration ?? this.duration,
    );
  }

  @override
  List<Object?> get props => [isInitialized, isPlaying, isLoading, hasError, position, duration];
}

class SoundsState extends Equatable {
  final BlocStatus status;
  final List<SoundCategory> categories;
  final PageInfo? pageInfo;
  final CategoryInfo? categoryInfo;
  final List<SoundItem> categoryContent;
  final bool hasNextPage;
  final int currentPage;
  
  // Category pagination
  final bool categoriesHasNextPage;
  final int categoriesCurrentPage;
  final int? categoriesTotalPages;
  
  // Audio Books
  final BlocStatus audioBookStatus;
  final CategoryInfo? audioBookParentCategory;
  final List<AudioBookSubcategory> audioBookSubcategories;
  
  // Audio player states - map of soundId to player state
  final Map<String, AudioPlayerState> audioPlayerStates;
  
  // Sound detail
  final SoundDetailData? soundDetail;
  final BlocStatus soundDetailStatus;

  const SoundsState({
    required this.status,
    this.categories = const [],
    this.pageInfo,
    this.categoryInfo,
    this.categoryContent = const [],
    this.hasNextPage = false,
    this.currentPage = 1,
    this.categoriesHasNextPage = false,
    this.categoriesCurrentPage = 1,
    this.categoriesTotalPages,
    this.audioBookStatus = const BlocStatus.initial(),
    this.audioBookParentCategory,
    this.audioBookSubcategories = const [],
    this.audioPlayerStates = const {},
    this.soundDetail,
    this.soundDetailStatus = const BlocStatus.initial(),
  });

  SoundsState copyWith({
    BlocStatus? status,
    List<SoundCategory>? categories,
    PageInfo? pageInfo,
    CategoryInfo? categoryInfo,
    List<SoundItem>? categoryContent,
    bool? hasNextPage,
    int? currentPage,
    bool? categoriesHasNextPage,
    int? categoriesCurrentPage,
    int? categoriesTotalPages,
    BlocStatus? audioBookStatus,
    CategoryInfo? audioBookParentCategory,
    List<AudioBookSubcategory>? audioBookSubcategories,
    Map<String, AudioPlayerState>? audioPlayerStates,
    SoundDetailData? soundDetail,
    BlocStatus? soundDetailStatus,
  }) {
    return SoundsState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      pageInfo: pageInfo ?? this.pageInfo,
      categoryInfo: categoryInfo ?? this.categoryInfo,
      categoryContent: categoryContent ?? this.categoryContent,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      currentPage: currentPage ?? this.currentPage,
      categoriesHasNextPage: categoriesHasNextPage ?? this.categoriesHasNextPage,
      categoriesCurrentPage: categoriesCurrentPage ?? this.categoriesCurrentPage,
      categoriesTotalPages: categoriesTotalPages ?? this.categoriesTotalPages,
      audioBookStatus: audioBookStatus ?? this.audioBookStatus,
      audioBookParentCategory: audioBookParentCategory ?? this.audioBookParentCategory,
      audioBookSubcategories: audioBookSubcategories ?? this.audioBookSubcategories,
      audioPlayerStates: audioPlayerStates ?? this.audioPlayerStates,
      soundDetail: soundDetail,
      soundDetailStatus: soundDetailStatus ?? this.soundDetailStatus,
    );
  }

  /// Get audio player state for a specific sound
  AudioPlayerState getAudioPlayerState(String soundId) {
    return audioPlayerStates[soundId] ?? const AudioPlayerState();
  }

  @override
  List<Object?> get props => [
    status, 
    categories, 
    pageInfo, 
    categoryInfo, 
    categoryContent, 
    hasNextPage, 
    currentPage,
    categoriesHasNextPage,
    categoriesCurrentPage,
    categoriesTotalPages,
    audioBookStatus,
    audioBookParentCategory,
    audioBookSubcategories,
    audioPlayerStates,
    soundDetail,
    soundDetailStatus,
  ];

  @override
  bool get stringify => true;
}
