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
  
  // Audio Books
  final BlocStatus audioBookStatus;
  final CategoryInfo? audioBookParentCategory;
  final List<AudioBookSubcategory> audioBookSubcategories;
  
  // Audio player states - map of soundId to player state
  final Map<String, AudioPlayerState> audioPlayerStates;

  const SoundsState({
    required this.status,
    this.categories = const [],
    this.pageInfo,
    this.categoryInfo,
    this.categoryContent = const [],
    this.hasNextPage = false,
    this.currentPage = 1,
    this.audioBookStatus = const BlocStatus.initial(),
    this.audioBookParentCategory,
    this.audioBookSubcategories = const [],
    this.audioPlayerStates = const {},
  });

  SoundsState copyWith({
    BlocStatus? status,
    List<SoundCategory>? categories,
    PageInfo? pageInfo,
    CategoryInfo? categoryInfo,
    List<SoundItem>? categoryContent,
    bool? hasNextPage,
    int? currentPage,
    BlocStatus? audioBookStatus,
    CategoryInfo? audioBookParentCategory,
    List<AudioBookSubcategory>? audioBookSubcategories,
    Map<String, AudioPlayerState>? audioPlayerStates,
  }) {
    return SoundsState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      pageInfo: pageInfo ?? this.pageInfo,
      categoryInfo: categoryInfo ?? this.categoryInfo,
      categoryContent: categoryContent ?? this.categoryContent,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      currentPage: currentPage ?? this.currentPage,
      audioBookStatus: audioBookStatus ?? this.audioBookStatus,
      audioBookParentCategory: audioBookParentCategory ?? this.audioBookParentCategory,
      audioBookSubcategories: audioBookSubcategories ?? this.audioBookSubcategories,
      audioPlayerStates: audioPlayerStates ?? this.audioPlayerStates,
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
    audioBookStatus,
    audioBookParentCategory,
    audioBookSubcategories,
    audioPlayerStates,
  ];

  @override
  bool get stringify => true;
}
