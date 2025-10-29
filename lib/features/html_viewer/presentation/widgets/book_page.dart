import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/responsive/device_type.dart';

import '../../../../gen/fonts.gen.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../bloc/html_viewer_bloc.dart';
import '../bloc/html_viewer_state.dart';
import '../services/responsive_text_service.dart';
import 'image_carousel_viewer.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);
  
  /// Launch URL when link is tapped
  Future<void> _launchUrl(String? url, BuildContext context) async {
    if (url == null || url.isEmpty) return;
    
    try {
      // Convert relative URLs to absolute URLs
      String absoluteUrl = url;
      
      // Check if URL is relative (doesn't start with http:// or https://)
      if (!url.startsWith('http://') && !url.startsWith('https://')) {
        // Website base URL for links (different from API base URL)
        const String webBaseUrl = 'https://www.srajalden.com';
        
        // Handle different types of relative URLs
        if (url.startsWith('/')) {
          // Absolute path (e.g., /files/book/book1.pdf)
          absoluteUrl = '$webBaseUrl$url';
        } else {
          // Relative path (e.g., index.php?page=...)
          absoluteUrl = '$webBaseUrl/$url';
        }
        
        debugPrint('Converted relative URL: $url → $absoluteUrl');
      }
      
      final Uri uri = Uri.parse(absoluteUrl);
      if (await canLaunchUrl(uri)) {
        await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
      } else {
        // Show error message if URL cannot be launched
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'لا يمكن فتح الرابط',
                style: TextStyle(fontFamily: FontFamily.tajawal),
              ),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 2),
            ),
          );
        }
      }
    } catch (e) {
      debugPrint('Error launching URL: $url - $e');
      // Show error message on exception
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'خطأ في فتح الرابط',
              style: TextStyle(fontFamily: FontFamily.tajawal),
            ),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HtmlViewerBloc, HtmlViewerState>(
      builder: (context, state) {
        if (state.status == HtmlViewerStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status == HtmlViewerStatus.error) {
          return Center(
            child: Text(
              state.errorMessage ?? 'An error occurred',
              style: TextStyle(
                color: Colors.red,
                fontFamily: FontFamily.tajawal,
              ),
            ),
          );
        }
        if (state.currentPage == null) {
          return Center(
            child: Text(
              'No content to display',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
              ),
            ),
          );
        }
        // Get screen information for responsive layout
        final MediaQueryData mediaQuery = MediaQuery.of(context);
        final bool isLandscape = mediaQuery.orientation ==
            Orientation.landscape;

        // Calculate sizes based on orientation and device type
        final double fontSize = ResponsiveTextService.calculateFontSize(
            context,
            state.textSize * (isLandscape
                ? 0.9
                : 1.0) // Slightly reduce font size in landscape
        );
        final EdgeInsets padding = ResponsiveTextService.calculatePagePadding(
            context);
        final double lineHeight = ResponsiveTextService.calculateLineHeight(
            context);

        return Container(
          constraints: BoxConstraints(
            maxWidth: isLandscape
                ? mediaQuery.size.width *
                0.8 // 80% of screen width in landscape
                : mediaQuery.size.width *
                0.98, // 95% of screen width in portrait
          ),
          decoration: BoxDecoration(
            color: state.isDarkMode ? Colors.grey[800] : Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(ScreenUtil().radius(12)),
          ),
          padding: padding,
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Calculate content width based on constraints
              final contentWidth = constraints.maxWidth * 0.9999;

              return SingleChildScrollView(
                child: SizedBox(
                  width: contentWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Basmala (بسم الله الرحمن الرحيم)
                      if (state.currentPage!.pageNumber == 1 &&
                          state.htmlContent != null) ...[
                        Center(
                          child: Text(
                            "بسم الله الرحمن الرحيم",
                            style: TextStyle(
                              fontFamily: FontFamily.amiri,
                              fontSize: fontSize * context.deviceValue(
                                mobile: 2.0,
                                tablet: 2.2,
                                desktop: 2.4,
                              ),
                              fontWeight: FontWeight.bold,
                              color: state.isDarkMode ? Colors.amber : AppColors.primary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        
                        // Title
                        Center(
                          child: Text(
                            state.htmlContent!.title,
                            style: TextStyle(
                              fontFamily: FontFamily.amiri,
                              fontSize: fontSize * context.deviceValue(
                                mobile: 1.8,
                                tablet: 2.0,
                                desktop: 2.2,
                              ),
                              fontWeight: FontWeight.bold,
                              color: state.isDarkMode ? Colors.white : AppColors.textPrimary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 24.h),
                      ],
                      
                      // Image Carousel (after Basmala and Title)
                      if (state.currentPage!.pageNumber == 1 &&
                          state.htmlContent?.imageUrls != null && 
                          state.htmlContent!.imageUrls!.isNotEmpty) ...[
                        Padding(
                          padding: EdgeInsets.only(bottom: 24.h),
                          child: ImageCarouselViewer(
                            imageUrls: state.htmlContent!.imageUrls!,
                            isDarkMode: state.isDarkMode,
                          ),
                        ),
                      ],
                      // HTML content
                      Html(
                        data: state.currentPage!.content,
                        onLinkTap: (url, attributes, element) {
                          _launchUrl(url, context);
                        },
                        style: {
                          "body": Style(
                            fontFamily: FontFamily.tajawal,
                            fontSize: FontSize(fontSize),
                          ),
                          "h1": Style(
                            fontFamily: FontFamily.amiri,
                            fontSize: FontSize(fontSize * 1.5),
                            fontWeight: FontWeight.bold,
                            color: state.isDarkMode ? Colors.white : AppColors.textPrimary,
                          ),
                          "h2": Style(
                            fontFamily: FontFamily.amiri,
                            fontSize: FontSize(fontSize * 1.3),
                            fontWeight: FontWeight.bold,
                            color: state.isDarkMode ? Colors.white : AppColors
                                .textPrimary,
                          ),
                          "p": Style(
                            fontFamily: FontFamily.tajawal,
                            fontSize: FontSize(fontSize),
                            lineHeight: LineHeight(lineHeight),
                            color: state.isDarkMode ? Colors.white70 : AppColors.textPrimary,
                          ),
                          "span": Style(
                            fontFamily: FontFamily.tajawal,
                            fontSize: FontSize(fontSize),
                            lineHeight: LineHeight(lineHeight),
                            textAlign: TextAlign.start,
                            color: state.isDarkMode ? Colors.white70 : AppColors.textPrimary,
                          ),
                          "a": Style(
                            fontFamily: FontFamily.tajawal,
                            fontSize: FontSize(fontSize),
                            color: state.isDarkMode ? Colors.lightBlueAccent : Colors.blue,
                            textDecoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                          ),
                          "img": Style(
                            width: Width(contentWidth * 0.9),
                            padding: HtmlPaddings.symmetric(vertical: 10),
                          ),
                           // Poetry-specific styling
                           ".poetry-paragraph": Style(
                             margin: Margins.symmetric(vertical: 12),
                           ),
                           ".poetry-verse-container": Style(
                             margin: Margins.symmetric(vertical: 12),
                             padding: HtmlPaddings.symmetric(horizontal: 4),
                           ),
                           "table.poetry-verse-line": Style(
                             margin: Margins.symmetric(vertical: 6),
                           ),
                           "td.poetry-hemistich-first": Style(
                             fontFamily: FontFamily.amiri,
                             fontSize: FontSize(fontSize * 0.9), // Smaller font
                             fontWeight: FontWeight.w500,
                             color: state.isDarkMode ? Colors.white : AppColors.textPrimary,
                             lineHeight: LineHeight(1.6),
                           ),
                           "td.poetry-hemistich-second": Style(
                             fontFamily: FontFamily.amiri,
                             fontSize: FontSize(fontSize * 0.9), // Smaller font
                             fontWeight: FontWeight.w500,
                             color: state.isDarkMode ? Colors.white : AppColors.textPrimary,
                             lineHeight: LineHeight(1.6),
                           ),
                           ".poetry-verse-single": Style(
                             fontFamily: FontFamily.amiri,
                             fontSize: FontSize(fontSize * 1.0),
                             fontWeight: FontWeight.w600,
                             color: state.isDarkMode ? Colors.amber : AppColors.primary,
                             margin: Margins.symmetric(vertical: 8),
                           ),
                           // General table styling for poetry
                           "table": Style(
                             margin: Margins.zero,
                             padding: HtmlPaddings.zero,
                           ),
                           "td": Style(
                             padding: HtmlPaddings.all(4),
                             verticalAlign: VerticalAlign.top,
                           ),
                        },
                        extensions: [
                          TagExtension(
                            tagsToExtend: {"img"},
                            builder: (extensionContext) {
                              final src = extensionContext.attributes['src'];
                              if (src == null || src.isEmpty) {
                                return const SizedBox.shrink();
                              }
                              
                              // Handle asset images
                              if (src.startsWith('assets/')) {
                                return Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Image.asset(
                                      src,
                                      fit: BoxFit.contain,
                                      errorBuilder: (context, error, stackTrace) {
                                        return Container(
                                          padding: const EdgeInsets.all(16),
                                          color: Colors.grey[300],
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(Icons.broken_image, size: 48, color: Colors.grey[600]),
                                              const SizedBox(height: 8),
                                              Text(
                                                'الصورة غير متاحة',
                                                style: TextStyle(color: Colors.grey[600]),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              }
                              
                              // Handle network images (fallback)
                              return Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Image.network(
                                    src,
                                    fit: BoxFit.contain,
                                    loadingBuilder: (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return const CircularProgressIndicator();
                                    },
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        padding: const EdgeInsets.all(16),
                                        color: Colors.grey[300],
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.broken_image, size: 48, color: Colors.grey[600]),
                                            const SizedBox(height: 8),
                                            Text(
                                              'فشل تحميل الصورة',
                                              style: TextStyle(color: Colors.grey[600]),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}