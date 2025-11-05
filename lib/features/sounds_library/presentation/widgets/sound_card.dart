import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/utils/share_utils.dart';
import '../../../../gen/fonts.gen.dart';
import '../../data/models/sound_model.dart';
import '../bloc/sounds_bloc.dart';
import '../bloc/sounds_event.dart';
import '../bloc/sounds_state.dart';
import '../widgets/real_media_player.dart';
import '../widgets/music_player.dart';

/// Reusable sound card widget used across all sound library pages
class SoundCard extends StatelessWidget {
  final String title;
  final String visitorCount;
  final String date;
  final String? duration;
  final String? position;
  final VoidCallback? onTap;
  final VoidCallback? onPlayPause;
  final VoidCallback? onDownload;
  final bool isPlaying;
  final bool isLoading;
  final bool isDownloading;
  final bool hasError;
  final double? width;
  final double? height;
  
  // Optional: For advanced usage with RealMediaPlayer and navigation
  final String? soundFileUrl;
  final int? soundId;
  final SoundItem? soundItem;
  final String? categoryTitle;

  const SoundCard({
    super.key,
    required this.title,
    required this.visitorCount,
    required this.date,
    this.duration,
    this.position,
    this.onTap,
    this.onPlayPause,
    this.onDownload,
    this.isPlaying = false,
    this.isLoading = false,
    this.isDownloading = false,
    this.hasError = false,
    this.width,
    this.height,
    this.soundFileUrl,
    this.soundId,
    this.soundItem,
    this.categoryTitle,
  });

  void _handleTap(BuildContext context) {
    if (onTap != null) {
      onTap!();
    } else if (soundId != null && soundItem != null) {
      // Navigate to a page that will handle loading and show loading animation
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => _SoundDetailLoader(
            soundId: soundId!,
            categoryTitle: categoryTitle,
          ),
        ),
      );
    } else if (soundItem != null) {
      // Fallback: navigate directly with basic sound info
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MusicPlayer(
            sound: soundItem!,
            categoryTitle: categoryTitle,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _handleTap(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.r)),
        color: AppColors.cardBackground,
        elevation: 2,
        child: Container(
          width: width ?? 220.w,
          height: height ?? 160.h,
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Fixed height title section
              SizedBox(
                height: 75.h,
                child: Row(
                  children: [
                    Icon(
                      Icons.headset,
                      size: 28.f,
                      color: AppColors.primary,
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 16.f,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontFamily.tajawal,
                          color: AppColors.black,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              // Fixed height info section
              Padding(
                padding: EdgeInsets.only(right: 2.w),
                child: SizedBox(
                  height: 24.h,
                  child: Row(
                    children: [
                      Icon(Icons.visibility, size: 18.f, color: AppColors.primary),
                      SizedBox(width: 6.w),
                      Text(
                        visitorCount,
                        style: TextStyle(
                          fontSize: 12.f,
                          fontFamily: FontFamily.tajawal,
                          color: AppColors.grey,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Icon(
                        Icons.access_time,
                        size: 16.f,
                        color: AppColors.primary,
                      ),
                      SizedBox(width: 4.w),
                      Expanded(
                        child: Text(
                          _formatDate(date),
                          style: TextStyle(
                            fontSize: 12.f,
                            fontFamily: FontFamily.tajawal,
                            color: AppColors.grey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      // Share button
                      if (soundId != null)
                        IconButton(
                          icon: Icon(
                            Icons.share,
                            size: 18.f,
                            color: AppColors.primary,
                          ),
                          onPressed: () {
                            ShareUtils.showShareOptions(
                              context: context,
                              type: ContentType.sound,
                              id: soundId!,
                              title: title,
                              additionalText: categoryTitle,
                            );
                          },
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              // Fixed height audio player section
              SizedBox(
                height: 40.h,
                child: _buildAudioPlayer(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the audio player widget
  Widget _buildAudioPlayer() {
    // If we have a sound file URL, show the real media player
    if (soundFileUrl != null && soundFileUrl!.isNotEmpty) {
      return RealMediaPlayer(
        audioUrl: soundFileUrl!,
        soundTitle: title,
        width: width ?? 220.w,
        height: 36.h,
      );
    }

    // Fallback for files without URL
    return Center(
      child: Text(
        'لا يوجد ملف صوتي',
        style: TextStyle(
          fontSize: 13.f,
          fontFamily: FontFamily.tajawal,
          color: AppColors.grey,
        ),
      ),
    );
  }

  /// Formats date to show only year-month-day (YYYY-MM-DD)
  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
    } catch (e) {
      // If parsing fails, return the original string
      return dateString;
    }
  }
}

/// Widget to load sound detail and show loading animation
class _SoundDetailLoader extends StatelessWidget {
  final int soundId;
  final String? categoryTitle;

  const _SoundDetailLoader({
    required this.soundId,
    this.categoryTitle,
  });

  @override
  Widget build(BuildContext context) {
    // Create a new BlocProvider instance for this page
    return BlocProvider(
      create: (context) => GetIt.instance<SoundsBloc>()
        ..add(LoadSoundDetailEvent(soundId: soundId)),
      child: _SoundDetailLoaderContent(
        soundId: soundId,
        categoryTitle: categoryTitle,
      ),
    );
  }
}

class _SoundDetailLoaderContent extends StatelessWidget {
  final int soundId;
  final String? categoryTitle;

  const _SoundDetailLoaderContent({
    required this.soundId,
    this.categoryTitle,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SoundsBloc, SoundsState>(
      listener: (context, state) {
        if (state.soundDetailStatus.isSuccess() && state.soundDetail != null) {
          final detail = state.soundDetail!;
          
          // Create SoundItem from detail data - use sound_des for full HTML description
          final soundForPlayer = SoundItem(
            id: detail.soundId,
            title: detail.soundTitle,
            summary: detail.soundDes ?? detail.soundSummary, // Use full HTML description
            date: detail.soundDate,
            visitor_count: detail.soundVisitor?.toString(),
            is_new: detail.soundIsNew,
            priority: detail.soundPriority,
            file: detail.soundFile,
            sound_file_url: detail.soundFileUrl,
            soundPic: detail.soundPic,
            soundSource: detail.soundSource,
            soundSourceUrl: detail.soundSourceUrl,
            soundYoutubeId: detail.soundYoutubeId,
            publisherId: detail.soundPublisherId,
          );
          
          // Navigate to music player with full data
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MusicPlayer(
                sound: soundForPlayer,
                categoryTitle: categoryTitle ?? detail.category?.catTitle,
              ),
            ),
          );
        } else if (state.soundDetailStatus.isFail()) {
          // Show error and go back
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'فشل تحميل المعلومات',
                style: TextStyle(fontFamily: FontFamily.tajawal),
              ),
              backgroundColor: Colors.red,
            ),
          );
          Navigator.pop(context);
        }
      },
      child: BlocBuilder<SoundsBloc, SoundsState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.background,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Loading indicator
                  Container(
                    width: 200.w,
                    height: 200.h,
                    child: CircularProgressIndicator(
                      color: AppColors.primary,
                      strokeWidth: 3,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'جاري تحميل المعلومات...',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 18.f,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
