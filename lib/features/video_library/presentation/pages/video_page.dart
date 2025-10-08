import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/di/app_dependencies.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/shared/widgets/decoration_app_bar.dart';
import '../../../../core/shared/widgets/ui_status_handling.dart';
import '../bloc/videos_bloc.dart';
import '../bloc/videos_event.dart';
import '../bloc/videos_state.dart';
import '../widgets/main_category_section.dart';
import '../widgets/vedio_card.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    _animationController.forward();
  }

  void _onScroll() {
    if (_isBottom) {
      final bloc = context.read<VideosBloc>();
      final state = bloc.state;
      
      if (state.hasNextPage && 
          !state.status.isLoading() && 
          !state.status.isLoadingMore() &&
          state.selectedCategoryId != null) {
        bloc.add(LoadCategoryVideosEvent(
          categoryId: state.selectedCategoryId!,
          page: state.currentPage + 1,
        ));
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
  void dispose() {
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VideosBloc>()..add(LoadVideoMainCategoriesEvent()),
      child: AppScaffold.clean(
        backgroundColor: AppColors.white,
        body: BlocBuilder<VideosBloc, VideosState>(
          builder: (context, state) {
            if (state.status.isLoading() && state.mainCategories.isEmpty) {
              return SimpleLottieHandler(
                blocStatus: state.status,
                successWidget: const SizedBox.shrink(),
              );
            }

            if (state.status.isFail() && state.mainCategories.isEmpty) {
              return SimpleLottieHandler(
                blocStatus: state.status,
                successWidget: const SizedBox.shrink(),
                onRetry: () {
                  context.read<VideosBloc>().add(LoadVideoMainCategoriesEvent());
                },
              );
            }

            return CustomScrollView(
              controller: _scrollController,
              slivers: [
                /// AppBar with fade-in animation
                SliverToBoxAdapter(
                  child: FadeTransition(
                    opacity: _animationController,
                    child: Column(
                      children: [
                        const DecorationAppBar(title: 'الفيديوهات'),
                        SizedBox(height: 30.h),
                        if (state.mainCategories.isNotEmpty)
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: MainCategorySection(
                              categories: state.mainCategories,
                              selectedCategoryId: state.selectedCategoryId,
                              onCategoryTap: (categoryId) {
                                context.read<VideosBloc>().add(
                                      LoadCategoryVideosEvent(
                                        categoryId: categoryId,
                                        page: 1,
                                      ),
                                    );
                              },
                            ),
                          ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                ),

                /// Grid for video cards with staggered animation
                if (state.categoryVideos.isNotEmpty)
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0.w,
                        mainAxisSpacing: 0.h,
                        childAspectRatio: 1,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final video = state.categoryVideos[index];
                          final animation = _createAnimation(index);
                          
                          return _AnimatedVideoCard(
                            animation: animation,
                            child: VideoCard(
                              title: video.title ?? '',
                              onTap: () {
                                if (video.id != null) {
                                  Get.toNamed(
                                    AppRoute.player,
                                    arguments: {'videoId': video.id},
                                  );
                                }
                              },
                            ),
                          );
                        },
                        childCount: state.categoryVideos.length,
                      ),
                    ),
                  ),

                /// Loading more indicator
                if (state.status.isLoadingMore())
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(20.p),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),

                /// Empty state
                if (state.categoryVideos.isEmpty && !state.status.isLoading())
                  SliverToBoxAdapter(
                    child: SimpleLottieHandler(
                      blocStatus: BlocStatus.success(),
                      successWidget: const SizedBox.shrink(),
                      isEmpty: true,
                      emptyMessage: 'لا توجد فيديوهات في هذا القسم',
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  Animation<double> _createAnimation(int index) {
    final start = (index * 0.1).clamp(0.0, 1.0);
    final end = (start + 0.3).clamp(0.0, 1.0);
    
    return CurvedAnimation(
      parent: _animationController,
      curve: Interval(start, end, curve: Curves.easeOutCubic),
    );
  }
}

/// Animated wrapper for video cards
class _AnimatedVideoCard extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;

  const _AnimatedVideoCard({
    required this.animation,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return FadeTransition(
          opacity: animation,
          child: Transform.translate(
            offset: Offset(0, 30 * (1 - animation.value)),
            child: Transform.scale(
              scale: 0.8 + (0.2 * animation.value),
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }
}
