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

// Audio Player Events
class InitializeAudioPlayerEvent extends SoundsEvent {
  final String soundId;
  final String audioUrl;
  final List<String>? alternativeUrls;

  InitializeAudioPlayerEvent({
    required this.soundId,
    required this.audioUrl,
    this.alternativeUrls,
  });
}

class TogglePlayPauseEvent extends SoundsEvent {
  final String soundId;

  TogglePlayPauseEvent({required this.soundId});
}

class UpdateAudioPositionEvent extends SoundsEvent {
  final String soundId;
  final Duration position;
  final Duration duration;

  UpdateAudioPositionEvent({
    required this.soundId,
    required this.position,
    required this.duration,
  });
}

class SeekAudioEvent extends SoundsEvent {
  final String soundId;
  final Duration position;

  SeekAudioEvent({
    required this.soundId,
    required this.position,
  });
}

class DisposeAudioPlayerEvent extends SoundsEvent {
  final String soundId;

  DisposeAudioPlayerEvent({required this.soundId});
}

class AudioPlayerErrorEvent extends SoundsEvent {
  final String soundId;

  AudioPlayerErrorEvent({required this.soundId});
}

class AudioPlayerInitializedEvent extends SoundsEvent {
  final String soundId;
  final Duration duration;

  AudioPlayerInitializedEvent({
    required this.soundId,
    required this.duration,
  });
}
