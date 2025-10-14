import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/di/app_dependencies.dart';
import '../../../../core/shared/widgets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../bloc/benefits_bloc.dart';
import '../bloc/benefits_event.dart';
import '../bloc/benefits_state.dart';
import '../utils/benefits_constants.dart';
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
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    _benefitsBloc = getIt<BenefitsBloc>()
      ..add(LoadCategoryContentEvent(
        categoryId: widget.categoryId,
        page: 1,
        perPage: BenefitsConstants.itemsPerPage,
      ));
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    _benefitsBloc.close();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    
    final threshold = _scrollController.position.maxScrollExtent * 
        BenefitsConstants.loadMoreThreshold;
    
    if (_scrollController.offset >= threshold) {
      _loadMoreIfNeeded();
    }
  }
  
  void _loadMoreIfNeeded() {
    final state = _benefitsBloc.state;
    
    final canLoadMore = state.hasNextPage && 
        state.status.isSuccess() && 
        !state.status.isLoadingMore();
        
    if (canLoadMore) {
      _benefitsBloc.add(LoadCategoryContentEvent(
        categoryId: widget.categoryId,
        page: state.currentPage + 1,
        perPage: BenefitsConstants.itemsPerPage,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _benefitsBloc,
      child: AppScaffold.clean(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            key: const ValueKey('benefits_categories_page_content'),
            padding: EdgeInsets.only(right: 20.p, left: 20.p),
            child: Column(children: [
              SizedBox(height: 48.h,),
              Text(widget.categoryTitle, style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 20.p,
                fontWeight: FontWeight.bold,
              ),),
              BlocBuilder<BenefitsBloc, BenefitsState>(
                builder: (context, state) {
                  return SimpleLottieHandler(
                    key: ValueKey('benefits_categories_handler_${state.status}'),
                    blocStatus: state.status,
                    successWidget: _buildSuccessContent(context, state),
                    isEmpty: state.status.isSuccess() && state.categoryContent.isEmpty,
                    emptyMessage: BenefitsConstants.emptyCategoryMessage,
                    loadingMessage: BenefitsConstants.loadingCategoryMessage,
                    onRetry: () => _benefitsBloc.add(LoadCategoryContentEvent(
                      categoryId: widget.categoryId,
                      page: 1,
                      perPage: BenefitsConstants.itemsPerPage,
                    )),
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
            crossAxisCount: BenefitsConstants.gridCrossAxisCount,
            childAspectRatio: BenefitsConstants.gridChildAspectRatio,
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 12.h,
          ),
          itemCount: state.categoryContent.length,
          itemBuilder: (context, index) {
            final article = state.categoryContent[index];
            return animateGridItem(
              child: lessonCardBuild(
                lesson: article.title ?? BenefitsConstants.defaultArticleTitle,
                viewCont: article.visitor_count ?? BenefitsConstants.defaultVisitorCount,
                title: BenefitsConstants.authorLabel,
                imageNamePath: Assets.images.serajName.path,
                width: 180.w,
                height: 240.h,
                context: context,
                articleId: article.id,
              ),
              index: index,
              key: ValueKey('article_grid_item_$index'),
            );
          },
        ),
        
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

