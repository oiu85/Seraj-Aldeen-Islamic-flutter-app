import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import '../../../../core/di/app_dependencies.dart';
import '../../../../core/shared/widgets/decoration_app_bar.dart';
import '../../../../core/shared/widgets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../bloc/benefits_bloc.dart';
import '../bloc/benefits_event.dart';
import '../bloc/benefits_state.dart';
import '../widgets/ftawa_card.dart';
import '../utils/benefits_animations.dart';

class BenefitsCategoriesPage extends StatefulWidget {
  final int categoryId;
  final String categoryTitle;

  const BenefitsCategoriesPage({
    super.key,
    required this.categoryId,
    required this.categoryTitle,
  });

  @override
  State<BenefitsCategoriesPage> createState() => _BenefitsCategoriesPageState();
}

class _BenefitsCategoriesPageState extends State<BenefitsCategoriesPage> {
  late final BenefitsBloc _benefitsBloc;
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;
  final int _perPage = 6;

  @override
  void initState() {
    super.initState();
    _benefitsBloc = getIt<BenefitsBloc>()
      ..add(LoadCategoryContentEvent(
        categoryId: widget.categoryId,
        page: _currentPage,
        perPage: _perPage,
      ));
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _benefitsBloc.close();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      final state = _benefitsBloc.state;
      if (state.status.isSuccess() &&
          state.hasNextPage &&
          !state.status.isLoadingMore()) {
        _currentPage++;
        _benefitsBloc.add(LoadCategoryContentEvent(
          categoryId: widget.categoryId,
          page: _currentPage,
          perPage: _perPage,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _benefitsBloc,
      child: AppScaffold.clean(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            key: const ValueKey('benefits_categories_page_content'),
            padding: EdgeInsets.only(right: 20.p, left: 20.p),
            child: Column(children: [
              // Animated header section
              // DecorationAppBar(title: widget.categoryTitle),
              SizedBox(height: 40.h,),
              Text(widget.categoryTitle, style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 20.p,
                fontWeight: FontWeight.bold,
              ),),
              // Content with BLoC
              BlocBuilder<BenefitsBloc, BenefitsState>(
                builder: (context, state) {
                  return SimpleLottieHandler(
                    key: ValueKey('benefits_categories_handler_${state.status}'),
                    blocStatus: state.status,
                    successWidget: _buildSuccessContent(context, state),
                    isEmpty: state.status.isSuccess() && state.categoryContent.isEmpty,
                    emptyMessage: 'لا توجد مقالات في هذا القسم',
                    loadingMessage: 'جاري تحميل المقالات...',
                    onRetry: () {
                      _benefitsBloc.add(LoadCategoryContentEvent(
                        categoryId: widget.categoryId,
                        page: _currentPage,
                        perPage: _perPage,
                      ));
                    },
                    animationSize: 200.w,
                  );
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _buildSuccessContent(BuildContext context, BenefitsState state) {
    if (state.categoryContent.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      key: ValueKey('category_content_grid_${state.categoryContent.length}'),
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 12.h,
          ),
          itemCount: state.categoryContent.length,
          itemBuilder: (context, index) {
            final article = state.categoryContent[index];
            return animateGridItem(
              child: lessonCardBuild(
                lesson: article.title ?? 'عنوان المقال',
                viewCont: article.visitor_count ?? '0',
                title: 'فضيلة الشيخ',
                imageNamePath: Assets.images.serajName.path,
                width: 180.w,
                height: 240.h,
                context: context,
                onTap: () {
                  // TODO: Navigate to article details page
                },
              ),
              index: index,
              key: ValueKey('article_grid_item_$index'),
            );
          },
        ),
        
        // Loading more indicator
        if (state.status.isLoadingMore())
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          ),
        
        SizedBox(height: 20.h),
      ],
    );
  }
}

