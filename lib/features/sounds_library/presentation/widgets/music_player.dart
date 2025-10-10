import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';
import '../../data/models/sound_model.dart';
import 'real_media_player.dart';

/// Full-screen music player for playing audio files
class MusicPlayer extends StatelessWidget {
  final SoundItem sound;
  final String? categoryTitle;

  const MusicPlayer({
    super.key,
    required this.sound,
    this.categoryTitle,
  });

  // Function to handle sharing
  void _shareSound(BuildContext context) {
    final String soundUrl = sound.sound_file_url ?? '';
    final String title = sound.title ?? 'مشاركة صوت';

    if (soundUrl.isNotEmpty) {
      Share.share(soundUrl, subject: title);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'لا يمكن مشاركة هذا الملف',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.f,
            ),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.custom(
      appBar: AppBar(
        title: Text(
          categoryTitle ?? 'مشغل الصوت',
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 20.f,
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.cardBackground,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.black),
      ),
      backgroundColor: AppColors.background,
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Modern audio visualizer design
              Container(
                width: double.infinity.w,
                height: 250.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.primary,
                      AppColors.primary.withValues(alpha: 0.8),
                      AppColors.primary.withValues(alpha: 0.6),
                    ],
                  ),

                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Decorative circles
                    Positioned(
                      top: 30.h,
                      right: 30.w,
                      child: Container(
                        width: 80.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white.withValues(alpha: 0.1),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40.h,
                      left: 40.w,
                      child: Container(
                        width: 60.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white.withValues(alpha: 0.1),
                        ),
                      ),
                    ),
                    
                    // Center icon
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120.w,
                          height: 120.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.white.withValues(alpha: 0.2),
                          ),
                          child: Icon(
                            Icons.headphones_rounded,
                            size: 70.f,
                            color: AppColors.white,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        // Sound wave bars
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(5, (index) {
                            final heights = [30.0, 45.0, 60.0, 40.0, 35.0];
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 3.w),
                              width: 8.w,
                              height: heights[index].h,
                              decoration: BoxDecoration(
                                color: AppColors.white.withValues(alpha: 0.7),
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24.h),

              // Sound title
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  sound.title ?? 'بدون عنوان',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 22.f,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              SizedBox(height: 8.h),

              // Sound metadata (date, views)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.visibility,
                    size: 24.f,
                    color: AppColors.grey,
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    sound.visitor_count ?? '0',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 17.f,
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 24.f,
                    color: AppColors.grey,
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    _formatDate(sound.date ?? ''),
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 16.f,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12.h),

              // Audio player
              _buildAudioPlayer(context),


              // Action buttons (Share)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Share button
                  _buildActionButton(
                    icon: Icons.share,
                    label: 'مشاركة',
                    onTap: () => _shareSound(context),
                  ),
                ],
              ),

              SizedBox(height: 8.h),

              // Sound summary (if available)
              if (sound.summary != null && sound.summary!.isNotEmpty)
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(16.r),
 
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الوصف',
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 16.f,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        sound.summary!,
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 14.f,
                          color: AppColors.grey,
                          height: 1.6,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the audio player widget
  Widget _buildAudioPlayer(BuildContext context) {
    // Check if we have a sound file URL
    if (sound.sound_file_url != null && sound.sound_file_url!.isNotEmpty) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20.w),
        child: RealMediaPlayer(
          audioUrl: sound.sound_file_url!,
          soundTitle: sound.title ?? 'صوت',
          width: double.infinity,
          height: 90.h,
        ),
      );
    }

    // Fallback UI if no audio URL
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30.w),
      child: Column(
        children: [
          Icon(
            Icons.music_off,
            size: 48.f,
            color: AppColors.grey,
          ),
          SizedBox(height: 12.h),
          Text(
            'لا يوجد ملف صوتي متاح',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 16.f,
              color: AppColors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  /// Builds an action button
  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(16.r),
 
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 24.f,
              color: AppColors.white,
            ),
            SizedBox(width: 8.w),
            Text(
              label,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 16.f,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ],
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
      return dateString;
    }
  }
}
