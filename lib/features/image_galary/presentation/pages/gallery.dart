import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/di/app_dependencies.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/decoration_app_bar.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/ui_status_handling.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import '../bloc/gallery_bloc.dart';
import '../bloc/gallery_event.dart';
import '../bloc/gallery_state.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GalleryBloc>()..add(LoadGalleryCategoriesEvent()),
      child: const _GalleryContent(),
    );
  }
}

class _GalleryContent extends StatelessWidget {
  const _GalleryContent();

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      backgroundColor: AppColors.background,
      body: BlocBuilder<GalleryBloc, GalleryState>(
        builder: (context, state) {
          return SimpleLottieHandler(
            blocStatus: state.status,
            successWidget: _buildContent(context, state),
            onRetry: () {
              context.read<GalleryBloc>().add(LoadGalleryCategoriesEvent());
            },
          );
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context, GalleryState state) {
    return CustomScrollView(
      slivers: [
        // Header
        const SliverToBoxAdapter(
          child: DecorationAppBar(title: "معرض الصور"),
        ),

        SliverToBoxAdapter(child: SizedBox(height: 20.h)),

        // Display categories from API
        if (state.categories.isEmpty)
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(40.w),
                child: Text(
                  'لا توجد صور',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 18.f,
                    color: AppColors.grey,
                  ),
                ),
              ),
            ),
          )
        else
          ..._buildSections(state),

        SliverToBoxAdapter(child: SizedBox(height: 50.h)),
      ],
    );
  }

  List<Widget> _buildSections(GalleryState state) {
    List<Widget> widgets = [];
    
    for (int i = 0; i < state.categories.length; i++) {
      final category = state.categories[i];
      final images = category.data ?? [];
      
      if (images.isEmpty) continue;

      widgets.add(_buildSection(category.title ?? '', i));
      widgets.add(_buildImageGrid(images, i));
    }
    
    return widgets;
  }

  Widget _buildSection(String title, int index) {
    return SliverToBoxAdapter(
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
                color: AppColors.black,
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
      )
          .animate()
          .fadeIn(duration: 600.ms, delay: (200 + index * 200).ms)
          .slideX(begin: -0.2, end: 0, duration: 600.ms, delay: (200 + index * 200).ms),
    );
  }

  Widget _buildImageGrid(List<dynamic> images, int sectionIndex) {
    // Show only first 3 images
    final displayImages = images.take(3).toList();

    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 180.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: displayImages.length,
            itemBuilder: (context, index) {
              final image = displayImages[index];
              return Container(
                width: 170.w,
                margin: EdgeInsets.only(left: 10.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.network(
                    image.photo_gallery_pic_thumbnail_url ?? '',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: AppColors.grey.withValues(alpha: 0.2),
                        child: Center(
                          child: Icon(
                            Icons.image_not_supported,
                            size: 40.f,
                            color: AppColors.grey,
                          ),
                        ),
                      );
                    },
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        color: AppColors.grey.withValues(alpha: 0.1),
                        child: Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                            color: AppColors.primary,
                            strokeWidth: 2.w,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
                  .animate()
                  .fadeIn(
                    duration: 500.ms,
                    delay: (400 + sectionIndex * 200 + index * 100).ms,
                    curve: Curves.easeOutCubic,
                  )
                  .slideX(
                    begin: 0.3,
                    end: 0,
                    duration: 500.ms,
                    delay: (400 + sectionIndex * 200 + index * 100).ms,
                    curve: Curves.easeOutCubic,
                  )
                  .scale(
                    begin: const Offset(0.9, 0.9),
                    end: const Offset(1.0, 1.0),
                    duration: 400.ms,
                    delay: (500 + sectionIndex * 200 + index * 100).ms,
                    curve: Curves.easeOutBack,
                  );
            },
          ),
        ),
      ),
    );
  }
}
