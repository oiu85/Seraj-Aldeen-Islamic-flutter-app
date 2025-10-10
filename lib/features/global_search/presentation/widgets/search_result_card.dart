import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import '../../data/models/search_model.dart';

class SearchResultCard extends StatelessWidget {
  final SearchResultItem item;
  final VoidCallback onTap;

  const SearchResultCard({
    super.key,
    required this.item,
    required this.onTap,
  });

  IconData _getIconForType(String? type) {
    switch (type?.toLowerCase()) {
      case 'article':
        return Icons.article;
      case 'book':
        return Icons.menu_book;
      case 'sound':
        return Icons.headset;
      case 'video':
        return Icons.play_circle_outline;
      case 'page':
        return Icons.description;
      default:
        return Icons.search;
    }
  }

  Color _getColorForType(String? type) {
    switch (type?.toLowerCase()) {
      case 'article':
        return Colors.blue;
      case 'book':
        return Colors.purple;
      case 'sound':
        return Colors.green;
      case 'video':
        return Colors.red;
      case 'page':
        return Colors.orange;
      default:
        return AppColors.primary;
    }
  }

  String _stripHtmlTags(String? html) {
    if (html == null || html.isEmpty) return '';
    final regExp = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: false);
    return html.replaceAll(regExp, ' ').replaceAll('&nbsp;', ' ').replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  @override
  Widget build(BuildContext context) {
    final typeColor = _getColorForType(item.type);
    final typeIcon = _getIconForType(item.type);
    final summary = _stripHtmlTags(item.summary ?? item.description ?? item.content);

    return InkWell(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        color: AppColors.cardBackground,
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with type badge
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    decoration: BoxDecoration(
                      color: typeColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          typeIcon,
                          size: 16.f,
                          color: typeColor,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          item.type_label ?? item.type ?? '',
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 12.f,
                            color: typeColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  if (item.is_new == true)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: Colors.red, width: 1.w),
                      ),
                      child: Text(
                        'جديد',
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 10.f,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
              
              SizedBox(height: 12.h),
              
              // Title
              Text(
                item.title ?? '',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 16.f,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              
              // Summary
              if (summary.isNotEmpty) ...[
                SizedBox(height: 8.h),
                Text(
                  summary,
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 14.f,
                    color: AppColors.grey,
                    height: 1.5,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              
              SizedBox(height: 12.h),
              
              // Footer with category and stats
              Row(
                children: [
                  // Category
                  if (item.category?.cat_title != null) ...[
                    Icon(
                      Icons.folder_outlined,
                      size: 14.f,
                      color: AppColors.primary,
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Text(
                        item.category!.cat_title!,
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 12.f,
                          color: AppColors.primary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                  
                  SizedBox(width: 12.w),
                  
                  // Views
                  if (item.visitor_count != null) ...[
                    Icon(
                      Icons.visibility,
                      size: 14.f,
                      color: AppColors.grey,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      item.visitor_count!,
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 12.f,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                  
                  // Relevance score
                  if (item.relevance_score != null && item.relevance_score! > 0) ...[
                    SizedBox(width: 12.w),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star,
                            size: 12.f,
                            color: AppColors.primary,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            '${item.relevance_score}',
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 11.f,
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

