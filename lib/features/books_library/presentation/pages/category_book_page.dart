import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/di/app_dependencies.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/filter_button.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/ui_status_handling.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

import '../bloc/books_bloc.dart';
import '../bloc/books_event.dart';
import '../bloc/books_state.dart';
import '../widgets/book_card.dart';
import '../widgets/book_info_bottom_sheet.dart';

class SoundsBookPage extends StatefulWidget {
  final int categoryId;
  final String categoryTitle;

  const SoundsBookPage({
    super.key,
    required this.categoryId,
    required this.categoryTitle,
  });

  @override
  State<SoundsBookPage> createState() => _SoundsBookPageState();
}

class _SoundsBookPageState extends State<SoundsBookPage> {
  final ScrollController _scrollController = ScrollController();
  late BooksBloc _booksBloc;

  @override
  void initState() {
    super.initState();
    _booksBloc = getIt<BooksBloc>();
    _booksBloc.add(LoadCategoryBooksEvent(categoryId: widget.categoryId));
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    // Disabled automatic load more - now using pagination filter
    // Users can navigate to specific pages using the filter button
  }

  void _navigateToPage(int page) {
    _booksBloc.add(LoadCategoryBooksEvent(
      categoryId: widget.categoryId,
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
      width: 80.w,
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
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 2.p),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Text(
                      widget.categoryTitle,
                      style: TextStyle(
                        fontSize: 22.f,
                        fontFamily: FontFamily.tajawal,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                     margin :  EdgeInsets.only(left: 12.p),
                      child: BlocBuilder<BooksBloc, BooksState>(
                        builder: (context, state) {
                          return _buildPageFilter(state);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: BlocBuilder<BooksBloc, BooksState>(
                  builder: (context, state) {
                    return _buildContent(state);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BooksState state) {
    return SimpleLottieHandler(
      blocStatus: state.categoryBooksStatus,
      successWidget: state.categoryBooks.isEmpty
          ? Center(
              child: Text(
                'لا توجد كتب',
                style: TextStyle(
                  fontSize: 18.f,
                  fontFamily: FontFamily.tajawal,
                ),
              ),
            )
          : _buildBooksGrid(state),
      onRetry: () {
        _booksBloc.add(LoadCategoryBooksEvent(categoryId: widget.categoryId));
      },
    );
  }

  Widget _buildBooksGrid(BooksState state) {
    return GridView.builder(
      controller: _scrollController,
      padding: EdgeInsets.symmetric(horizontal: 5.p),
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
    );
  }
}
