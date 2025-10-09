import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed(AppRoute.biography);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 220.h,
          width: 370.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image:AssetImage(Assets.images.mainCardBackground.path,),
            ),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0.p, right: 12.p, left: 12.p),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "أهلاً بكم في تطبيق فضيلة الإمام الشيخ:",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 18.f,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                        softWrap: true,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "عبدالله سراج الدين الحسيني",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.f,
                          fontFamily: FontFamily.tajawal,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(height: 4.h,),
                      Text(
                        "رحمه الله ورضي عنه ",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 13.f,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white
                        ),
                      ),
                      SizedBox(height: 4.h,),
                      Text(
                        "1442-1342",
                        style: TextStyle(
                          fontSize: 14.f,
                          fontWeight: FontWeight.bold,
                          fontFamily: FontFamily.tajawal,
                          color: AppColors.white,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: (){
                          Get.toNamed(AppRoute.biography);
                        },
                        child: Container(
                          height: 37.h,
                          width: 130.w,
                          padding: EdgeInsets.only(right: 7.p,left: 4),
                          decoration: BoxDecoration(
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
                                  fontSize: 16.f,
                                ),
                              ),
                              Spacer(),
                                 Icon(
                                  Icons.arrow_forward_outlined,
                                  size: 24.p,
                                  color: AppColors.primary,
                                ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    bottomLeft: Radius.circular(16.r),
                  ),
                  child: Image.asset(
                    Assets.images.abdullahSerajAldeen.path,
                    fit: BoxFit.contain,
                    height: 158,
                    width: 180,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
