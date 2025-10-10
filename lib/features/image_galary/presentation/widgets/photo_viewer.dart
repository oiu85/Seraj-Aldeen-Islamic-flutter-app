import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import '../../data/models/gallery_model.dart';

/// Full-screen photo viewer with pinch-to-zoom functionality
class PhotoViewer extends StatefulWidget {
  final List<GalleryItem> images;
  final int initialIndex;
  final String? categoryTitle;

  const PhotoViewer({
    super.key,
    required this.images,
    this.initialIndex = 0,
    this.categoryTitle,
  });

  @override
  State<PhotoViewer> createState() => _PhotoViewerState();
}

class _PhotoViewerState extends State<PhotoViewer> {
  late PageController _pageController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black.withValues(alpha: 0.8),
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.white),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.categoryTitle != null)
              Text(
                widget.categoryTitle!,
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 16.f,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            Text(
              '${_currentIndex + 1} / ${widget.images.length}',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                color: AppColors.white.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Photo Gallery
          PhotoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            builder: (BuildContext context, int index) {
              final image = widget.images[index];
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(
                  image.photo_gallery_pic_full_url ?? 
                  image.photo_gallery_pic_thumbnail_url ?? 
                  '',
                ),
                initialScale: PhotoViewComputedScale.contained,
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 2.0,
                heroAttributes: PhotoViewHeroAttributes(tag: image.id ?? index),
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: AppColors.black,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.broken_image,
                            size: 80.f,
                            color: AppColors.white.withValues(alpha: 0.5),
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            'فشل تحميل الصورة',
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 16.f,
                              color: AppColors.white.withValues(alpha: 0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            itemCount: widget.images.length,
            loadingBuilder: (context, event) => Center(
              child: SizedBox(
                width: 40.w,
                height: 40.h,
                child: CircularProgressIndicator(
                  value: event == null
                      ? null
                      : event.cumulativeBytesLoaded / (event.expectedTotalBytes ?? 1),
                  strokeWidth: 3.w,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                ),
              ),
            ),
            backgroundDecoration: BoxDecoration(
              color: AppColors.black,
            ),
            pageController: _pageController,
            onPageChanged: _onPageChanged,
          ),

          // Image title overlay at bottom
          if (widget.images[_currentIndex].title != null &&
              widget.images[_currentIndex].title!.isNotEmpty)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      AppColors.black.withValues(alpha: 0.8),
                      AppColors.black.withValues(alpha: 0.6),
                      AppColors.black.withValues(alpha: 0.0),
                    ],
                  ),
                ),
                child: Text(
                  widget.images[_currentIndex].title!,
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 16.f,
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

