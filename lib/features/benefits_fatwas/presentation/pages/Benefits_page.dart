import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/di/app_dependencies.dart';
import '../../../../core/shared/widgets/decoration_app_bar.dart';
import '../../../../core/shared/widgets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../bloc/benefits_bloc.dart';
import '../bloc/benefits_event.dart';
import '../bloc/benefits_state.dart';
import '../utils/benefits_constants.dart';
import '../widgets/ftawa_card.dart';
import '../utils/benefits_animations.dart';
import 'benefits_categories_page.dart';

class BenefitsPage extends StatefulWidget {
  const BenefitsPage({super.key});

  @override
  State<BenefitsPage> createState() => _BenefitsPageState();
}

class _BenefitsPageState extends State<BenefitsPage> {
  late final BenefitsBloc _benefitsBloc;

  @override
  void initState() {
    super.initState();
    _benefitsBloc = getIt<BenefitsBloc>()..add(const LoadArticleCategoriesEvent());
  }

  @override
  void dispose() {
    _benefitsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _benefitsBloc,
      child: AppScaffold.clean(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Container(
            key: const ValueKey('benefits_page_content'),
            padding: EdgeInsets.only(right: 8.p, left: 8.p),
            child: Column(children: [
              DecorationAppBar(title: BenefitsConstants.pageTitle),
              SizedBox(height: 48.h),
              BlocBuilder<BenefitsBloc, BenefitsState>(
                builder: (context, state) {
                  return SimpleLottieHandler(
                    key: ValueKey('benefits_handler_${state.status}'),
                    blocStatus: state.status,
                    successWidget: _buildSuccessContent(context, state),
                    isEmpty: state.status.isSuccess() && state.categories.isEmpty,
                    emptyMessage: BenefitsConstants.emptyBenefitsMessage,
                    loadingMessage: BenefitsConstants.loadingBenefitsMessage,
                    onRetry: () => context
                        .read<BenefitsBloc>()
                        .add(const LoadArticleCategoriesEvent()),
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
    if (state.categories.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      key: ValueKey('categories_column_${state.categories.length}'),
      children: state.categories.asMap().entries.map((entry) {
        final index = entry.key;
        final category = entry.value;

        return Padding(
          key: ValueKey('category_wrapper_$index'),
          padding: EdgeInsets.only(bottom: 10.h),
          child: _buildAnimatedCategoryRow(
            index, 
            category.title ?? "", 
            category.data ?? [],
            categoryId: category.id,
            context: context,
          ),
        );
      }).toList(),
    );
  }
}

Widget _buildTheRow(int rowIndex, String categoryTitle, List articleItems, {int? categoryId, required BuildContext context}) {
  return Column(
    key: ValueKey('category_row_$rowIndex'),
    children: [
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.0.p),
        child: Row(
          key: ValueKey('category_header_$rowIndex'),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            animateCategoryTitle(
              child: Text(
                categoryTitle,
                style: TextStyle(
                  fontSize: 18.f,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontFamily.tajawal,
                ),
              ),
              rowIndex: rowIndex,
              key: ValueKey('category_title_anim_$rowIndex'),
            ),
            InkWell(
              onTap: () {
                if (categoryId != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BenefitsCategoriesPage(
                        categoryId: categoryId,
                        categoryTitle: categoryTitle,
                      ),
                    ),
                  );
                }
              },
              child: animateAllButton(
                child: Text(
                  BenefitsConstants.viewAllText,
                  style: TextStyle(
                    fontSize: 18.f,
                    fontFamily: FontFamily.tajawal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                rowIndex: rowIndex,
                key: ValueKey('category_all_anim_$rowIndex'),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 12.h,
      ),
      SizedBox(
        height: 250.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: articleItems.length > BenefitsConstants.maxItemsPerRow 
              ? BenefitsConstants.maxItemsPerRow 
              : articleItems.length,
          itemBuilder: (context, index) {
            final article = articleItems[index];
            final isNotLast = index < articleItems.length - 1;
            
            return Container(
              key: ValueKey('article_container_${rowIndex}_$index'),
              width: 200.w,
              margin: EdgeInsets.only(right: isNotLast ? 12.w : 0),
              child: animateArticleCard(
                child: lessonCardBuild(
                  lesson: article.title ?? BenefitsConstants.defaultArticleTitle,
                  viewCont: article.visitor_count ?? BenefitsConstants.defaultVisitorCount,
                  title: BenefitsConstants.authorLabel,
                  imageNamePath: Assets.images.serajName.path,
                  width: 50.w,
                  height: 50.h,
                  context: context,
                ),
                rowIndex: rowIndex,
                cardIndex: index,
                key: ValueKey('article_anim_${rowIndex}_$index'),
              ),
            );
          },
        ),
      ),
      SizedBox(height: 20.h,),
    ],
  );
}

Widget _buildAnimatedCategoryRow(int rowIndex, String categoryTitle, List articleItems, {int? categoryId, required BuildContext context}) {
  return animateCategoryRow(
    child: _buildTheRow(rowIndex, categoryTitle, articleItems, categoryId: categoryId, context: context),
    rowIndex: rowIndex,
    key: ValueKey('category_row_anim_$rowIndex'),
  );
}