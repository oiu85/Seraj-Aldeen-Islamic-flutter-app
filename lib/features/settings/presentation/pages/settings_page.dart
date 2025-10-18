
// Settings page
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';
import 'package:seraj_aldean_flutter_app/features/settings/presentation/widgets/download_path_widget.dart';
import 'package:seraj_aldean_flutter_app/features/settings/presentation/widgets/font_size_toggle_widget.dart';
import 'package:seraj_aldean_flutter_app/features/settings/presentation/widgets/fullscreen_toggle_widget.dart';
import 'package:seraj_aldean_flutter_app/features/settings/presentation/widgets/theme_toggle_widget.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/shared/widgets/app_scaffold.dart';
import '../../../../core/shared/widgets/close_app_button.dart';
import '../../../../gen/fonts.gen.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48.h),
            Text(
              "الإعدادات",
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 24.f,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  // Dark Theme Toggle
                  const ThemeToggleWidget(),
                  SizedBox(height: 10.h),

                  // Font Size Toggle
                  const FontSizeToggleWidget(),
                  SizedBox(height: 10.h),

                  // Full Screen Toggle
                  const FullScreenToggleWidget(),
                  SizedBox(height: 10.h),

                  _buildSettingsItem(
                    icon: Icons.notifications,
                    title: "تواصل معنا ",
                    subtitle: "التواصل معنا بالبريد",
                    onTap: () {
                      Get.toNamed(AppRoute.contacUs);
                    },
                  ),

                  _buildSettingsItem(
                    icon: Icons.info,
                    title: "حول التطبيق",
                    subtitle: "معلومات التطبيق",
                    onTap: () {
                      Get.toNamed(AppRoute.aboutApp);
                    },
                  ),
                  
                  SizedBox(height: 10.h),
                  
                  // Download Path Widget
                  const DownloadPathWidget(),
                  
                  SizedBox(height: 40.h),
                  Center(
                    child: CloseAppButton(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
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
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20.r),
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
                icon,
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
                    title,
                    style: TextStyle(
                      fontSize: 16.f,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.tajawal,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12.f,
                      fontFamily: FontFamily.tajawal,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            
            // Arrow Icon
            Icon(
              Icons.arrow_forward_ios,
              size: 16.w,
              color: AppColors.textSecondary,
            ),
          ],
        ),
      ),
    );
  }
}