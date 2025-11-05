import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/utils/share_utils.dart';
import '../../../../features/html_viewer/domain/models/html_content.dart';
import '../../../../features/html_viewer/presentation/pages/html_book_viewer_page.dart';
import '../../../../gen/fonts.gen.dart';
import '../bloc/benefits_bloc.dart';
import '../bloc/benefits_event.dart';
import '../bloc/benefits_state.dart';

Widget lessonCardBuild({
  required BuildContext context,
  required String lesson,
  required String viewCont,
  required String title,
  required String imageNamePath,
  required double width,
  required double height,
  required int? articleId,
}) {
  return BlocConsumer<BenefitsBloc, BenefitsState>(
    listener: (context, state) {
      // When article detail is loaded, navigate to HTML viewer
      if (state.articleDetail != null && state.loadingArticleId == null) {
        final article = state.articleDetail!;
        final htmlContent = HtmlContent(
          title: article.articleTitle ?? 'مقال',
          htmlContent: article.articleDes ?? '',
          summary: article.articleSummary,
          articleId: article.articleId,
          categoryId: article.articleCatId,
          imageUrl: article.articlePic,
          date: article.articleDate,
        );
        
        // Navigate to HTML viewer
        Get.to(() => HtmlBookViewerPage(htmlContent: htmlContent));
      }
    },
    builder: (context, state) {
      final isLoading = state.loadingArticleId == articleId;
      
      return _buildCard(
        context: context,
        lesson: lesson,
        viewCont: viewCont,
        title: title,
        imageNamePath: imageNamePath,
        width: width,
        height: height,
        isLoading: isLoading,
        articleId: articleId,
        onTap: articleId != null ? () {
          context.read<BenefitsBloc>().add(
            LoadArticleDetailEvent(articleId: articleId),
          );
        } : null,
      );
    },
  );
}

Widget _buildCard({
  required BuildContext context,
  required String lesson,
  required String viewCont,
  required String title,
  required String imageNamePath,
  required double width,
  required double height,
  required bool isLoading,
  required int? articleId,
  VoidCallback? onTap,
}) {
  // Using extension methods for easier access
  // No need for helper methods - use extensions directly: 25.w, 30.h, 16.f
  return SizedBox(
    height: height,
    width: width,
    child: Card(
      color: AppColors.cardBackground,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Expanded(
          //   flex: 3,
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.only(top: 12.p),
          //         child: Image.asset(
          //           Assets.images.quran.path,
          //           width: 58,
          //           height: 50,
          //         ),
          //       ),
          //       Text(
          //         title,
          //         style: TextStyle(
          //           fontFamily: FontFamily.amiri,
          //           fontSize: 18.f,
          //           fontWeight: FontWeight.bold,
          //           color: AppColors.primary,
          //         ),
          //         textAlign: TextAlign.center,
          //       ),
          //       Image.asset(
          //         imageNamePath,
          //         width: 86,
          //         height: 24,
          //       ),
          //     ],
          //   ),
          // ),
          // Lesson text - centered and larger, no truncation
          Expanded(
            flex: 3,
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.p, vertical: 12.h),
                  child: Text(
                    lesson,
                    style: TextStyle(
                      fontSize: 22.f,
                      fontFamily: FontFamily.tajawal,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.bold,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          
          // View count and share button - moved to bottom
          Padding(
            padding: EdgeInsets.only(right: 8.p, left: 8.p, bottom: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // View count
                Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye_outlined,
                      size: 18.f,
                      color: AppColors.grey,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      viewCont,
                      style: TextStyle(
                        fontSize: 14.f,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
                // Share button
                if (articleId != null)
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      size: 20.f,
                      color: AppColors.primary,
                    ),
                    onPressed: () {
                      ShareUtils.showShareOptions(
                        context: context,
                        type: ContentType.article,
                        id: articleId,
                        title: title,
                        additionalText: lesson,
                      );
                    },
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
              ],
            ),
          ),
          GestureDetector(
            onTap: isLoading ? null : onTap,
            child: Container(
              margin: EdgeInsets.only(bottom: 8.h, left: 8.w, right: 8.w),
              padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 12.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.r),
                color: isLoading ? AppColors.grey : AppColors.primary,
              ),
              child: isLoading
                  ? SizedBox(
                      width: 22.w,
                      height: 22.h,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.5.w,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(AppColors.white),
                      ),
                    )
                  : Text(
                      "عرض التفاصيل",
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.f,
                      ),
                    ),
            ),
          ),
          SizedBox(height: 6.h),
        ],
      ),
    ),
  );
}
