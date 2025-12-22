import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/utils/share_utils.dart';
import '../../../../gen/fonts.gen.dart';
import '../bloc/books_bloc.dart';
import '../bloc/books_event.dart';
import '../bloc/books_state.dart';

class _TopNotification extends StatelessWidget {
  final String message;
  final bool isSuccess;

  const _TopNotification({
    required this.message,
    this.isSuccess = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16.w),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: isSuccess ? AppColors.primary : Colors.red,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            isSuccess ? Icons.check_circle : Icons.error,
            color: AppColors.white,
            size: 20.f,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 14.f,
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BookInfoBottomSheet extends StatefulWidget {
  final int bookId;

  const BookInfoBottomSheet({
    super.key,
    required this.bookId,
  });

  @override
  State<BookInfoBottomSheet> createState() => _BookInfoBottomSheetState();
}

class _BookInfoBottomSheetState extends State<BookInfoBottomSheet> {
  @override
  void initState() {
    super.initState();
    // Load details immediately when bottom sheet opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<BooksBloc>().add(
          LoadBookDetailEvent(bookId: widget.bookId),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksBloc, BooksState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            // Clean up when bottom sheet is closed
            context.read<BooksBloc>().add(ResetBookDetailEvent());
            return true;
          },
          child: Container(
          width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Drag handle
              Container(
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
              SizedBox(height: 20.h),

              // Top notification for download messages
              if (state.downloadMessage != null)
                _TopNotification(
                  message: state.downloadMessage!,
                  isSuccess: state.downloadMessage!.contains('بنجاح'),
                ),

              // Content based on status
              if (state.bookDetailStatus.isLoading())
                _buildLoadingState()
              else if (state.bookDetailStatus.isFail())
                _buildErrorState(context, state)
              else if (state.bookDetail != null)
                _buildBookDetail(context, state)
              else
                _buildLoadingState(), // Show loading if no data yet
            ],
          ),
        ),
        );
      },
    );
  }

  Widget _buildLoadingState() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: const CircularProgressIndicator(),
    );
  }

  Widget _buildErrorState(BuildContext context, BooksState state) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        children: [
          Icon(Icons.error_outline, size: 48.f, color: Colors.red),
          SizedBox(height: 10.h),
          Text(
            'فشل تحميل معلومات الكتاب',
            style: TextStyle(
              fontSize: 16.f,
              fontFamily: FontFamily.tajawal,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 20.h),
          ElevatedButton(
            onPressed: () {
              context.read<BooksBloc>().add(
                LoadBookDetailEvent(bookId: widget.bookId),
              );
            },
            child: Text(
              'إعادة المحاولة',
              style: TextStyle(
                fontSize: 14.f,
                fontFamily: FontFamily.tajawal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookDetail(BuildContext context, BooksState state) {
    final book = state.bookDetail!;
    final downloadLinks = _getDownloadLinks(book);

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Book header with title and visitor count
          _BookHeader(book: book),

          SizedBox(height: 20.h),

          // Read button section
          _ReadButtonSection(
            state: state,
            onRead: () => context.read<BooksBloc>().add(
              ReadBookEvent(),
            ),
          ),

          SizedBox(height: 20.h),

          // Download section with all buttons
          _DownloadSection(
            downloadLinks: downloadLinks,
            state: state,
            onDownload: (link) => context.read<BooksBloc>().add(
              DownloadBookEvent(
                url: link['url']!,
                format: link['format'] ?? '',
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Book header widget
  Widget _BookHeader({required dynamic book}) {
    return Column(
      children: [
        // Book title - ensures full title is displayed without truncation
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Text(
            book.bookTitle ?? 'كتاب',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.f,
              fontFamily: FontFamily.tajawal,
              fontWeight: FontWeight.bold,
            ),
            // No maxLines or overflow - allows full text to wrap
            softWrap: true,
          ),
        ),

        SizedBox(height: 10.h),

        // Visitor count and share button
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Visitor count
            if (book.bookVisitor != null) ...[
              Icon(Icons.remove_red_eye_outlined, size: 20.f, color: AppColors.grey),
              SizedBox(width: 5.w),
              Text(
                '${book.bookVisitor} زيارة',
                style: TextStyle(
                  fontSize: 14.f,
                  fontFamily: FontFamily.tajawal,
                  color: AppColors.grey,
                ),
              ),
            ],
            
            // Share button
            if (book.bookId != null) ...[
              SizedBox(width: 20.w),
              InkWell(
                onTap: () {
                  ShareUtils.showShareOptions(
                    context: context,
                    type: ContentType.book,
                    id: book.bookId!,
                    title: book.bookTitle ?? 'كتاب',
                    additionalText: book.bookSummary,
                  );
                },
                borderRadius: BorderRadius.circular(20.r),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.share,
                        size: 18.f,
                        color: AppColors.primary,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        'مشاركة',
                        style: TextStyle(
                          fontSize: 14.f,
                          fontFamily: FontFamily.tajawal,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }

  // Read button section widget
  Widget _ReadButtonSection({
    required BooksState state,
    required VoidCallback onRead,
  }) {
    final book = state.bookDetail;
    final hasAnyFormat = book != null && (
      (book.bookFile != null && book.bookFile!.isNotEmpty) ||
      (book.bookFileEPub != null && book.bookFileEPub!.isNotEmpty) ||
      (book.bookFileKfx != null && book.bookFileKfx!.isNotEmpty)
    );

    return Column(
      children: [
        SizedBox(
          height: 55.h,
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: hasAnyFormat && !state.isDownloading ? onRead : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: hasAnyFormat ? AppColors.primary : Colors.grey,
              foregroundColor: AppColors.white,
              padding: EdgeInsets.symmetric(vertical: 15.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              elevation: 2,
            ),
            icon: Icon(
              state.isDownloading && state.downloadMessage?.contains('للقراءة') == true
                  ? Icons.downloading
                  : Icons.menu_book,
              size: 24.f,
            ),
            label: Text(
              state.isDownloading && state.downloadMessage?.contains('للقراءة') == true
                  ? 'جاري التحميل للقراءة...'
                  : 'قراءة الكتاب',
              style: TextStyle(
                fontSize: 18.f,
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        // Progress indicator for reading download
        if (state.isDownloading && state.downloadMessage?.contains('للقراءة') == true && state.downloadProgress > 0)
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: state.downloadProgress,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                ),
                SizedBox(height: 5.h),
                Text(
                  '${(state.downloadProgress * 100).toStringAsFixed(0)}%',
                  style: TextStyle(
                    fontSize: 12.f,
                    fontFamily: FontFamily.tajawal,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  // Download section widget
  Widget _DownloadSection({
    required List<Map<String, String?>> downloadLinks,
    required BooksState state,
    required Function(Map<String, String?>) onDownload,
  }) {
    return Column(
      children: [
        // Download links title
        Text(
          'تحميل الكتاب بصيغ مختلفة:',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.f,
            fontFamily: FontFamily.tajawal,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 15.h),

        // Download buttons
        ...downloadLinks.map((link) => Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: _DownloadButton(
            link: link,
            isDownloading: state.isDownloading && state.downloadingFormat == link['format'],
            downloadProgress: state.downloadProgress,
            onDownload: () => onDownload(link),
          ),
        )),

        SizedBox(height: 10.h),
      ],
    );
  }

  // Individual download button widget
  Widget _DownloadButton({
    required Map<String, String?> link,
    required bool isDownloading,
    required double downloadProgress,
    required VoidCallback onDownload,
  }) {
    final hasUrl = link['url'] != null && link['url']!.isNotEmpty;
    final format = link['format'] ?? '';

    return Column(
      children: [
        Container(
          height: 50.h,
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: hasUrl ? onDownload : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: hasUrl ? AppColors.primary : Colors.grey,
              foregroundColor: AppColors.white,
              padding: EdgeInsets.symmetric(vertical: 15.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            icon: Icon(
              isDownloading
                  ? Icons.downloading
                  : (hasUrl ? Icons.download : Icons.info_outline),
              size: 20.f,
            ),
            label: Text(
              isDownloading
                  ? 'جاري التحميل...'
                  : (hasUrl ? 'تحميل بصيغة $format' : '$format - غير متوفر'),
              style: TextStyle(
                fontSize: 16.f,
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        // Progress indicator
        if (isDownloading && downloadProgress > 0)
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: downloadProgress,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                ),
                SizedBox(height: 5.h),
                Text(
                  '${(downloadProgress * 100).toStringAsFixed(0)}%',
                  style: TextStyle(
                    fontSize: 12.f,
                    fontFamily: FontFamily.tajawal,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  List<Map<String, String?>> _getDownloadLinks(dynamic bookData) {
    final links = <Map<String, String?>>[];

    // Check all possible file formats from the API
    if (bookData.bookFile != null && bookData.bookFile!.isNotEmpty) {
      links.add({
        'format': 'PDF',
        'url': bookData.bookFileUrl,
        'fileName': bookData.bookFile,
      });
    }

    if (bookData.bookFileEPub != null && bookData.bookFileEPub!.isNotEmpty) {
      links.add({
        'format': 'ePub',
        'url': bookData.bookFileEpubUrl,
        'fileName': bookData.bookFileEPub,
      });
    }

    if (bookData.bookFileKfx != null && bookData.bookFileKfx!.isNotEmpty) {
      links.add({
        'format': 'KFX',
        'url': bookData.bookFileKfxUrl,
        'fileName': bookData.bookFileKfx,
      });
    }

    return links;
  }
}
