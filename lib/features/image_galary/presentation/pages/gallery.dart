import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/decoration_app_bar.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import '../../../../gen/assets.gen.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> with TickerProviderStateMixin {
  late AnimationController _headerController;
  late AnimationController _contentController;
  final List<AnimationController> _sectionControllers = [];

  final List<String> _sections = [
    "المدرسة الشعبانية",
    "نشاطات الطلاب",
    "المعارض والفعاليات",
    "الاحتفالات والمناسبات",
  ];

  @override
  void initState() {
    super.initState();
    
    // Header animation
    _headerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    // Content animation
    _contentController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    // Section animations
    for (int i = 0; i < _sections.length; i++) {
      _sectionControllers.add(
        AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 400),
        ),
      );
    }

    // Start animations
    _headerController.forward();
    _contentController.forward();
    _animateSections();
  }

  void _animateSections() async {
    for (int i = 0; i < _sectionControllers.length; i++) {
      await Future.delayed(Duration(milliseconds: 150 * i));
      if (mounted) {
        _sectionControllers[i].forward();
      }
    }
  }

  @override
  void dispose() {
    _headerController.dispose();
    _contentController.dispose();
    for (var controller in _sectionControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      body: CustomScrollView(
        slivers: [
          // Animated Header
          SliverToBoxAdapter(
            child: FadeTransition(
              opacity: _headerController,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, -0.5),
                  end: Offset.zero,
                ).animate(CurvedAnimation(
                  parent: _headerController,
                  curve: Curves.easeOutCubic,
                )),
                child: const DecorationAppBar(title: "معرض الصور"),
              ),
            ),
          ),

          // Animated sections
          ..._buildAnimatedSections(),

          SliverToBoxAdapter(child: SizedBox(height: 50.h)),
        ],
      ),
    );
  }

  List<Widget> _buildAnimatedSections() {
    List<Widget> widgets = [];
    for (int i = 0; i < _sections.length; i++) {
      widgets.add(_buildAnimatedSection(_sections[i], i));
      widgets.add(_buildAnimatedGrid(i));
    }
    return widgets;
  }

  Widget _buildAnimatedSection(String title, int index) {
    return SliverToBoxAdapter(
      child: AnimatedBuilder(
        animation: _sectionControllers[index],
        builder: (context, child) {
          return FadeTransition(
            opacity: _sectionControllers[index],
            child: Transform.translate(
              offset: Offset(50 * (1 - _sectionControllers[index].value), 0),
              child: child,
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Row(
            children: [
              Text(
                "$title:",
                style: TextStyle(
                  fontSize: 16.f,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontFamily.tajawal,
                ),
              ),
              const Spacer(),
              Text(
                "الكل",
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 16.f,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedGrid(int sectionIndex) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      sliver: SliverGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5.w,
        childAspectRatio: 1,
        children: List.generate(2, (index) {
          return _AnimatedGalleryImage(
            animation: _sectionControllers[sectionIndex],
            delay: index * 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                Assets.images.school.path,
                fit: BoxFit.cover,
              ),
            ),
          );
        }),
      ),
    );
  }
}

/// Animated wrapper for gallery images
class _AnimatedGalleryImage extends StatefulWidget {
  final Animation<double> animation;
  final int delay;
  final Widget child;

  const _AnimatedGalleryImage({
    required this.animation,
    required this.delay,
    required this.child,
  });

  @override
  State<_AnimatedGalleryImage> createState() => _AnimatedGalleryImageState();
}

class _AnimatedGalleryImageState extends State<_AnimatedGalleryImage> {
  late Animation<double> _delayedAnimation;

  @override
  void initState() {
    super.initState();
    _delayedAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: widget.animation,
        curve: Interval(
          (widget.delay / 200).clamp(0.0, 0.5),
          1.0,
          curve: Curves.easeOutCubic,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _delayedAnimation,
      builder: (context, child) {
        return FadeTransition(
          opacity: _delayedAnimation,
          child: Transform.scale(
            scale: 0.8 + (0.2 * _delayedAnimation.value),
            child: child,
          ),
        );
      },
      child: widget.child,
    );
  }
}