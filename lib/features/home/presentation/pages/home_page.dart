import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';
import 'package:seraj_aldean_flutter_app/features/global_search/presentation/pages/global_search.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/di/app_dependencies.dart';
import '../../../../core/shared/widgets/app_scaffold.dart';
import '../../../../core/shared/widgets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../settings/presentation/pages/settings_page.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';
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
  late final HomeBloc _homeBloc;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
    
    // Create HomeBloc once and keep it alive for the entire app lifecycle
    _homeBloc = getIt<HomeBloc>()..add(const LoadMenusEvent());
    
    // Initialize pages after bloc creation
    _pages = [
      const HomeContent(key: ValueKey('home')),
      const GlobalSearch(key: ValueKey('search')),
      const SettingsPage(key: ValueKey('settings')),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    _homeBloc.close();
    super.dispose();
  }

  void _onDestinationSelected(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _homeBloc,
      child: AppScaffold.clean(
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
      ),
    );
  }
}

// Home content widget
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    // Use the existing BlocProvider from parent (HomePage)
    return const _HomeContentView();
  }
}

class _HomeContentView extends StatefulWidget {
  const _HomeContentView();

  @override
  State<_HomeContentView> createState() => _HomeContentViewState();
}

class _HomeContentViewState extends State<_HomeContentView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SimpleLottieHandler(
          blocStatus: state.status,
          successWidget: _buildSuccessContent(context, state),
          isEmpty: state.status.isSuccess() && state.menus.isEmpty,
          emptyMessage: 'لا توجد قوائم متاحة',
          loadingMessage: 'جاري تحميل القوائم...',
          onRetry: () {
            context.read<HomeBloc>().add(const LoadMenusEvent());
          },
          animationSize: 200.w,
        );
      },
    );
  }

  Widget _buildSuccessContent(BuildContext context, HomeState state) {
    return AppScaffold.clean(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: EdgeInsets.only(right: 16.w, left: 16.w),
        child: ListView(
          children: [
            _buildAnimatedMainCard(),
            SizedBox(height: 20.h),
            _buildAnimatedSectionTitle(),
            SizedBox(height: 10.h),
            _buildAnimatedListTiles(state.menus),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedMainCard() {
    Widget card = MainCard();
    
    return card
        .animate()
        .fadeIn(
          duration: 1000.ms,
          delay: 200.ms,
          curve: Curves.easeOutCubic,
        )
        .slideY(
          begin: 0.3,
          end: 0,
          duration: 800.ms,
          delay: 200.ms,
          curve: Curves.easeOutCubic,
        )
        .scale(
          begin: const Offset(0.9, 0.9),
          end: const Offset(1.0, 1.0),
          duration: 600.ms,
          delay: 400.ms,
          curve: Curves.easeOutBack,
        );
  }

  Widget _buildAnimatedSectionTitle() {
    Widget title = Text(
      "أقسام التطبيق:",
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontWeight: FontWeight.bold,
        fontSize: 23.f,
      ),
    );
    
    return title
        .animate()
        .fadeIn(
          duration: 800.ms,
          delay: 600.ms,
          curve: Curves.easeOutCubic,
        )
        .slideX(
          begin: -0.2,
          end: 0,
          duration: 700.ms,
          delay: 600.ms,
          curve: Curves.easeOutCubic,
        );
  }

  Widget _buildAnimatedListTiles(List menus) {
    // Static menu items with their icons and routes
    final Map<String, Map<String, dynamic>> staticMenuItems = {
      "كتب الإمام": {
        'assetPath': Assets.svg.book.path,
        'onTap': () => Get.toNamed(AppRoute.booksPage),
      },
      "كُتُب الإمام": {
        'assetPath': Assets.svg.book.path,
        'onTap': () => Get.toNamed(AppRoute.booksPage),
      },
      "فوائد وفتاوى": {
        'assetPath': Assets.svg.papers.path,
        'onTap': () => Get.toNamed(AppRoute.benefits),
      },
      "الصوتيات": {
        'assetPath': Assets.svg.soundWave.path,
        'onTap': () => Get.toNamed(AppRoute.sounds),
      },
      "الفيديوهات": {
        'assetPath': Assets.svg.vedio.path,
        'onTap': () => Get.toNamed(AppRoute.videos),
      },
      "معرض الصور": {
        'assetPath': Assets.svg.galary.path,
        'onTap': () => Get.toNamed(AppRoute.gallery),
      },
    };

    // Filter menus from API that match our static items
    final List<Map<String, dynamic>> filteredMenus = [];
    
    for (var menu in menus) {
      final menuName = menu.menusName ?? '';
      if (staticMenuItems.containsKey(menuName)) {
        filteredMenus.add({
          'title': menuName,
          'assetPath': staticMenuItems[menuName]!['assetPath'],
          'onTap': staticMenuItems[menuName]!['onTap'],
        });
      }
    }

    return Column(
      children: filteredMenus.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;
        
        Widget listTile = buildListTile(
          title: item['title'],
          assetPath: item['assetPath'],
          onTap: item['onTap'],
        );
        
        return listTile
            .animate()
            .fadeIn(
              duration: 700.ms,
              delay: (800 + index * 150).ms,
              curve: Curves.easeOutCubic,
            )
            .slideX(
              begin: 0.3,
              end: 0,
              duration: 700.ms,
              delay: (800 + index * 150).ms,
              curve: Curves.easeOutCubic,
            )
            .scale(
              begin: const Offset(0.95, 0.95),
              end: const Offset(1.0, 1.0),
              duration: 500.ms,
              delay: (900 + index * 150).ms,
              curve: Curves.easeOutBack,
            );
      }).toList(),
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
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.08),
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
