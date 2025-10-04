import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';

class MainCategorySection extends StatelessWidget {
  const MainCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.p),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.p, vertical: 15.p),
            decoration: BoxDecoration(
              color: AppColors.primaryTest,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Text(
              "وفاة الامام",
              style: TextStyle(
                  fontSize: 14.f,
                  color: AppColors.lightGrey,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontFamily.tajawal),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.p, vertical: 15.p),
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Text(
              "مجالس الذكر والانشاد",
              style: TextStyle(
                  fontSize: 14.f,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontFamily.tajawal),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.p, vertical: 15.p),
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Text(
              "مجالس الذكر والانشاد",
              style: TextStyle(
                  fontSize: 14.f,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontFamily.tajawal),
            ),
          ),
        ],
      ),
    );
  }
}
