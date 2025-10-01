import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onDestinationSelected;
  
  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final List<_NavItemData> _items = [
    _NavItemData(iconPath: Assets.svg.mosque.path, label: "الرئيسية"),
    _NavItemData(iconPath: Assets.svg.search.path, label: "البحث"),
    _NavItemData(iconPath: Assets.svg.settings.path, label: "الإعدادات"),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 65.h,
      backgroundColor: Colors.white,
      elevation: 3,
      indicatorColor: AppColors.primary.withOpacity(0.1),
      selectedIndex: widget.selectedIndex,
      onDestinationSelected: widget.onDestinationSelected,
      destinations: _items.map((item) {
        final isActive = _items.indexOf(item) == widget.selectedIndex;
        return NavigationDestination(
          icon: SvgPicture.asset(
            item.iconPath,
            width: 24.w,
            height: 24.w,
            color: isActive ? AppColors.primary : Colors.grey,
          ),
          label: item.label,
        );
      }).toList(),
    );
  }
}

class _NavItemData {
  final String iconPath;
  final String label;
  _NavItemData({required this.iconPath, required this.label});
}
