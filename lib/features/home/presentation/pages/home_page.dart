import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';
import 'package:seraj_aldean_flutter_app/features/global_search/presentation/pages/global_search.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/shared/widgets/app_scaffold.dart';
import '../../../../core/shared/widgets/close_app_button.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../settings/presentation/pages/settings_page.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/main_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  late PageController _pageController;

  final List<Widget> _pages = [
    const HomeContent(key: ValueKey('home')),
    const GlobalSearch(key: ValueKey('search')),
    const SettingsPage(key: ValueKey('settings')),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onDestinationSelected(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onDestinationSelected,
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _pageController,
            builder: (context, child) {
              double value = 1.0;
              if (_pageController.position.haveDimensions) {
                value = _pageController.page! - index;
                value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
              }
              return FadeTransition(
                opacity: AlwaysStoppedAnimation(value),
                child: Transform.scale(
                  scale: Curves.easeOut.transform(value),
                  child: child,
                ),
              );
            },
            child: _pages[index],
          );
        },
      ),
    );
  }
}

// Home content widget
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(right: 16.w, left: 16.w),
        child: ListView(
          children: [
            MainCard(),
            SizedBox(height: 20.h),
            Text(
              "أقسام التطبيق:",
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold,
                fontSize: 23.f,
              ),
            ),
            SizedBox(height: 10.h),
            buildListTile(
              title: "كتب الإمام",
              assetPath: Assets.svg.book.path,
              onTap: () {},
            ),
            buildListTile(
              title: "فوائد وفتاوى",
              assetPath: Assets.svg.paepar.path,
              onTap: () {
                Get.toNamed(AppRoute.benefits);
              },
            ),
            buildListTile(
              title: "الصوتيات",
              assetPath: Assets.svg.soundWave.path,
              onTap: () {},
            ),
            buildListTile(
              title: "الفيديوهات",
              assetPath: Assets.svg.book.path,
              onTap: () {},
            ),
            buildListTile(
              title: "معرض الصور",
              assetPath: Assets.svg.galery.path,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}


Widget buildListTile({
  required String title,
  required String assetPath,
  VoidCallback? onTap,
}) {
  return Container(
    height: 83.h,
    margin: EdgeInsets.only(bottom: 20.p, right: 10.p, left: 10.p),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.r),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          blurRadius: 8,
          spreadRadius: 0.3,
          offset: const Offset(0, 1),
        ),
      ],
    ),
    child: Center(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: SvgPicture.asset(
            assetPath,
            width: 40.w,
            height: 40.w,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.f,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Container(
          height: 40.w,
          width: 40.w,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Icon(
            Icons.arrow_forward_ios,
            size: 18.p,
            color: AppColors.white,
          ),
        ),
        onTap: onTap,
      ),
    ),
  );
}
