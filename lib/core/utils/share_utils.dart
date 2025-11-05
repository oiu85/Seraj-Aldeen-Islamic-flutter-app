import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:share_plus/share_plus.dart';
import '../../gen/fonts.gen.dart';
import '../../config/appconfig/app_colors.dart';
import '../responsive/screen_util_res.dart';

/// Content types enum for better type safety
enum ContentType {
  article,
  book,
  sound,
  video,
}

/// Share utility class for sharing content across the app
class ShareUtils {
  /// Base URL for the website
  static const String baseUrl = 'http://srajalden.com';

  /// Generate share URL based on content type and ID
  static String generateShareUrl(ContentType type, int id) {
    switch (type) {
      case ContentType.article:
        return '$baseUrl/article.php?id=$id';
      case ContentType.book:
        return '$baseUrl/book.php?id=$id';
      case ContentType.sound:
        return '$baseUrl/sound.php?id=$id';
      case ContentType.video:
        return '$baseUrl/video.php?id=$id';
    }
  }

  /// Get content type label in Arabic
  static String getContentTypeLabel(ContentType type) {
    switch (type) {
      case ContentType.article:
        return 'مقال';
      case ContentType.book:
        return 'كتاب';
      case ContentType.sound:
        return 'صوتية';
      case ContentType.video:
        return 'فيديو';
    }
  }

  /// Get content type icon
  static IconData getContentTypeIcon(ContentType type) {
    switch (type) {
      case ContentType.article:
        return Icons.article_outlined;
      case ContentType.book:
        return Icons.menu_book_outlined;
      case ContentType.sound:
        return Icons.headset_outlined;
      case ContentType.video:
        return Icons.play_circle_outline;
    }
  }

  /// Share content with title and URL
  static Future<void> shareContent({
    required ContentType type,
    required int id,
    required String title,
    String? additionalText,
  }) async {
    final url = generateShareUrl(type, id);
    
    // Build beautiful share message
    String shareText = '📱 من تطبيق الشيخ عبدالله سراج الدين رحمه الله\n\n';
    shareText += '${getContentTypeLabel(type)}: $title\n\n';
    
    if (additionalText != null && additionalText.isNotEmpty) {
      // Clean HTML tags if present
      final cleanText = additionalText.replaceAll(RegExp(r'<[^>]*>'), '');
      if (cleanText.length > 150) {
        shareText += '${cleanText.substring(0, 150)}...\n\n';
      } else if (cleanText.isNotEmpty) {
        shareText += '$cleanText\n\n';
      }
    }
    
    shareText += '🔗 $url';

    try {
      await Share.share(shareText, subject: title);
    } catch (e) {
      debugPrint('Error sharing content: $e');
    }
  }

  /// Copy URL to clipboard with feedback
  static Future<void> copyUrlToClipboard({
    required BuildContext context,
    required ContentType type,
    required int id,
    String? successMessage,
  }) async {
    final url = generateShareUrl(type, id);

    try {
      // Add haptic feedback
      HapticFeedback.mediumImpact();
      
      await Clipboard.setData(ClipboardData(text: url));

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 24.f,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    successMessage ?? 'تم نسخ الرابط بنجاح ✓',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 15.f,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            backgroundColor: AppColors.primary,
            duration: const Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(16.w),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            elevation: 4,
          ),
        );
      }
    } catch (e) {
      debugPrint('Error copying to clipboard: $e');
      HapticFeedback.heavyImpact();
      
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                Icon(
                  Icons.error_outline,
                  color: Colors.white,
                  size: 24.f,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    'فشل نسخ الرابط',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 15.f,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.red.shade600,
            duration: const Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(16.w),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            elevation: 4,
          ),
        );
      }
    }
  }

  /// Show share bottom sheet with multiple options
  static Future<void> showShareOptions({
    required BuildContext context,
    required ContentType type,
    required int id,
    required String title,
    String? additionalText,
  }) async {
    // Add haptic feedback when opening
    HapticFeedback.lightImpact();
    
    final url = generateShareUrl(type, id);
    
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                offset: const Offset(0, -5),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(24.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Drag handle
                  Container(
                    width: 40.w,
                    height: 4.h,
                    margin: EdgeInsets.only(bottom: 20.h),
                    decoration: BoxDecoration(
                      color: AppColors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                  ).animate().fadeIn(duration: 200.ms).scale(begin: const Offset(0.8, 1)),
                  
                  // Header with icon and title
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                          color: AppColors.primary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Icon(
                          getContentTypeIcon(type),
                          color: AppColors.primary,
                          size: 28.f,
                        ),
                      ).animate().scale(duration: 300.ms, curve: Curves.elasticOut),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'مشاركة ${getContentTypeLabel(type)}',
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 20.f,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              title,
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 14.f,
                                color: AppColors.grey,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).animate().fadeIn(delay: 100.ms).slideX(begin: -0.2, end: 0),
                  
                  SizedBox(height: 24.h),
                  
                  // URL Preview
                  Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: AppColors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: AppColors.grey.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.link,
                          size: 20.f,
                          color: AppColors.primary,
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: Text(
                            url,
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 13.f,
                              color: AppColors.textSecondary,
                              height: 1.4,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ).animate().fadeIn(delay: 200.ms).slideY(begin: 0.2, end: 0),
                  
                  SizedBox(height: 20.h),

                  // Share options
                  _buildShareOption(
                    context: context,
                    icon: Icons.share_outlined,
                    title: 'مشاركة عبر التطبيقات',
                    subtitle: 'شارك في واتساب، تيليجرام وغيرها',
                    onTap: () async {
                      HapticFeedback.selectionClick();
                      Navigator.pop(context);
                      await shareContent(
                        type: type,
                        id: id,
                        title: title,
                        additionalText: additionalText,
                      );
                    },
                    delay: 300,
                  ),
                  
                  SizedBox(height: 12.h),

                  _buildShareOption(
                    context: context,
                    icon: Icons.content_copy_outlined,
                    title: 'نسخ الرابط',
                    subtitle: 'انسخ الرابط إلى الحافظة',
                    onTap: () async {
                      HapticFeedback.selectionClick();
                      Navigator.pop(context);
                      await copyUrlToClipboard(
                        context: context,
                        type: type,
                        id: id,
                      );
                    },
                    delay: 400,
                  ),

                  SizedBox(height: 12.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Build a single share option button
  static Widget _buildShareOption({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    required int delay,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: AppColors.grey.withOpacity(0.2),
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Icon(
                icon,
                color: AppColors.primary,
                size: 24.f,
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 16.f,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 13.f,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_back_ios,
              size: 16.f,
              color: AppColors.grey,
            ),
          ],
        ),
      ),
    ).animate().fadeIn(delay: delay.ms).slideX(begin: -0.2, end: 0);
  }

  /// Get content type from string (for flexibility)
  static ContentType? getContentTypeFromString(String type) {
    switch (type.toLowerCase()) {
      case 'article':
        return ContentType.article;
      case 'book':
        return ContentType.book;
      case 'sound':
        return ContentType.sound;
      case 'video':
        return ContentType.video;
      default:
        return null;
    }
  }
}

