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
            perPage: 6,
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
      backgroundColor: AppColors.background,
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

          return Column(
            children: [
              SizedBox(height: 20.h),
              
              // Description card (only if available)
              if (state.categoryInfo?.note != null && 
                  state.categoryInfo!.note!.isNotEmpty)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SubDescCard(
                    title: state.categoryInfo?.title ?? widget.categoryTitle,
                    content: state.categoryInfo?.note ?? '',
                  ),
                ),
              
              if (state.categoryInfo?.note != null && 
                  state.categoryInfo!.note!.isNotEmpty)
                SizedBox(height: 20.h),

              // GridView for sounds
              Expanded(
                child: state.categoryContent.isEmpty
                    ? Center(
                        child: Text(
                          'لا توجد بيانات',
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 16.f,
                            color: AppColors.grey,
                          ),
                        ),
                      )
                    : RefreshIndicator(
                        onRefresh: () async {
                          context.read<SoundsBloc>().add(
                            LoadCategoryContentEvent(categoryId: widget.categoryId),
                          );
                        },
                        child: GridView.builder(
                          controller: _scrollController,
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12.w,
                            mainAxisSpacing: 16.h,
                            childAspectRatio: 0.85,
                          ),
                          itemCount: state.categoryContent.length + 
                              (state.status.isLoadingMore() ? 2 : 0),
                          itemBuilder: (context, index) {
                            // Show loading indicator at the end
                            if (index >= state.categoryContent.length) {
                              return const Center(child: CircularProgressIndicator());
                            }
                            
                            final sound = state.categoryContent[index];
                            return SoundCard(
                              title: sound.title ?? "",
                              visitorCount: sound.visitor_count ?? "0",
                              date: sound.date ?? "",
                              soundFileUrl: sound.sound_file_url,
                              soundId: sound.id,
                              soundItem: sound,
                              categoryTitle: state.categoryInfo?.title ?? widget.categoryTitle,
                            );
                          },
                        ),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}