import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/theme/theme_manager.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

/// Theme Toggle Widget for Settings Page
class ThemeToggleWidget extends StatelessWidget {
  const ThemeToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(
      builder: (context, themeManager, _) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 0.w, vertical: 0.h),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.05),
                blurRadius: 4,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Row(
            children: [
              // Icon
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  themeManager.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                  color: AppColors.primary,
                  size: 24.f,
                ),
              ),
              SizedBox(width: 16.w),
              
              // Text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'الوضع الداكن',
                      style: TextStyle(
                        fontSize: 16.f,
                        fontWeight: FontWeight.bold,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      themeManager.isDarkMode ? 'مفعّل' : 'غير مفعّل',
                      style: TextStyle(
                        fontSize: 12.f,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              
              // Toggle Switch
              Transform.scale(
                scale: 0.9,
                child: Switch(
                  value: themeManager.isDarkMode,
                  onChanged: (value) async {
                    await themeManager.toggleTheme();
                    // Clear all routes and go to fresh home page
                    if (context.mounted) {
                      Get.offAllNamed('/');
                    }
                  },
                  activeColor: AppColors.primary,
                  activeTrackColor: AppColors.primary.withValues(alpha: 0.5),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

