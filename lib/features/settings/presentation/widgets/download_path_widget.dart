import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

/// Download Path Widget for Settings Page (Read-Only)
class DownloadPathWidget extends StatefulWidget {
  const DownloadPathWidget({super.key});

  @override
  State<DownloadPathWidget> createState() => _DownloadPathWidgetState();
}

class _DownloadPathWidgetState extends State<DownloadPathWidget> {
  String _downloadPath = 'جاري التحميل...';
  bool _isExpanded = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadDownloadPath();
  }

  Future<void> _loadDownloadPath() async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final downloadPath = '${appDir.path}/Downloads';
      setState(() {
        _downloadPath = downloadPath;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _downloadPath = 'غير متاح';
        _isLoading = false;
      });
    }
  }

  void _copyPathToClipboard() {
    Clipboard.setData(ClipboardData(text: _downloadPath));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'تم نسخ المسار',
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 14.f,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: AppColors.primary,
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.w, vertical: 0.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          // Main Row
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            borderRadius: BorderRadius.circular(12.r),
            child: Row(
              children: [
                // Icon
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(
                    Icons.folder_outlined,
                    color: AppColors.primary,
                    size: 24.f,
                  ),
                ),
                SizedBox(width: 16.w),
                
                // Text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'مسار التنزيلات',
                        style: TextStyle(
                          fontSize: 16.f,
                          fontWeight: FontWeight.bold,
                          fontFamily: FontFamily.tajawal,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      _isLoading
                          ? Text(
                              'جاري التحميل...',
                              style: TextStyle(
                                fontSize: 12.f,
                                fontFamily: FontFamily.tajawal,
                                color: AppColors.textSecondary,
                              ),
                            )
                          : Text(
                              _isExpanded 
                                  ? _downloadPath
                                  : (_downloadPath.length > 25 
                                      ? '${_downloadPath.substring(0, 25)}...'
                                      : _downloadPath),
                              style: TextStyle(
                                fontSize: 12.f,
                                fontFamily: FontFamily.tajawal,
                                color: AppColors.textSecondary,
                              ),
                              maxLines: _isExpanded ? null : 1,
                              overflow: _isExpanded ? null : TextOverflow.ellipsis,
                            ),
                    ],
                  ),
                ),
                
                // Expand/Collapse Icon
                Icon(
                  _isExpanded ? Icons.arrow_back_ios: Icons.arrow_forward_ios ,
                  size: 16.w,
                  color: AppColors.textSecondary,
                ),
              ],
            ),
          ),
          
          // Expanded Content
          if (_isExpanded) ...[
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Full Path Display
                  Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: AppColors.scaffoldBackground,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.folder,
                          color: AppColors.primary,
                          size: 20.f,
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Text(
                            _downloadPath,
                            style: TextStyle(
                              fontSize: 13.f,
                              fontFamily: FontFamily.tajawal,
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(height: 12.h),
                  
                  // Copy Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: _copyPathToClipboard,
                      icon: Icon(
                        Icons.copy,
                        size: 18.f,
                      ),
                      label: Text(
                        'نسخ المسار',
                        style: TextStyle(
                          fontSize: 14.f,
                          fontFamily: FontFamily.tajawal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          vertical: 12.h,
                          horizontal: 16.w,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                  ),
                  
                  SizedBox(height: 8.h),
                  
                  // Info Text
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 16.f,
                        color: AppColors.textSecondary,
                      ),
                      SizedBox(width: 6.w),
                      Expanded(
                        child: Text(
                          'سيتم حفظ جميع التنزيلات في هذا المسار',
                          style: TextStyle(
                            fontSize: 11.f,
                            fontFamily: FontFamily.tajawal,
                            color: AppColors.textSecondary,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

