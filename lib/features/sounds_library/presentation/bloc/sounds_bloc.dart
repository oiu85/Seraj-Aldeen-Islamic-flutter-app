import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../data/models/sound_model.dart';
import '../../domain/repositories/sound_repository.dart';
import 'sounds_event.dart';
import 'sounds_state.dart';

class SoundsBloc extends Bloc<SoundsEvent, SoundsState> {
  final SoundRepository soundRepository;
  
  // Map to store video player controllers for each sound
  final Map<String, VideoPlayerController> _controllers = {};
  final Map<String, int> _alternativeUrlIndex = {};

  SoundsBloc({required this.soundRepository}) 
      : super(SoundsState(status: BlocStatus.initial())) {
    on<LoadSoundCategoriesEvent>(_onLoadSoundCategories);
    on<LoadCategoryContentEvent>(_onLoadCategoryContent);
    on<InitializeAudioPlayerEvent>(_onInitializeAudioPlayer);
    on<TogglePlayPauseEvent>(_onTogglePlayPause);
    on<UpdateAudioPositionEvent>(_onUpdateAudioPosition);
    on<SeekAudioEvent>(_onSeekAudio);
    on<DisposeAudioPlayerEvent>(_onDisposeAudioPlayer);
    on<AudioPlayerErrorEvent>(_onAudioPlayerError);
    on<AudioPlayerInitializedEvent>(_onAudioPlayerInitialized);
  }

  @override
  Future<void> close() {
    // Dispose all controllers when bloc is closed
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    _controllers.clear();
    return super.close();
  }

  Future<void> _onLoadSoundCategories(
    LoadSoundCategoriesEvent event,
    Emitter<SoundsState> emit,
  ) async {
    try {
      _emitLoadingState(emit);
      AppLogger.info('Loading sound categories from API');

      final result = await soundRepository.getSoundCategories();

      result.fold(
        (exception) => _handleError(emit, exception.toString()),
        (response) => _handleSuccess(emit, response),
      );
    } catch (e) {
      _handleUnexpectedError(emit, e);
    }
  }

  void _emitLoadingState(Emitter<SoundsState> emit) {
    if (!emit.isDone && !state.status.isLoading()) {
      emit(state.copyWith(status: BlocStatus.loading()));
    }
  }

  void _handleError(Emitter<SoundsState> emit, String error) {
    AppLogger.error('Error in SoundsBloc: $error');
    if (!emit.isDone && state.status.isLoading()) {
      emit(state.copyWith(status: BlocStatus.fail(error: error)));
    }
  }

  void _handleSuccess(Emitter<SoundsState> emit, SoundResponse response) {
    if (!_isValidResponse(response)) {
      _handleError(emit, 'Invalid response structure');
      return;
    }

    final validCategories = _processCategories(response.data!.categories!);
    final pageInfo = _extractPageInfo(response.data!.pages);
    
    AppLogger.info('Loaded ${validCategories.length} valid sound categories');

    if (!emit.isDone && state.status.isLoading()) {
      emit(state.copyWith(
        status: BlocStatus.success(),
        categories: validCategories,
        pageInfo: pageInfo,
      ));
    }
  }

  bool _isValidResponse(SoundResponse response) {
    return response.success == true && 
           response.data != null && 
           response.data!.categories != null;
  }

  List<SoundCategory> _processCategories(List<SoundCategory> categories) {
    final categoriesCopy = List<SoundCategory>.from(categories);
    final validCategories = _filterValidCategories(categoriesCopy);
    _sortCategoriesByPosition(validCategories);
    return validCategories;
  }

  List<SoundCategory> _filterValidCategories(List<SoundCategory> categories) {
    return categories
        .where((category) => category.data != null && category.data!.isNotEmpty)
        .toList();
  }

  void _sortCategoriesByPosition(List<SoundCategory> categories) {
    categories.sort((a, b) {
      final posA = int.tryParse(a.position ?? '0') ?? 0;
      final posB = int.tryParse(b.position ?? '0') ?? 0;
      return posA.compareTo(posB);
    });
  }

