import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../core/di/app_dependencies.dart';
import '../../../../core/shared/widgets/decoration_app_bar.dart';
import '../../../../core/shared/widgets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../bloc/biography_bloc.dart';
import '../bloc/biography_event.dart';
import '../bloc/biography_state.dart';

class BiographyPage extends StatelessWidget {
  const BiographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BiographyBloc>()..add(const LoadPagesEvent()),
      child: const _BiographyPageView(),
    );
  }
}

class _BiographyPageView extends StatelessWidget {
  const _BiographyPageView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BiographyBloc, BiographyState>(
      builder: (context, state) {
        return SimpleLottieHandler(
          blocStatus: state.status,
          successWidget: _buildSuccessContent(context, state),
          isEmpty: state.status.isSuccess() && state.pages.isEmpty,
          emptyMessage: 'لا توجد صفحات متاحة',
          loadingMessage: 'جاري تحميل الصفحات...',
          onRetry: () {
            context.read<BiographyBloc>().add(const LoadPagesEvent());
          },
          animationSize: 200.w,
        );
      },
    );
  }

  Widget _buildSuccessContent(BuildContext context, BiographyState state) {
    return AppScaffold.clean(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: DecorationAppBar(title: 'السيرة الذاتية'),
          ),
          SliverGridSection(
            titles: state.pages.map((page) => page.pagesTitle ?? '').toList(),
            imageAsset: Assets.svg.paperShdow.path,
            onTaps: List.generate(
              state.pages.length,
              (index) => () {
                // TODO: Navigate to page details
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SliverGridSection extends StatelessWidget {
  final List<String> titles; // النصوص لكل كارد
  final String imageAsset; // نفس الصورة لكل الكروت
  final List<VoidCallback> onTaps; // قائمة الدوال لكل كارد
  final double cardAspectRatio;
  final double cardElevation;
  final EdgeInsetsGeometry padding;

  const SliverGridSection({
    super.key,
    required this.titles,
    required this.imageAsset,
    required this.onTaps,
    this.cardAspectRatio = 0.9,
    this.cardElevation = 1,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  })  : assert(titles.length == onTaps.length,
            'titles and onTaps must have the same length');

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: padding,
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: cardAspectRatio,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return _buildCard(context, titles[index], onTaps[index], index);
          },
          childCount: titles.length,
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, VoidCallback onTap, int index) {
    return Card(
      shadowColor: AppColors.primary,
      color: Colors.white,
      elevation: cardElevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                imageAsset,
                fit: BoxFit.contain,
                height: 40.h,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 9.h,),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    color: Colors.white,
                    Icons.arrow_forward_outlined,
                    size: 20.p,
                  )),
            )
          ],
        ),
      ),
    ).animate()
      .fadeIn(
        duration: 500.ms, 
        delay: (600 + index * 100).ms,
        curve: Curves.easeOutCubic,
      )
      .slideX(
        begin: 0.3, 
        end: 0, 
        duration: 500.ms, 
        delay: (600 + index * 100).ms,
        curve: Curves.easeOutCubic,
      )
      .scale(
        begin: const Offset(0.9, 0.9), 
        end: const Offset(1.0, 1.0), 
        duration: 400.ms, 
        delay: (700 + index * 100).ms,
        curve: Curves.easeOutBack,
      );
  }
}
