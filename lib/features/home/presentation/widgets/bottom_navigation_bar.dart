import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h, left: 16.w, right: 16.w),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 12,
            spreadRadius: 1,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            iconPath: Assets.svg.mosque.path,
            label: "الرئيسية",
            isActive: true,
          ),
          _buildNavItem(
            iconPath: Assets.svg.search.path,
            label: "البحث",
          ),
          _buildNavItem(
            iconPath: Assets.svg.settings.path,
            label: "الإعدادات",
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String iconPath,
    required String label,
    bool isActive = false,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          iconPath,
          width: 28.w,
          height: 28.w,
          color: isActive ? AppColors.primary : Colors.grey,
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.f,
            fontWeight: FontWeight.w500,
            color: isActive ? AppColors.primary : Colors.grey,
          ),
        ),
      ],
    );
  }
}
