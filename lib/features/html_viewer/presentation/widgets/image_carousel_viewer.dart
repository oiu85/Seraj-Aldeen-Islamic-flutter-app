import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A widget that displays a carousel of images extracted from HTML content
class ImageCarouselViewer extends StatefulWidget {
  final List<String> imageUrls;
  final bool isDarkMode;

  const ImageCarouselViewer({
    Key? key,
    required this.imageUrls,
    this.isDarkMode = false,
  }) : super(key: key);

  @override
  State<ImageCarouselViewer> createState() => _ImageCarouselViewerState();
}

class _ImageCarouselViewerState extends State<ImageCarouselViewer> {
  int _currentIndex = 0;
  final CarouselSliderController _carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    if (widget.imageUrls.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        // Carousel Slider
        CarouselSlider.builder(
          carouselController: _carouselController,
          itemCount: widget.imageUrls.length,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
            final imageUrl = widget.imageUrls[itemIndex];
            
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: BoxDecoration(
                color: widget.isDarkMode ? Colors.grey[850] : Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: _buildImage(imageUrl),
              ),
            );
          },
          options: CarouselOptions(
            height: 350.h,
            aspectRatio: 16 / 9,
            viewportFraction: 0.85,
            initialPage: 0,
            enableInfiniteScroll: widget.imageUrls.length > 1,
            reverse: false,
            autoPlay: false,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        
        SizedBox(height: 16.h),
        
        // Indicators
        if (widget.imageUrls.length > 1)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imageUrls.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _carouselController.animateToPage(entry.key),
                child: Container(
                  width: _currentIndex == entry.key ? 24.w : 8.w,
                  height: 8.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: _currentIndex == entry.key
                        ? (widget.isDarkMode ? Colors.amber : Colors.blue)
                        : (widget.isDarkMode ? Colors.grey[600] : Colors.grey[400]),
                  ),
                ),
              );
            }).toList(),
          ),
        
        SizedBox(height: 8.h),
        
        // Image counter
        if (widget.imageUrls.length > 1)
          Text(
            '${_currentIndex + 1} / ${widget.imageUrls.length}',
            style: TextStyle(
              color: widget.isDarkMode ? Colors.grey[400] : Colors.grey[600],
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
      ],
    );
  }

  Widget _buildImage(String imageUrl) {
    // Handle asset images
    if (imageUrl.startsWith('assets/')) {
      return Image.asset(
        imageUrl,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return _buildErrorWidget('الصورة غير متاحة');
        },
      );
    }

    // Handle network images (fallback)
    return Image.network(
      imageUrl,
      fit: BoxFit.contain,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return _buildErrorWidget('فشل تحميل الصورة');
      },
    );
  }

  Widget _buildErrorWidget(String message) {
    return Container(
      padding: EdgeInsets.all(32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.broken_image_outlined,
            size: 64.sp,
            color: widget.isDarkMode ? Colors.grey[600] : Colors.grey[400],
          ),
          SizedBox(height: 16.h),
          Text(
            message,
            style: TextStyle(
              color: widget.isDarkMode ? Colors.grey[400] : Colors.grey[600],
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}

