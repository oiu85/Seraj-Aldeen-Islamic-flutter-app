import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: SingleChildScrollView(
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
                    fontSize: 24.f,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 16.h),

              // Description directly under title - FULL LENGTH, NO CUT
              if (sound.summary != null && sound.summary!.isNotEmpty)
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.description_outlined,
                            color: AppColors.primary,
                            size: 22.f,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            'الوصف',
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 18.f,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      // Render HTML content instead of plain text
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Html(
                          data: sound.summary!,
                          style: {
                            "body": Style(
                              fontFamily: FontFamily.tajawal,
                              fontSize: FontSize(16.f),
                              color: AppColors.textPrimary,
                              lineHeight: LineHeight(1.8),
                              textAlign: TextAlign.start,
                            ),
                            "p": Style(
                              fontFamily: FontFamily.tajawal,
                              fontSize: FontSize(16.f),
                              color: AppColors.textPrimary,
                              lineHeight: LineHeight(1.8),
                              textAlign: TextAlign.justify,
                            ),
                            "font": Style(
                              fontFamily: FontFamily.tajawal,
                              fontSize: FontSize(16.f),
                              color: AppColors.textPrimary,
                            ),
                          },
                        ),
                      ),
                    ],
                  ),
                ),

              SizedBox(height: 20.h),

              // Audio player
              _buildAudioPlayer(context),

              SizedBox(height: 20.h),

              // Metadata and badges section
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey.withValues(alpha: 0.1),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Date and views
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Date
                        Expanded(
                          child: Column(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 28.f,
                                color: AppColors.primary,
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                'تاريخ النشر',
                                style: TextStyle(
                                  fontFamily: FontFamily.tajawal,
                                  fontSize: 14.f,
                                  color: AppColors.grey,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                _formatDateArabic(sound.date ?? ''),
                                style: TextStyle(
                                  fontFamily: FontFamily.tajawal,
                                  fontSize: 15.f,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        
                        // Vertical divider
                        Container(
                          height: 60.h,
                          width: 1.w,
                          color: AppColors.grey.withValues(alpha: 0.3),
                        ),
                        
                        // Views
                        Expanded(
                          child: Column(
                            children: [
                              Icon(
                                Icons.remove_red_eye_outlined,
                                size: 28.f,
                                color: AppColors.primary,
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                'المشاهدات',
                                style: TextStyle(
                                  fontFamily: FontFamily.tajawal,
                                  fontSize: 14.f,
                                  color: AppColors.grey,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                sound.visitor_count ?? '0',
                                style: TextStyle(
                                  fontFamily: FontFamily.tajawal,
                                  fontSize: 15.f,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                    // Badges
                    if (sound.is_new == true || (sound.priority != null && sound.priority != '0' && sound.priority!.isNotEmpty)) ...[
                      SizedBox(height: 16.h),
                      Wrap(
                        spacing: 12.w,
                        runSpacing: 8.h,
                        alignment: WrapAlignment.center,
                        children: [
                          if (sound.is_new == true)
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(
                                  color: Colors.green.withValues(alpha: 0.3),
                                  width: 1.5,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.new_releases_outlined,
                                    color: Colors.green,
                                    size: 20.f,
                                  ),
                                  SizedBox(width: 6.w),
                                  Text(
                                    'جديد',
                                    style: TextStyle(
                                      fontFamily: FontFamily.tajawal,
                                      fontSize: 15.f,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (sound.priority != null && sound.priority != '0' && sound.priority!.isNotEmpty)
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.primary.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(
                                  color: AppColors.primary.withValues(alpha: 0.3),
                                  width: 1.5,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.star_outline_rounded,
                                    color: AppColors.primary,
                                    size: 20.f,
                                  ),
                                  SizedBox(width: 6.w),
                                  Text(
                                    'مميز',
                                    style: TextStyle(
                                      fontFamily: FontFamily.tajawal,
                                      fontSize: 15.f,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              // Share button
              _buildActionButton(
                icon: Icons.share,
                label: 'مشاركة',
                onTap: () => _shareSound(context),
              ),

              SizedBox(height: 20.h),

              // Additional sound information
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey.withValues(alpha: 0.1),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: AppColors.primary,
                          size: 22.f,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'معلومات إضافية',
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 18.f,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    
                    // Sound ID
                    if (sound.id != null) ...[
                      _buildDetailRow('رقم التسجيل', sound.id.toString()),
                      SizedBox(height: 12.h),
                    ],
                    
                    // File name
                    if (sound.file != null && sound.file!.isNotEmpty) ...[
                      _buildDetailRow('اسم الملف', sound.file!),
                      SizedBox(height: 12.h),
                    ],
                    
                    // Priority
                    if (sound.priority != null && sound.priority!.isNotEmpty && sound.priority != '0') ...[
                      _buildDetailRow('الأولوية', sound.priority!),
                      SizedBox(height: 12.h),
                    ],
                    
                    // Category title (if available)
                    if (categoryTitle != null && categoryTitle!.isNotEmpty) ...[
                      _buildDetailRow('القسم', categoryTitle!),
                      SizedBox(height: 12.h),
                    ],
                    
                    // Status indicators
                    if (sound.is_new == true) ...[
                      _buildStatusRow('حالة', '🆕 جديد', Colors.green),
                      SizedBox(height: 12.h),
                    ],
                    
                    // Sound URL (shortened and clickable)
                    if (sound.sound_file_url != null && sound.sound_file_url!.isNotEmpty) ...[
                      _buildClickableUrlRow(
                        'رابط التسجيل',
                        sound.sound_file_url!,
                      ),
                      SizedBox(height: 12.h),
                    ],
                    
                    // Publisher ID
                    if (sound.publisherId != null && sound.publisherId != '0' && sound.publisherId!.isNotEmpty) ...[
                      _buildDetailRow('معرف الناشر', sound.publisherId!),
                      SizedBox(height: 12.h),
                    ],
                    
                    // Sound Source
                    if (sound.soundSource != null && sound.soundSource!.isNotEmpty) ...[
                      _buildDetailRow('المصدر', sound.soundSource!),
                      SizedBox(height: 12.h),
                    ],
                    
                    // Sound Source URL
                    if (sound.soundSourceUrl != null && sound.soundSourceUrl!.isNotEmpty) ...[
                      _buildClickableUrlRow(
                        'رابط المصدر',
                        sound.soundSourceUrl!,
                      ),
                      SizedBox(height: 12.h),
                    ],
                    
                    // YouTube ID
                    if (sound.soundYoutubeId != null && sound.soundYoutubeId!.isNotEmpty) ...[
                      _buildDetailRow('معرف YouTube', sound.soundYoutubeId!),
                      SizedBox(height: 12.h),
                    ],
                    
                    // Sound Picture
                    if (sound.soundPic != null && sound.soundPic!.isNotEmpty && sound.soundPic != 'default.jpg') ...[
                      _buildDetailRow('صورة الصوت', sound.soundPic!),
                      SizedBox(height: 12.h),
                    ],
                  ],
                ),
              ),

              SizedBox(height: 30.h),
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

  /// Formats date in Arabic format
  String _formatDateArabic(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      final months = [
        'يناير', 'فبراير', 'مارس', 'أبريل', 'مايو', 'يونيو',
        'يوليو', 'أغسطس', 'سبتمبر', 'أكتوبر', 'نوفمبر', 'ديسمبر'
      ];
      return '${date.day} ${months[date.month - 1]} ${date.year}';
    } catch (e) {
      return dateString;
    }
  }
  
  /// Builds a detail row with label and value
  Widget _buildDetailRow(String label, String value, {bool isUrl = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.f,
              fontWeight: FontWeight.w600,
              color: AppColors.grey,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          flex: 3,
          child: Text(
            value,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.f,
              fontWeight: FontWeight.w500,
              color: isUrl ? AppColors.primary : AppColors.textPrimary,
              decoration: isUrl ? TextDecoration.underline : null,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
  
  /// Shortens URL for display
  String _shortenUrl(String url) {
    if (url.length <= 40) return url;
    return '${url.substring(0, 37)}...';
  }
  
  /// Builds a clickable URL row
  Widget _buildClickableUrlRow(String label, String url) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.f,
              fontWeight: FontWeight.w600,
              color: AppColors.grey,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          flex: 3,
          child: InkWell(
            onTap: () => _launchUrl(url),
            child: Text(
              _shortenUrl(url),
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
  
  /// Launches URL in browser
  Future<void> _launchUrl(String urlString) async {
    try {
      final Uri url = Uri.parse(urlString);
      if (await canLaunchUrl(url)) {
        await launchUrl(
          url,
          mode: LaunchMode.externalApplication,
        );
      } else {
        // Show error message if URL can't be launched
        debugPrint('Could not launch $urlString');
      }
    } catch (e) {
      debugPrint('Error launching URL: $e');
    }
  }
  
  /// Builds a status row with colored indicator
  Widget _buildStatusRow(String label, String value, Color color) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.f,
              fontWeight: FontWeight.w600,
              color: AppColors.grey,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: color.withValues(alpha: 0.3)),
            ),
            child: Text(
              value,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
