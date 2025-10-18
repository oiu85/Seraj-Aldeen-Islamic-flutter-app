import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/core/di/app_dependencies.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/decoration_app_bar.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/ui_status_handling.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';
import '../bloc/books_bloc.dart';
import '../bloc/books_event.dart';
import '../bloc/books_state.dart';
import '../widgets/book_card.dart';
import '../widgets/book_desc_card.dart';
import '../widgets/book_info_bottom_sheet.dart';
import 'category_book_page.dart';

// Static book data model
class BookData {
  final String title;
  final String viewCount;
  final String bookName;
  final String bookImagePath;
  final bool isSoundBook;
  final VoidCallback? onTap;

  BookData({
    required this.title,
    required this.viewCount,
    required this.bookName,
    required this.bookImagePath,
    this.isSoundBook = false,
    this.onTap,
  });
}

// Row data model
class RowData {
  final String title;
  final String imagePath;
  final List<BookData> books;
  final VoidCallback? onViewAllTap;

  RowData({
    required this.title,
    required this.imagePath,
    required this.books,
    this.onViewAllTap,
  });
}

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BooksBloc>()..add(LoadBookMainCategoriesEvent()),
      child: AppScaffold.clean(
        backgroundColor: AppColors.background,
        body: BlocBuilder<BooksBloc, BooksState>(
          builder: (context, state) {
            return SimpleLottieHandler(
              blocStatus: state.status,
              successWidget: _buildContent(context, state),
              onRetry: () {
                context.read<BooksBloc>().add(LoadBookMainCategoriesEvent());
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, BooksState state) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DecorationAppBar(title: "كتب الإمام"),
          SizedBox(height: 30.h),
          
          // Description Card from API
          if (state.pageInfo.isNotEmpty)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: BookDescCard(
                title: state.pageInfo.first.title ?? 'كلمة حول كتب الشيخ',
                content: state.pageInfo.first.content ?? '',
              ),
            ),
          
          SizedBox(height: 20.h),
          
          // Categories from API
          ...state.categories.asMap().entries.map((entry) {
            final category = entry.value;
            final books = category.data ?? [];
            
            // Skip category with id=2 (shown in home page as static menu)
            if (category.id == 2) return const SizedBox.shrink();
            
            if (books.isEmpty) return const SizedBox.shrink();
            
            return _buildTheRow(
              context: context,
              rowIndex: entry.key,
              categoryTitle: category.title ?? '',
              categoryId: category.id ?? 0,
              books: books,
            );
          }),
        ],
      ),
    );
  }

}


Widget _buildTheRow({
  required BuildContext context,
  required int rowIndex,
  required String categoryTitle,
  required int categoryId,
  required List<dynamic> books,
}) {
  return Column(
    children: [
      SizedBox(height: 10.h,),
      // Animated section header
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20.p),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              categoryTitle,
              style: TextStyle(
                fontSize: 18.f,
                fontWeight: FontWeight.bold,
                fontFamily: FontFamily.tajawal,
              ),
            ).animate()
                .fadeIn(duration: 600.ms, delay: (200 + rowIndex * 200).ms)
                .slideX(begin: -0.2, end: 0, duration: 600.ms, delay: (200 + rowIndex * 200).ms),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SoundsBookPage(
                      categoryId: categoryId,
                      categoryTitle: categoryTitle,
                    ),
                  ),
                );
              },
              child: Text(
                "الكل",
                style: TextStyle(
                  fontSize: 18.f,
                  fontFamily: FontFamily.tajawal,
                  fontWeight: FontWeight.bold,
                ),
              ).animate()
                  .fadeIn(duration: 600.ms, delay: (300 + rowIndex * 200).ms)
                  .slideX(begin: 0.2, end: 0, duration: 600.ms, delay: (300 + rowIndex * 200).ms),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 12.h,
      ),
      // Animated horizontal list
      SizedBox(
        height: 304.h,

        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          itemCount: books.length > 3 ? 3 : books.length,
          itemBuilder: (context, index) {
            final book = books[index];
            return Container(
              width: 220.w,
              margin: EdgeInsets.only(left: 10.w),
              child: bookCardBuild(
                context: context,
                viewCont: book.visitor_count?.toString() ?? '0',
                title: '',
                width: 180.w,
                height: 320.h,
                book: book.title ?? '',
                bookPicUrl: book.bookPicUrl,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (bottomSheetContext) => BlocProvider.value(
                      value: context.read<BooksBloc>(),
                      child: BookInfoBottomSheet(
                        bookId: book.id ?? 0,
                      ),
                    ),
                  );
                },
              ).animate()
                  .fadeIn(
                duration: 500.ms,
                delay: (400 + rowIndex * 200 + index * 100).ms,
                curve: Curves.easeOutCubic,
              )
                  .slideX(
                begin: 0.3,
                end: 0,
                duration: 500.ms,
                delay: (400 + rowIndex * 200 + index * 100).ms,
                curve: Curves.easeOutCubic,
              )
                  .scale(
                begin: const Offset(0.9, 0.9),
                end: const Offset(1.0, 1.0),
                duration: 400.ms,
                delay: (500 + rowIndex * 200 + index * 100).ms,
                curve: Curves.easeOutBack,
              ),
            );
          },
        ),
      ),
      SizedBox(height: 20.h,),
    ],
  ).animate()
      .fadeIn(
    duration: 800.ms,
    delay: (100 + rowIndex * 200).ms,
    curve: Curves.easeOutCubic,
  )
      .slideY(
    begin: 0.2,
    end: 0,
    duration: 600.ms,
    delay: (100 + rowIndex * 200).ms,
    curve: Curves.easeOutCubic,
  );
}