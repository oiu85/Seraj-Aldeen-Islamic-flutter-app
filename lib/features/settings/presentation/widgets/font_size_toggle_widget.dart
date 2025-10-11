import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/theme/font_size_manager.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

/// Font Size Toggle Widget for Settings Page
class FontSizeToggleWidget extends StatelessWidget {
  const FontSizeToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FontSizeManager>(
      builder: (context, fontSizeManager, _) {
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
          child: Column(
            children: [
              // Toggle Row
              Row(
                children: [
                  // Icon
                  Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Icon(
                      Icons.text_fields,
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
                          'حجم الخط افتراضي',
                          style: TextStyle(
                            fontSize: 16.f,
                            fontWeight: FontWeight.bold,
                            fontFamily: FontFamily.tajawal,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          fontSizeManager.isDefaultFontSize 
                              ? 'مفعّل' 
                              : 'مخصص (${fontSizeManager.fontSizeMultiplier.toStringAsFixed(1)})',
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
                      value: fontSizeManager.isDefaultFontSize,
                      onChanged: (value) async {
                        await fontSizeManager.toggleDefaultFontSize();
                      },
                      activeColor: AppColors.primary,
                      activeTrackColor: AppColors.primary.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
              
              // Slider Section (shown when not default)
              if (!fontSizeManager.isDefaultFontSize) ...[
                SizedBox(height: 16.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 8.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    children: [
                      // Slider Labels
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'صغير',
                            style: TextStyle(
                              fontSize: 12.f,
                              fontFamily: FontFamily.tajawal,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          Text(
                            'كبير',
                            style: TextStyle(
                              fontSize: 12.f,
                              fontFamily: FontFamily.tajawal,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                      
                      // Slider
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: AppColors.primary,
                          inactiveTrackColor: AppColors.primary.withValues(alpha: 0.2),
                          thumbColor: AppColors.primary,
                          overlayColor: AppColors.primary.withValues(alpha: 0.2),
                          trackHeight: 4.h,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 8.w,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 16.w,
                          ),
                        ),
                        child: Slider(
                          value: fontSizeManager.fontSizeMultiplier,
                          min: FontSizeManager.minFontSize,
                          max: FontSizeManager.maxFontSize,
                          divisions: 7, // 0.7, 0.735, 0.77, 0.805, 0.84, 0.875, 0.91
                          label: fontSizeManager.fontSizeMultiplier.toStringAsFixed(2),
                          onChanged: (value) async {
                            await fontSizeManager.setFontSize(value);
                          },
                        ),
                      ),
                      
                      // Current Value Display
                      Text(
                        'حجم الخط: ${(fontSizeManager.fontSizeMultiplier * 100).toStringAsFixed(0)}%',
                        style: TextStyle(
                          fontSize: 13.f,
                          fontWeight: FontWeight.bold,
                          fontFamily: FontFamily.tajawal,
                          color: AppColors.primary,
                        ),
                      ),
                      
                      SizedBox(height: 4.h),
                      
                      // Preview Text
                      Container(
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                          color: AppColors.scaffoldBackground,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Center(
                          child: Text(
                            'نموذج للنص - بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ',
                            style: TextStyle(
                              fontSize: 14.f,
                              fontFamily: FontFamily.tajawal,
                              color: AppColors.textPrimary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

