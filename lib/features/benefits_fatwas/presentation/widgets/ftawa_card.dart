import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';

Widget lessonCardBuild({
  required BuildContext context,
  required String lesson,
  required String viewCont,
  required String title,
  required String imageNamePath,
  required double width,
  required double height,
  bool isLoading = false,
  VoidCallback? onTap,
}) {
  // Using extension methods for easier access
  // No need for helper methods - use extensions directly: 25.w, 30.h, 16.f

  return SizedBox(
    height: height,
    width: width,
    child: Card(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 12.p),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      Assets.images.quran.path,
                      width: 58,
                      height: 50,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: FontFamily.amiri,
                      fontSize: 18.f,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    imageNamePath,
                    width: 86,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.p, left: 4.p),
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
          Text(
            lesson,
            style: TextStyle(
              fontSize: 14.f,
              fontFamily: FontFamily.tajawal,
              color: AppColors.grey,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),



          GestureDetector(
            onTap: isLoading ? null : onTap,
            child: Container(
              margin: EdgeInsets.only(bottom: 8.h, left: 8.w, right: 8.w),
              padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 12.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.r),
                color: isLoading ? AppColors.grey : AppColors.primary,
              ),
              child: isLoading
                  ? SizedBox(
                      width: 22.w,
                      height: 22.h,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.5.w,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : Text(
                      "عرض التفاصيل",
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.f,
                      ),
                    ),
            ),
          ),
          SizedBox(height: 6.h),
        ],
      ),
    ),
  );
}
