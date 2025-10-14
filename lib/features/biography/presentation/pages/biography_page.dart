import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../core/di/app_dependencies.dart';
import '../../../../core/shared/widgets/decoration_app_bar.dart';
import '../../../../core/shared/widgets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../../../html_viewer/data/utils/html_image_replacer.dart';
import '../../../html_viewer/domain/models/html_content.dart';
import '../../../html_viewer/presentation/pages/html_book_viewer_page.dart';
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
    return BlocConsumer<BiographyBloc, BiographyState>(
      listener: (context, state) {
        // When page detail is loaded, navigate to HTML viewer
        if (state.pageDetail != null && state.loadingPageId == null) {
          final page = state.pageDetail!;
          
          // Extract images and replace URLs with local asset paths
          // Set removeImagesFromHtml to true to show images only in carousel
          final result = HtmlImageReplacer.extractAndReplaceImages(
            page.pagesContent ?? '',
            assetPath: 'assets/bio_html_images/',
            removeImagesFromHtml: true, // Remove images from HTML, show in carousel only
          );
          
          final htmlContent = HtmlContent(
            title: page.pagesTitle ?? 'صفحة',
            htmlContent: result.htmlContent,
            date: page.pagesDate,
            imageUrls: result.imageUrls, // Pass extracted images
          );
          
          // Navigate to HTML viewer
          Get.to(() => HtmlBookViewerPage(htmlContent: htmlContent));
        }
      },
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
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: DecorationAppBar(title: 'السيرة الذاتية'),
          ),
          SliverGridSection(
            titles: state.pages.map((page) => page.pagesTitle ?? '').toList(),
            imageAsset: Assets.svg.paperShdow.path,
            loadingPageId: state.loadingPageId,
            pageIds: state.pages.map((page) => page.pagesId ?? 0).toList(),
            onTaps: List.generate(
              state.pages.length,
              (index) => () {
                final pageId = state.pages[index].pagesId;
                if (pageId != null && state.loadingPageId == null) {
                  context.read<BiographyBloc>().add(
                    LoadPageDetailEvent(pageId: pageId),
                  );
                }
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
  final int? loadingPageId;
  final List<int> pageIds; // IDs for each card
  final double cardAspectRatio;
  final double cardElevation;
  final EdgeInsetsGeometry padding;

  const SliverGridSection({
    super.key,
    required this.titles,
    required this.imageAsset,
    required this.onTaps,
    required this.pageIds,
    this.loadingPageId,
    this.cardAspectRatio = 0.9,
    this.cardElevation = 1,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  })  : assert(titles.length == onTaps.length,
            'titles and onTaps must have the same length'),
        assert(titles.length == pageIds.length,
            'titles and pageIds must have the same length');

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
            final isLoading = loadingPageId != null && loadingPageId == pageIds[index];
            return _buildCard(context, titles[index], onTaps[index], index, isLoading);
          },
          childCount: titles.length,
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, VoidCallback onTap, int index, bool isLoading) {
    return Card(
      shadowColor: AppColors.primary,
      color: AppColors.cardBackground,
      elevation: cardElevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          InkWell(
            onTap: isLoading ? null : onTap,
            child: Opacity(
              opacity: isLoading ? 0.5 : 1.0,
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
                    child: Icon(
                      color: AppColors.cardBackground,
                      Icons.arrow_forward_outlined,
                      size: 20.p,
                    ),
                  )
                ],
              ),
            ),
          ),
          
          // Loading indicator overlay for this specific card
          if (isLoading)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                    strokeWidth: 2.5,
                  ),
                ),
              ),
            ),
        ],
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
