import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_utils.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 220.h,
        width: 370.w,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF8DB6E2),
              AppColors.white,
            ],
            stops: [0.0, 0.4],
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 30.0.p, right: 12.p, left: 12.p),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "أهلاً بكم في تطبيق الإمام الشيخ:",
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 12.f,
                        fontWeight: FontWeight.bold,
                      ),
                      softWrap: true,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "عبدالله سراج الدين الحسيني",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.f,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.primary,
                      ),
                    ),
                    Text(
                      "رحمه الله ورضي عنه ",
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 12.f,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "1442-1342",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.primary,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 130.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.p, vertical: 10.p),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primary),
                        borderRadius: BorderRadius.circular(70.r),
                        color: AppColors.white,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "السيرة الذاتية",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              fontFamily: FontFamily.tajawal,
                              fontSize: 12.f,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: AppColors.primary,
                            size: 14.p,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  bottomLeft: Radius.circular(16.r),
                ),
                child: Image.asset(
                  Assets.images.shaikImageRemovebgPreview.path,
                  fit: BoxFit.contain,
                  height: 158,
                  width: 170,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
