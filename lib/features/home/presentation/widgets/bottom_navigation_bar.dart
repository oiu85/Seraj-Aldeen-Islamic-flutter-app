import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onDestinationSelected;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    final List<_NavItemData> items = [
      _NavItemData(iconPath: Assets.svg.mosque.path, label: "الرئيسية"),
      _NavItemData(iconPath: Assets.svg.search.path, label: "البحث"),
      _NavItemData(iconPath: Assets.svg.settings.path, label: "الإعدادات"),
    ];

    return Container(
      color: AppColors.cardBackground,
      margin: EdgeInsets.only(bottom: 10.p),
      padding: EdgeInsets.symmetric(horizontal: 20.p),

      child: SalomonBottomBar(
        curve: Curves.easeInCubic,
        currentIndex: selectedIndex,
        onTap: onDestinationSelected,
        items: items.map((item) {
          final isActive = items.indexOf(item) == selectedIndex;
          return SalomonBottomBarItem(
            icon: SvgPicture.asset(
              item.iconPath,
              width: 24.w,
              height: 24.w,
              color: isActive ? AppColors.primary : Colors.grey,
            ),
            title: Text(
              item.label,
              style: TextStyle(
                fontSize: 12.f,
                fontWeight: FontWeight.w500,
              ),
            ),
            selectedColor: AppColors.primary,
            unselectedColor: Colors.grey,
          );
        }).toList(),
      ),
    );
  }
}

class _NavItemData {
  final String iconPath;
  final String label;
  _NavItemData({required this.iconPath, required this.label});
}
