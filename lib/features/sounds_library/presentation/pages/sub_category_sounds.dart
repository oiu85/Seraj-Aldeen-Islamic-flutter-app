import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/ui_status_handling.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

import '../bloc/sounds_bloc.dart';
import '../bloc/sounds_event.dart';
import '../bloc/sounds_state.dart';
import '../widgets/sound_card.dart';
import '../widgets/sub_desc_card.dart';

class SubCategorySounds extends StatelessWidget {
  const SubCategorySounds({super.key});

  @override
  Widget build(BuildContext context) {
    // Get category ID from arguments
    final Map<String, dynamic>? args = Get.arguments as Map<String, dynamic>?;
    final int categoryId = args?['categoryId'] ?? 0;
    final String categoryTitle = args?['categoryTitle'] ?? '';

    return BlocProvider(
      create: (context) => GetIt.instance<SoundsBloc>()
        ..add(LoadCategoryContentEvent(categoryId: categoryId)),
      child: _SubCategorySoundsContent(
        categoryId: categoryId,
        categoryTitle: categoryTitle,
      ),
    );
  }
}

class _SubCategorySoundsContent extends StatefulWidget {
  final int categoryId;
  final String categoryTitle;

  const _SubCategorySoundsContent({
    required this.categoryId,
    required this.categoryTitle,
  });

  @override
  State<_SubCategorySoundsContent> createState() => _SubCategorySoundsContentState();
}

class _SubCategorySoundsContentState extends State<_SubCategorySoundsContent> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      final state = context.read<SoundsBloc>().state;
      if (state.hasNextPage && !state.status.isLoadingMore()) {
        context.read<SoundsBloc>().add(
          LoadCategoryContentEvent(
            categoryId: widget.categoryId,
            page: state.currentPage + 1,
          ),
        );
      }
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      backgroundColor: Colors.white,
      body: BlocBuilder<SoundsBloc, SoundsState>(
        builder: (context, state) {
          // Show initial loading only when no content is available
          if (state.status.isLoading() && state.categoryContent.isEmpty) {
            return SimpleLottieHandler(
              blocStatus: state.status,
              successWidget: const SizedBox.shrink(),
              loadingMessage: 'جاري تحميل المحتوى...',
            );
          }

          // Show error only when no content is available
          if (state.status.isFail() && state.categoryContent.isEmpty) {
            return SimpleLottieHandler(
              blocStatus: state.status,
              successWidget: const SizedBox.shrink(),
              onRetry: () {
                context.read<SoundsBloc>().add(
                  LoadCategoryContentEvent(categoryId: widget.categoryId),
                );
              },
            );
          }

          // Show content when available (even during loading more)
          if (state.categoryContent.isNotEmpty) {
            return SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),
                  // Category title
                  Center(
                    child: Text(
                      state.categoryInfo?.title ?? widget.categoryTitle,
                      style: TextStyle(
                        fontSize: 24.f,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                        fontFamily: FontFamily.tajawal,
                      ),
                    ),
                  ),
                  // Show description card only if category has a note
                  if (state.categoryInfo?.note != null && 
                      state.categoryInfo!.note!.isNotEmpty)
                    Center(
                      child: SubDescCard(
                        title: state.categoryInfo?.title ?? widget.categoryTitle,
                        content: state.categoryInfo?.note ?? '',
                        onMoreTap: () {
                          // TODO: Navigate to full content page
                        },
                      ),
                    ),
                  // Display sounds in grid view with 2 cards per row
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.w,
                        mainAxisSpacing: 16.h,
                        childAspectRatio: 1,
                      ),
                      itemCount: state.categoryContent.length,
                      itemBuilder: (context, index) {
                        final sound = state.categoryContent[index];
                        return SoundCard(
                          title: sound.title ?? "",
                          visitorCount: sound.visitor_count ?? "0",
                          date: sound.date ?? "",
                        );
                      },
                    ),
                  ),
                  // Loading more indicator
                  if (state.status.isLoadingMore())
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(10.p),
                        child: CircularProgressIndicator(
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  SizedBox(height: 20.h),
                ],
              ),
            );
          }

          return const Center(
            child: Text('لا توجد بيانات'),
          );
        },
      ),
    );
  }
}