import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/theme/fullscreen_manager.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

/// FullScreen Toggle Widget for Settings Page
class FullScreenToggleWidget extends StatelessWidget {
  const FullScreenToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FullScreenManager>(
      builder: (context, fullScreenManager, _) {
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
                  fullScreenManager.isFullScreenMode 
                    ? Icons.fullscreen 
                    : Icons.fullscreen_exit,
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
                      'العرض بمل ء الشاشة',
                      style: TextStyle(
                        fontSize: 16.f,
                        fontWeight: FontWeight.bold,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      fullScreenManager.isFullScreenMode ? 'مفعّل' : 'غير مفعّل',
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
                  value: fullScreenManager.isFullScreenMode,
                  onChanged: (value) async {
                    await fullScreenManager.toggleFullScreenMode();
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

