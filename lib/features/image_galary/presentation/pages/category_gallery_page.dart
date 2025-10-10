import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/di/app_dependencies.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/ui_status_handling.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import '../bloc/gallery_bloc.dart';
import '../bloc/gallery_event.dart';
import '../bloc/gallery_state.dart';
import '../widgets/photo_viewer.dart';

class CategoryGalleryPage extends StatefulWidget {
  final int categoryId;
  final String categoryTitle;

  const CategoryGalleryPage({
    super.key,
    required this.categoryId,
    required this.categoryTitle,
  });

  @override
  State<CategoryGalleryPage> createState() => _CategoryGalleryPageState();
}

class _CategoryGalleryPageState extends State<CategoryGalleryPage> {
  final ScrollController _scrollController = ScrollController();
  late GalleryBloc _galleryBloc;

  @override
  void initState() {
    super.initState();
    _galleryBloc = getIt<GalleryBloc>();
    _galleryBloc.add(LoadCategoryContentEvent(categoryId: widget.categoryId));
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      _galleryBloc.add(LoadMoreCategoryContentEvent(categoryId: widget.categoryId));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _galleryBloc,
      child: AppScaffold.custom(
        appBar: AppBar(
          title: Text(
            widget.categoryTitle,
            style: TextStyle(
              fontSize: 20.f,
              fontFamily: FontFamily.tajawal,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
          backgroundColor: AppColors.cardBackground,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.black),
        ),
        backgroundColor: AppColors.background,
        body: BlocBuilder<GalleryBloc, GalleryState>(
          builder: (context, state) {
            return SimpleLottieHandler(
              blocStatus: state.categoryContentStatus,
              successWidget: _buildContent(state),
              onRetry: () {
                _galleryBloc.add(LoadCategoryContentEvent(categoryId: widget.categoryId));
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(GalleryState state) {
    if (state.categoryContent.isEmpty) {
      return Center(
        child: Text(
          'لا توجد صور',
          style: TextStyle(
            fontSize: 18.f,
            fontFamily: FontFamily.tajawal,
            color: AppColors.grey,
          ),
        ),
      );
    }

    return GridView.builder(
      controller: _scrollController,
      padding: EdgeInsets.all(20.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15.w,
        mainAxisSpacing: 15.h,
        childAspectRatio: 0.9,
      ),
      itemCount: state.categoryContent.length + (state.isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        // Show loading indicator at the end
        if (index == state.categoryContent.length && state.isLoadingMore) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
              strokeWidth: 2.w,
            ),
          );
        }

        final image = state.categoryContent[index];
        
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PhotoViewer(
                  images: state.categoryContent,
                  initialIndex: index,
                  categoryTitle: widget.categoryTitle,
                ),
              ),
            );
          },
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
              delay: (index * 50).ms,
              curve: Curves.easeOutCubic,
            )
            .slideY(
              begin: 0.3,
              end: 0,
              duration: 500.ms,
              delay: (index * 50).ms,
              curve: Curves.easeOutCubic,
            )
            .scale(
              begin: const Offset(0.9, 0.9),
              end: const Offset(1.0, 1.0),
              duration: 400.ms,
              delay: (index * 50 + 100).ms,
              curve: Curves.easeOutBack,
            );
      },
    );
  }
}

