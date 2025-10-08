import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/ui_status_handling.dart';

import '../bloc/sounds_bloc.dart';
import '../bloc/sounds_event.dart';
import '../bloc/sounds_state.dart';
import '../widgets/sound_card.dart';
import '../widgets/sub_desc_card.dart';
import '../widgets/sub_sounds_row_section_card.dart';

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
          if (state.status.isLoading()) {
            return SimpleLottieHandler(
              blocStatus: state.status,
              successWidget: const SizedBox.shrink(),
              loadingMessage: 'جاري تحميل المحتوى...',
            );
          }

          if (state.status.isFail()) {
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

          if (state.status.isSuccess() && state.categoryContent.isNotEmpty) {
            return SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  SizedBox(height: 40.h),
                  // Show description card only if category has a note
                  if (state.categoryInfo?.note != null && 
                      state.categoryInfo!.note!.isNotEmpty)
                    SubDescCard(
                      title: state.categoryInfo?.title ?? widget.categoryTitle,
                      content: state.categoryInfo?.note ?? '',
                      onMoreTap: () {
                        // TODO: Navigate to full content page
                      },
                    ),
                  SizedBox(height: 40.h),
                  // Display sounds in groups of 3
                  ...List.generate(
                    (state.categoryContent.length / 3).ceil(),
                    (index) {
                      final startIndex = index * 3;
                      final endIndex = (startIndex + 3).clamp(0, state.categoryContent.length);
                      final soundsInRow = state.categoryContent.sublist(startIndex, endIndex);

                      return Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: SubSoundsRowSectionCard(
                          title: state.categoryInfo?.title ?? widget.categoryTitle,
                          onSeeAll: () {},
                          sectionIndex: index,
                          cards: [
                            ...soundsInRow.asMap().entries.map((entry) {
                              final sound = entry.value;
                              return [
                                SoundCard(
                                  title: sound.title ?? "",
                                  visitorCount: sound.visitor_count ?? "0",
                                  date: sound.date ?? "",
                                ),
                                if (entry.key < soundsInRow.length - 1)
                                  SizedBox(width: 12.w),
                              ];
                            }).expand((element) => element),
                          ],
                        ),
                      );
                    },
                  ),
                  // Loading more indicator
                  if (state.status.isLoadingMore())
                    Padding(
                      padding: EdgeInsets.all(20.p),
                      child: const CircularProgressIndicator(),
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