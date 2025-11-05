import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/utils/share_utils.dart';
import '../../../../gen/fonts.gen.dart';

Widget bookCardBuild({
  required BuildContext context,
  required String book,
  required String viewCont,
  required String title,
  required double width,
  required double height,
  String? bookPicUrl, // Network URL for book image
  bool isLoading = false,
  bool isSoundBook = false,
  VoidCallback? onTap,
  int? bookId, // Added for share functionality
}) {
  return SizedBox(
    height: height,
    width: width,
    child: Card(
      color: AppColors.cardBackground,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.h),
          // Book cover image
          SizedBox(
            width: 92,
            height: 136,
            child: bookPicUrl != null && bookPicUrl.isNotEmpty
                ? _buildBookImage(bookPicUrl)
                : Container(
                    color: AppColors.grey.withOpacity(0.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.book,
                          size: 40,
                          color: AppColors.grey,
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'غلاف الكتاب',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Share button
                if (bookId != null)
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      size: 20.f,
                      color: AppColors.primary,
                    ),
                    onPressed: () {
                      ShareUtils.showShareOptions(
                        context: context,
                        type: ContentType.book,
                        id: bookId,
                        title: title,
                        additionalText: book,
                      );
                    },
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                // View count
                Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye_outlined,
                      size: 20.f,
                      color: AppColors.grey,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      viewCont,
                      style: TextStyle(
                        fontSize: 16.f,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.p),
              child: Text(
                book,
                style: TextStyle(
                  fontSize: 14.f,
                  fontFamily: FontFamily.tajawal,
                  color: AppColors.grey,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,  // Increased from 2 to 3 lines
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          InkWell(
            onTap: isLoading ? null : onTap,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.r),
                color: isLoading ? AppColors.grey : AppColors.primary,
              ),
              child: isLoading
                  ? SizedBox(
                      width: 20.w,
                      height: 20.h,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.0.w,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(AppColors.white),
                      ),
                    )
                  : Container(
                      child: Text(
                        isSoundBook ? "الاستماع للكتاب" : "عرض التفاصيل",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 11.f,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
            ),
          ),
          SizedBox(height: 12.h),
        ],
      ),
    ),
  );
}

// Helper function to build book image (supports both local assets and network URLs)
Widget _buildBookImage(String imagePath) {
  // Check if it's a local asset path or a network URL
  final isLocalAsset = imagePath.startsWith('assets/') ||
      (!imagePath.startsWith('http://') && !imagePath.startsWith('https://'));

  if (isLocalAsset) {
    // Use Image.asset for local assets
    return Image.asset(
      imagePath,
      width: 92,
      height: 136,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: AppColors.grey.withOpacity(0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.book,
                size: 40,
                color: AppColors.grey,
              ),
              SizedBox(height: 4.h),
              Text(
                'غلاف الكتاب',
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  } else {
    // Use CachedNetworkImage for network URLs
    return CachedNetworkImage(
      imageUrl: imagePath,
      width: 92,
      height: 136,
      fit: BoxFit.cover,
      placeholder: (context, url) => Container(
        color: AppColors.grey.withOpacity(0.1),
        child: Center(
          child: CircularProgressIndicator(
            color: AppColors.primary,
            strokeWidth: 2,
          ),
        ),
      ),
      errorWidget: (context, url, error) => Container(
        color: AppColors.grey.withOpacity(0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book,
              size: 40,
              color: AppColors.grey,
            ),
            SizedBox(height: 4.h),
            Text(
              'غلاف الكتاب',
              style: TextStyle(
                fontSize: 10,
                color: AppColors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
