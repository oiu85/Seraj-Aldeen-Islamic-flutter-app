import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/appconfig/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';


class DecorationAppBar extends StatelessWidget {
  final String title;

  const DecorationAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// الصورة اليمنى
              Image.asset(
                Assets.images.appbarImageRight.path,
                width: 90,
              )
                  .animate()
                  .fadeIn(duration: 800.ms, delay: 200.ms)
                  .slideX(begin: -0.5, end: 0, duration: 600.ms, delay: 200.ms)
                  .scale(begin: const Offset(0.8, 0.8), end: const Offset(1.0, 1.0), duration: 500.ms, delay: 300.ms),

              /// العنوان
              Text(
                title,
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              )
                  .animate()
                  .fadeIn(duration: 1000.ms, delay: 400.ms)
                  .scale(begin: const Offset(0.7, 0.7), end: const Offset(1.0, 1.0), duration: 700.ms, delay: 400.ms)
                  .shimmer(
                  duration: 2000.ms,
                  delay: 1000.ms,
                  color: AppColors.primary.withOpacity(0.3)),

              /// الصورة اليسرى
              Image.asset(
                Assets.images.appbarImageLeft.path,
                width: 90,
              )
                  .animate()
                  .fadeIn(duration: 800.ms, delay: 200.ms)
                  .slideX(begin: 0.5, end: 0, duration: 600.ms, delay: 200.ms)
                  .scale(begin: const Offset(0.8, 0.8), end: const Offset(1.0, 1.0), duration: 500.ms, delay: 300.ms),
            ],
          ),
        ),
      ],
    );
  }
}
