
// Settings page
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';
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
            SizedBox(height: 20.h),
            Text(
              "الإعدادات",
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 24.f,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 30.h),
            Expanded(
              child: ListView(
                children: [

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
                    onTap: () {},
                  ),
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            spreadRadius: 0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(
            icon,
            color: AppColors.primary,
            size: 20.w,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 16.f,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 14.f,
            color: Colors.grey[600],
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16.w,
          color: Colors.grey[400],
        ),
        onTap: onTap,
      ),
    );
  }
}