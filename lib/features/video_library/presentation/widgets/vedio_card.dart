import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/utils/share_utils.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String? visitorCount;
  final String? date;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final int? videoId; // Added for share functionality

  const VideoCard({
    super.key,
    required this.title,
    this.visitorCount,
    this.date,
    this.onTap,
    this.width,
    this.height,
    this.videoId,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.r)),
        color: AppColors.cardBackground,
        elevation: 2,
        child: Container(
          width: width ?? 200.w,
          height: height ?? 100.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Fixed height title section
              SizedBox(
                height: 55.h,
                child: Row(
                  children: [
                    Image.asset(
                      Assets.images.vedioIcon.path,
                      width: 30.w,
                      height: 30.w,
                    ),
                    SizedBox(width: 8.w),
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
                padding: EdgeInsets.only(right: 4.w),
                child: SizedBox(
                  height: 24.h,
                  child: Row(
                    children: [
                      Icon(Icons.visibility,
                          size: 16.f, color: AppColors.primary),
                      SizedBox(width: 2.w),
                      Text(
                        visitorCount ?? '0',
                        style: TextStyle(
                          fontSize: 12.f,
                          color: AppColors.grey,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Icon(
                        Icons.calendar_month,
                        size: 16.f,
                        color: AppColors.primary,
                      ),
                      SizedBox(width: 4.w),
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
                      // Share button
                      if (videoId != null)
                        IconButton(
                          icon: Icon(
                            Icons.share,
                            size: 18.f,
                            color: AppColors.primary,
                          ),
                          onPressed: () {
                            ShareUtils.showShareOptions(
                              context: context,
                              type: ContentType.video,
                              id: videoId!,
                              title: title,
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
              Center(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 1.h , vertical: 6.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: AppColors.primaryTest,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "تشغيل",
                        style: TextStyle(
                            fontSize: 14.f,
                            fontWeight: FontWeight.bold,
                            fontFamily: FontFamily.tajawal,
                            color: AppColors.white),
                      ),
                      Icon(Icons.play_circle_outline_outlined, color: AppColors.white,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Video download and audio player functionality removed - not used in video cards
  // All related helper methods removed for cleaner code

  String _formatDate(String? date) {
    if (date == null || date.isEmpty) return 'غير محدد';
    // You can add date formatting logic here if needed
    return date;
  }
}
