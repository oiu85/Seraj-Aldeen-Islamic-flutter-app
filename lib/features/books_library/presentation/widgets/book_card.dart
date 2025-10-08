import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';

Widget bookCardBuild({
  required BuildContext context,
  required String book,
  required String viewCont,
  required String title,
  required String imageNamePath,
  required double width,
  required double height,
  required String bookImagePath,
  bool isLoading = false,
  bool isSoundBook = false,
  VoidCallback? onTap,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: Card(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.h),
          Image.asset(bookImagePath, width: 92, height: 136),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "الدرس:",
                  style: TextStyle(
                    fontSize: 14.f,
                    fontFamily: FontFamily.tajawal,
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      viewCont,
                      style: TextStyle(
                        fontSize: 16.f,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined),
                      iconSize: 22.f,
                      color: AppColors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          Expanded(
            child: Text(
              book,
              style: TextStyle(
                fontSize: 14.f,
                fontFamily: FontFamily.tajawal,
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 8.h),
          GestureDetector(
            onTap: isLoading ? null : onTap,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
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
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : Container(
                    child: Text(
                        isSoundBook ? "الاستماع للكتاب" : "عرض التفاصيل",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          color: Colors.white,
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
