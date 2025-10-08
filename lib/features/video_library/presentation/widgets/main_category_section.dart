import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';
import '../../data/models/video_model.dart';

class MainCategorySection extends StatelessWidget {
  final List<VideoCategory> categories;
  final int? selectedCategoryId;
  final Function(int categoryId) onCategoryTap;

  const MainCategorySection({
    super.key,
    required this.categories,
    this.selectedCategoryId,
    required this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.p),
      child: Row(
        children: categories.map((category) {
          final isSelected = category.id == selectedCategoryId;
          return Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: GestureDetector(
              onTap: () {
                if (category.id != null) {
                  onCategoryTap(category.id!);
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.p, vertical: 15.p),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primaryTest : AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Text(
                  category.title ?? '',
                  style: TextStyle(
                    fontSize: 14.f,
                    color: isSelected ? AppColors.lightGrey : AppColors.darkGrey,
                    fontWeight: FontWeight.bold,
                    fontFamily: FontFamily.tajawal,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
