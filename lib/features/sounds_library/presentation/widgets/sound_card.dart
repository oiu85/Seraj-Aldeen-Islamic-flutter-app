import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';

class SoundCard extends StatelessWidget {
  final String title;
  final String? visitorCount;
  final String? date;
  final VoidCallback? onTap;
  final VoidCallback? onPlayPause;
  final VoidCallback? onDownload;
  final bool isPlaying;
  final bool isLoading;
  final bool isDownloading;
  final bool hasError;
  final String? duration;
  final String? position;
  final double? width;
  final double? height;

  const SoundCard({
    super.key,
    required this.title,
    this.visitorCount,
    this.date,
    this.onTap,
    this.onPlayPause,
    this.onDownload,
    this.isPlaying = false,
    this.isLoading = false,
    this.isDownloading = false,
    this.hasError = false,
    this.duration,
    this.position,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.r)),
        color: Colors.white,
        elevation: 2,
        child: Container(
          width: width ?? 220.w,
          height: height ?? 160.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Fixed height title section
              SizedBox(
                height: 44.h,
                child: Row(
                  children: [
                    Icon(
                      Icons.headphones,
                      size: 24.w,
                      color: AppColors.primary,
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 14.f,
                          fontWeight: FontWeight.w600,
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
                padding: EdgeInsets.only(right: 8.w),
                child: SizedBox(
                  height: 24.h,
                  child: Row(
                    children: [
                      Icon(Icons.visibility, size: 18.f, color: AppColors.primary),
                      SizedBox(width: 6.w),
                      Text(
                        visitorCount ?? '0',
                        style: TextStyle(
                          fontSize: 12.f,
                          color: AppColors.grey,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Icon(
                        Icons.calendar_month,
                        size: 16.f,
                        color: AppColors.primary,
                      ),
                      SizedBox(width: 6.w),
                      Expanded(
                        child: Text(
                          _formatDate(date),
                          style: TextStyle(
                            fontSize: 12.f,
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
                height: 36.h,
                child: _buildAudioPlayer(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAudioPlayer() {
    return Container(
      width: double.infinity,
      height: 36.h,
      decoration: _buildPlayerDecoration(),
      child: Row(
        children: [
          _buildPlayButton(),
          _buildDurationText(),
          _buildDownloadButton(),
        ],
      ),
    );
  }

  BoxDecoration _buildPlayerDecoration() {
    return BoxDecoration(
      color: AppColors.grey.withAlpha(20),
      borderRadius: BorderRadius.circular(18.r),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 4.r,
          offset: Offset(0, 2.h),
        ),
      ],
    );
  }

  Widget _buildPlayButton() {
    return InkWell(
      onTap: (isLoading || isDownloading) ? null : onPlayPause,
      child: Container(
        width: 28.w,
        height: 28.w,
        margin: EdgeInsets.all(4.w),
        decoration: _buildPlayButtonDecoration(),
        child: _buildPlayButtonContent(),
      ),
    );
  }

  BoxDecoration _buildPlayButtonDecoration() {
    return BoxDecoration(
      color: AppColors.primary,
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: AppColors.primary,
          blurRadius: 6.r,
          offset: Offset(0, 2.h),
        ),
      ],
    );
  }

  Widget _buildPlayButtonContent() {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (isDownloading || isLoading) _buildLoadingIndicator(),
        if (!isDownloading && !isLoading) _buildPlayIcon(),
      ],
    );
  }

  Widget _buildLoadingIndicator() {
    return SizedBox(
      width: 12.w,
      height: 12.w,
      child: CircularProgressIndicator(
        strokeWidth: 2.w,
        valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
      ),
    );
  }

  Widget _buildPlayIcon() {
    return Icon(
      hasError ? Icons.refresh : (isPlaying ? Icons.pause : Icons.play_arrow),
      size: 14.w,
      color: Colors.white,
    );
  }

  Widget _buildDurationText() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Text(
          _getDurationText(),
          style: _getDurationTextStyle(),
        ),
      ),
    );
  }

  String _getDurationText() {
    if (isDownloading) return 'جاري التحميل...';
    if (hasError) return 'خطأ';
    if (duration != null && position != null) return '$position/$duration';
    return '0:00/0:00';
  }

  TextStyle _getDurationTextStyle() {
    Color textColor = const Color(0xFF333333);
    if (isDownloading) textColor = AppColors.primary;
    if (hasError) textColor = Colors.red;

    return TextStyle(
      fontFamily: FontFamily.tajawal,
      fontSize: 12.f,
      color: textColor,
      fontWeight: FontWeight.w500,
    );
  }

  Widget _buildDownloadButton() {
    return GestureDetector(
      onTap: isDownloading ? null : onDownload,
      child: Container(
        width: 28.w,
        height: 28.w,
        margin: EdgeInsets.all(4.w),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (!isDownloading) _buildDownloadIcon(),
            if (isDownloading) _buildDownloadLoadingIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _buildDownloadIcon() {
    return Icon(
      Icons.download,
      size: 16.w,
      color: const Color(0xFF333333),
    );
  }

  Widget _buildDownloadLoadingIndicator() {
    return SizedBox(
      width: 12.w,
      height: 12.w,
      child: CircularProgressIndicator(
        strokeWidth: 2.w,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
      ),
    );
  }

  String _formatDate(String? date) {
    if (date == null || date.isEmpty) return 'غير محدد';
    // You can add date formatting logic here if needed
    return date;
  }
}