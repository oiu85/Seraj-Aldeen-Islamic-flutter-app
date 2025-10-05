import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';

import '../../../../core/shared/widgets/decoration_app_bar.dart';
import '../widgets/main_category_section.dart';
import '../widgets/vedio_card.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final List<Animation<double>> _animations = [];
  
  final videos = [
    'الدرس الأول',
    'الدرس الثاني',
    'الدرس الثالث',
    'الدرس الرابع',
    'الدرس الخامس',
    'الدرس السادس',
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    // Create staggered animations for each video card
    for (int i = 0; i < videos.length; i++) {
      final start = (i * 0.1).clamp(0.0, 1.0);
      final end = (start + 0.3).clamp(0.0, 1.0);
      
      _animations.add(
        CurvedAnimation(
          parent: _animationController,
          curve: Interval(start, end, curve: Curves.easeOutCubic),
        ),
      );
    }

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return AppScaffold.clean(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          /// AppBar مزخرف with fade-in animation
          SliverToBoxAdapter(
            child: FadeTransition(
              opacity: _animationController,
              child: Column(
                children: [
                  const DecorationAppBar(title: 'الفيديوهات'),
                  SizedBox(height: 30.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: const MainCategorySection(),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),

          /// Grid لبطاقات الفيديو with staggered animation
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0.w,
                mainAxisSpacing: 0.h,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _AnimatedVideoCard(
                    animation: _animations[index],
                    child: VideoCard(
                      title: videos[index],
                      onTap: () {
                        Get.toNamed(AppRoute.player);
                      },
                    ),
                  );
                },
                childCount: videos.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Animated wrapper for video cards
class _AnimatedVideoCard extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;

  const _AnimatedVideoCard({
    required this.animation,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return FadeTransition(
          opacity: animation,
          child: Transform.translate(
            offset: Offset(0, 30 * (1 - animation.value)),
            child: Transform.scale(
              scale: 0.8 + (0.2 * animation.value),
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }
}