  PageInfo? _extractPageInfo(List<PageInfo>? pages) {
    if (pages == null || pages.isEmpty) return null;
    return pages.first;
  }

  void _handleUnexpectedError(Emitter<SoundsState> emit, dynamic error) {
    AppLogger.error('Unexpected error in SoundsBloc: $error');
    if (!emit.isDone && state.status.isLoading()) {
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'حدث خطأ غير متوقع'),
      ));
    }
  }

  Future<void> _onLoadCategoryContent(
    LoadCategoryContentEvent event,
    Emitter<SoundsState> emit,
  ) async {
    try {
      final isLoadingMore = event.page > 1;
      
      if (!isLoadingMore) {
        _emitLoadingState(emit);
      } else {
        emit(state.copyWith(status: BlocStatus.loadingMore()));
      }
      
      AppLogger.info('Loading category content for category ${event.categoryId}, page ${event.page}');

      final result = await soundRepository.getCategoryContent(
        categoryId: event.categoryId,
        page: event.page,
        perPage: event.perPage,
      );

      result.fold(
        (exception) => _handleError(emit, exception.toString()),
        (response) => _handleCategoryContentSuccess(emit, response, isLoadingMore),
      );
    } catch (e) {
      _handleUnexpectedError(emit, e);
    }
  }

  void _handleCategoryContentSuccess(
    Emitter<SoundsState> emit,
    CategoryContentResponse response,
    bool isLoadingMore,
  ) {
    if (response.success != true || response.data == null) {
      _handleError(emit, 'Invalid response structure');
      return;
    }

    final content = response.data!.content ?? [];
    final hasNextPage = response.data!.pagination?.hasNextPage ?? false;
    final currentPage = response.data!.pagination?.currentPage ?? 1;
    final categoryInfo = response.data!.category;

    final newContent = isLoadingMore
        ? [...state.categoryContent, ...content]
        : content;

    AppLogger.info('Loaded ${content.length} sounds, total: ${newContent.length}');

    if (!emit.isDone) {
      emit(state.copyWith(
        status: BlocStatus.success(),
        categoryContent: newContent,
        categoryInfo: categoryInfo,
        hasNextPage: hasNextPage,
        currentPage: currentPage,
      ));
    }
  }

  // Audio Player Event Handlers

  Future<void> _onInitializeAudioPlayer(
    InitializeAudioPlayerEvent event,
    Emitter<SoundsState> emit,
  ) async {
    try {
      AppLogger.info('Initializing audio player for sound: ${event.soundId}');
      
      // Update state to loading
      final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
      updatedStates[event.soundId] = const AudioPlayerState(isLoading: true);
      emit(state.copyWith(audioPlayerStates: updatedStates));

      // Dispose existing controller if any
      _controllers[event.soundId]?.dispose();
      _alternativeUrlIndex[event.soundId] = 0;

      // Try to initialize with main URL
      await _tryInitializeWithUrl(event.soundId, event.audioUrl, event.alternativeUrls, emit);
    } catch (e) {
      AppLogger.error('Error initializing audio player: $e');
      add(AudioPlayerErrorEvent(soundId: event.soundId));
    }
  }

  Future<void> _tryInitializeWithUrl(
    String soundId,
    String url,
    List<String>? alternativeUrls,
    Emitter<SoundsState> emit,
  ) async {
    try {
      final controller = VideoPlayerController.networkUrl(Uri.parse(url));
      _controllers[soundId] = controller;

      // Add listener for position updates
      controller.addListener(() {
        if (controller.value.isInitialized) {
          add(UpdateAudioPositionEvent(
            soundId: soundId,
            position: controller.value.position,
            duration: controller.value.duration,
          ));
        }
      });

      await controller.initialize();
      
      // Notify that player is initialized
      add(AudioPlayerInitializedEvent(
        soundId: soundId,
        duration: controller.value.duration,
      ));

      // Auto-play after initialization
      await controller.play();
      
      final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
      updatedStates[soundId] = AudioPlayerState(
        isInitialized: true,
        isPlaying: true,
        isLoading: false,
        duration: controller.value.duration,
      );
      emit(state.copyWith(audioPlayerStates: updatedStates));

      AppLogger.info('Audio player initialized successfully for: $soundId');
    } catch (e) {
      AppLogger.error('Failed to initialize with URL: $url, Error: $e');
      
      // Try alternative URL if available
      if (alternativeUrls != null && 
          _alternativeUrlIndex[soundId]! < alternativeUrls.length) {
        final altUrl = alternativeUrls[_alternativeUrlIndex[soundId]!];
        _alternativeUrlIndex[soundId] = _alternativeUrlIndex[soundId]! + 1;
        await _tryInitializeWithUrl(soundId, altUrl, alternativeUrls, emit);
      } else {
        add(AudioPlayerErrorEvent(soundId: soundId));
      }
    }
  }

  void _onTogglePlayPause(
    TogglePlayPauseEvent event,
    Emitter<SoundsState> emit,
  ) {
    final controller = _controllers[event.soundId];
    if (controller == null || !controller.value.isInitialized) return;

    final currentState = state.getAudioPlayerState(event.soundId);
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);

    if (controller.value.isPlaying) {
      controller.pause();
      updatedStates[event.soundId] = currentState.copyWith(isPlaying: false);
    } else {
      controller.play();
      updatedStates[event.soundId] = currentState.copyWith(isPlaying: true);
    }

    emit(state.copyWith(audioPlayerStates: updatedStates));
    AppLogger.info('Toggled play/pause for: ${event.soundId}');
  }

  void _onUpdateAudioPosition(
    UpdateAudioPositionEvent event,
    Emitter<SoundsState> emit,
  ) {
    final currentState = state.getAudioPlayerState(event.soundId);
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    
    updatedStates[event.soundId] = currentState.copyWith(
      position: event.position,
      duration: event.duration,
    );
    
    emit(state.copyWith(audioPlayerStates: updatedStates));
  }

  void _onSeekAudio(
    SeekAudioEvent event,
    Emitter<SoundsState> emit,
  ) {
    final controller = _controllers[event.soundId];
    if (controller == null || !controller.value.isInitialized) return;

    controller.seekTo(event.position);
    AppLogger.info('Seeked to ${event.position} for: ${event.soundId}');
  }

  void _onDisposeAudioPlayer(
    DisposeAudioPlayerEvent event,
    Emitter<SoundsState> emit,
  ) {
    final controller = _controllers[event.soundId];
    if (controller != null) {
      controller.dispose();
      _controllers.remove(event.soundId);
      _alternativeUrlIndex.remove(event.soundId);
    }

    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    updatedStates.remove(event.soundId);
    emit(state.copyWith(audioPlayerStates: updatedStates));
    
    AppLogger.info('Disposed audio player for: ${event.soundId}');
  }

  void _onAudioPlayerError(
    AudioPlayerErrorEvent event,
    Emitter<SoundsState> emit,
  ) {
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    updatedStates[event.soundId] = const AudioPlayerState(
      hasError: true,
      isLoading: false,
    );
    emit(state.copyWith(audioPlayerStates: updatedStates));
    
    AppLogger.error('Audio player error for: ${event.soundId}');
  }

  void _onAudioPlayerInitialized(
    AudioPlayerInitializedEvent event,
    Emitter<SoundsState> emit,
  ) {
    final currentState = state.getAudioPlayerState(event.soundId);
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    
    updatedStates[event.soundId] = currentState.copyWith(
      isInitialized: true,
      duration: event.duration,
      isLoading: false,
    );
    
    emit(state.copyWith(audioPlayerStates: updatedStates));
    AppLogger.info('Audio player initialized for: ${event.soundId}');
  }
}
