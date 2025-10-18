import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../html_viewer/domain/models/html_content.dart';
import '../../../html_viewer/presentation/pages/html_book_viewer_page.dart';

class SubDescCard extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback? onMoreTap;

  const SubDescCard({
    super.key,
    required this.title,
    required this.content,
    this.onMoreTap,
  });

  String _stripHtmlTags(String htmlString) {
    final RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return htmlString.replaceAll(exp, '').replaceAll('&nbsp;', ' ').trim();
  }

  void _navigateToHtmlViewer(BuildContext context) {
    final htmlContent = HtmlContent(
      title: title,
      htmlContent: content,
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HtmlBookViewerPage(htmlContent: htmlContent),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cleanContent = _stripHtmlTags(content);
    final displayContent = cleanContent.length > 200
        ? cleanContent.substring(0, 200)
        : cleanContent;

    return GestureDetector(
      onTap: () {
        if (onMoreTap != null) {
          onMoreTap!();
        } else {
          _navigateToHtmlViewer(context);
        }
      },
      child: Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
              color: AppColors.black.withValues(alpha: 0.1),
              blurRadius: 1,
              offset: const Offset(
                0,
                2,
              )),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.p, vertical: 20.p),
      width: 340.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(Assets.svg.note.path)
                  .animate()
                  .fadeIn(duration: 600.ms, delay: 200.ms)
                  .scale(begin: const Offset(0.5, 0.5), end: const Offset(1.0, 1.0), duration: 500.ms, delay: 200.ms)
                  .rotate(begin: -0.1, end: 0, duration: 400.ms, delay: 300.ms),
              SizedBox(
                width: 15.w,
              ),
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.tajawal,
                      color: AppColors.primary),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
                    .animate()
                    .fadeIn(duration: 800.ms, delay: 300.ms)
                    .slideX(begin: -0.3, end: 0, duration: 600.ms, delay: 300.ms),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            displayContent,
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 11,
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold),
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
          )
              .animate()
              .fadeIn(duration: 1000.ms, delay: 400.ms)
              .slideY(begin: 0.3, end: 0, duration: 700.ms, delay: 400.ms),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
              if (onMoreTap != null) {
                onMoreTap!();
              } else {
                _navigateToHtmlViewer(context);
              }
            },
            child: Container(
              height: 32.h,
              width: 113.w,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "المزيد",
                    style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white),
                  ),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: AppColors.white,
                  ),
                ],
              ),
            )
                .animate()
                .fadeIn(duration: 600.ms, delay: 500.ms)
                .scale(begin: const Offset(0.8, 0.8), end: const Offset(1.0, 1.0), duration: 500.ms, delay: 500.ms)
                .slideX(begin: 0.3, end: 0, duration: 400.ms, delay: 500.ms),
          ),
        ],
      ),
      )
          .animate()
          .fadeIn(duration: 800.ms, delay: 100.ms)
          .slideY(begin: 0.4, end: 0, duration: 600.ms, delay: 100.ms)
          .scale(begin: const Offset(0.95, 0.95), end: const Offset(1.0, 1.0), duration: 500.ms, delay: 200.ms),
    );
  }
}