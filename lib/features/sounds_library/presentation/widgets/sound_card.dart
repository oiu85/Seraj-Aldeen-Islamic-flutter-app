import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';
import '../../data/models/sound_model.dart';
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
    } else if (soundItem != null) {
      // Navigate to full music player
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
                      SizedBox(width: 16.w),
                      Icon(
                        Icons.access_time,
                        size: 16.f,
                        color: AppColors.primary,
                      ),
                      SizedBox(width: 6.w),
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
