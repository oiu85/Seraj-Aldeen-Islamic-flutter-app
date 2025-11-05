import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/core/di/app_dependencies.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/decoration_app_bar.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/filter_button.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/ui_status_handling.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';
import '../bloc/books_bloc.dart';
import '../bloc/books_event.dart';
import '../bloc/books_state.dart';
import '../widgets/book_card.dart';
import '../widgets/book_desc_card.dart';
import '../widgets/book_info_bottom_sheet.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  late BooksBloc _booksBloc;
  final ScrollController _scrollController = ScrollController();
  
  // Category ID for main books (from API: categories/books/1/content)
  static const int _mainBooksCategoryId = 1;

  @override
  void initState() {
    super.initState();
    _booksBloc = getIt<BooksBloc>();
    // Load both main categories (for description) and category books (for grid)
    _booksBloc.add(LoadBookMainCategoriesEvent());
    _booksBloc.add(LoadCategoryBooksEvent(
      categoryId: _mainBooksCategoryId,
      page: 1,
      perPage: 6,
    ));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _navigateToPage(int page) {
    _booksBloc.add(LoadCategoryBooksEvent(
      categoryId: _mainBooksCategoryId,
      page: page,
      perPage: 6,
    ));
    
    // Scroll to top when changing pages
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  Widget _buildPageFilter(BooksState state) {
    if (state.totalPages <= 1) {
      return const SizedBox.shrink();
    }

    // Generate page options
    final pageOptions = List.generate(
      state.totalPages,
      (index) => FilterOption<int>(
        value: index + 1,
        label: '${index + 1}',
        isSelected: state.currentPage == (index + 1),
      ),
    );

    return FilterButton<int>(
      options: pageOptions,
      selectedValue: state.currentPage,
      hintText: '',
      width: 70.w,
      height: 45.h,
      backgroundColor: AppColors.primary.withValues(alpha: 0.1),
      textColor: AppColors.primary,
      onChanged: (page) {
        if (page != null && page != state.currentPage) {
          _navigateToPage(page);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _booksBloc,
      child: AppScaffold.clean(
        backgroundColor: AppColors.background,
        body: BlocBuilder<BooksBloc, BooksState>(
          builder: (context, state) {
            return SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  // Header with title
                  DecorationAppBar(title: "كتب الإمام"),
                  SizedBox(height: 30.h),
                  
                  // Description Card from API (from main categories)
                  if (state.pageInfo.isNotEmpty)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: BookDescCard(
                        title: state.pageInfo.first.title ?? 'كلمة حول كتب الشيخ',
                        content: state.pageInfo.first.content ?? '',
                      ),
                    ),
                  
                  SizedBox(height: 20.h),
                  
                  // Page filter button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'تحميل كُتُب الإمام بصيغ متعددة',
                          style: TextStyle(
                            fontSize: 18.f,
                            fontWeight: FontWeight.bold,
                            fontFamily: FontFamily.tajawal,
                          ),
                        ),
                        _buildPageFilter(state),
                      ],
                    ),
                  ),
                  
                  SizedBox(height: 20.h),
                  
                  // Books grid with loading/error handling
                  _buildBooksContent(state),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBooksContent(BooksState state) {
    return SimpleLottieHandler(
      blocStatus: state.categoryBooksStatus,
      successWidget: state.categoryBooks.isEmpty
          ? Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h),
                child: Text(
                  'لا توجد كتب',
                  style: TextStyle(
                    fontSize: 18.f,
                    fontFamily: FontFamily.tajawal,
                  ),
                ),
              ),
            )
          : _buildBooksGrid(state),
      onRetry: () {
        _booksBloc.add(LoadCategoryBooksEvent(
          categoryId: _mainBooksCategoryId,
          page: 1,
          perPage: 6,
        ));
      },
    );
  }

  Widget _buildBooksGrid(BooksState state) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: 0.52,
        ),
        itemCount: state.categoryBooks.length,
        itemBuilder: (context, index) {
          final book = state.categoryBooks[index];
          return bookCardBuild(
            context: context,
            viewCont: book.visitor_count ?? '0',
            title: '',
            width: 10,
            height: 10.h,
            book: book.title ?? '',
            bookPicUrl: book.bookPicUrl,
            bookId: book.id,
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (bottomSheetContext) => BlocProvider.value(
                  value: _booksBloc,
                  child: BookInfoBottomSheet(
                    bookId: book.id ?? 0,
                  ),
                ),
              );
            },
          )
              .animate()
              .fadeIn(
                duration: 500.ms,
                delay: (index * 100).ms,
                curve: Curves.easeOutCubic,
              )
              .slideY(
                begin: 0.3,
                end: 0,
                duration: 500.ms,
                delay: (index * 100).ms,
                curve: Curves.easeOutCubic,
              )
              .scale(
                begin: const Offset(0.9, 0.9),
                end: const Offset(1.0, 1.0),
                duration: 400.ms,
                delay: (index * 100 + 100).ms,
                curve: Curves.easeOutBack,
              );
        },
      ),
    );
  }
}