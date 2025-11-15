import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/ui_status_handling.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import '../bloc/sounds_bloc.dart';
import '../bloc/sounds_event.dart';
import '../bloc/sounds_state.dart';
import '../widgets/sound_card.dart';

class AudioBookSoundsPage extends StatefulWidget {
  const AudioBookSoundsPage({super.key});

  @override
  State<AudioBookSoundsPage> createState() => _AudioBookSoundsPageState();
}

class _AudioBookSoundsPageState extends State<AudioBookSoundsPage> {
  late ScrollController _scrollController;
  late int categoryId;
  late String bookTitle;
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    // Get arguments
    final Map<String, dynamic>? args = Get.arguments as Map<String, dynamic>?;
    categoryId = args?['categoryId'] ?? 0;
    bookTitle = args?['bookTitle'] ?? '';

    // Load initial content after frame is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (categoryId > 0 && mounted) {
        context.read<SoundsBloc>().add(LoadCategoryContentEvent(
              categoryId: categoryId,
              page: 1,
              perPage: 6,
            ));
      }
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!mounted) return;
    
    if (_isBottom && !_isLoadingMore) {
      final bloc = context.read<SoundsBloc>();
      final state = bloc.state;

      // Check if we can load more
      if (state.hasNextPage &&
          !state.status.isLoading() &&
          !state.status.isLoadingMore() &&
          state.categoryContent.isNotEmpty) {
        
        setState(() {
          _isLoadingMore = true;
        });

        bloc.add(LoadCategoryContentEvent(
          categoryId: categoryId,
          page: state.currentPage + 1,
          perPage: 6,
        ));
      }
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.85);
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          SizedBox(height: 48,),
          // Content
          Expanded(
            child: BlocConsumer<SoundsBloc, SoundsState>(
              listener: (context, state) {
                // Reset loading flag when pagination completes
                if (_isLoadingMore && 
                    (state.status.isSuccess() || state.status.isFail())) {
                  setState(() {
                    _isLoadingMore = false;
                  });
                }
              },
              builder: (context, state) {
                if (state.status.isLoading() && state.categoryContent.isEmpty) {
                  return SimpleLottieHandler(
                    blocStatus: state.status,
                    successWidget: const SizedBox.shrink(),
                    loadingMessage: 'جاري تحميل الأصوات...',
                  );
                }

                if (state.status.isFail() && state.categoryContent.isEmpty) {
                  return SimpleLottieHandler(
                    blocStatus: state.status,
                    successWidget: const SizedBox.shrink(),
                    onRetry: () {
                      context.read<SoundsBloc>().add(LoadCategoryContentEvent(
                            categoryId: categoryId,
                            page: 1,
                            perPage: 6,
                          ));
                    },
                  );
                }

                if (state.categoryContent.isEmpty) {
                  return Center(
                    child: Text(
                      'لا توجد ملفات صوتية',
                      style: TextStyle(
                        fontSize: 16.f,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  );
                }

                return Column(
                  children: [
                    // Category title
                    if (state.categoryInfo != null)
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.p, vertical: 8.p),
                        child: Text(
                          state.categoryInfo!.title ?? bookTitle,
                          style: TextStyle(
                            fontSize: 18.f,
                            fontWeight: FontWeight.bold,
                            fontFamily: FontFamily.tajawal,
                            color: AppColors.textPrimary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    SizedBox(height: 12.h),
                    // Grid of sound cards
                    Expanded(
                      child: NotificationListener<ScrollNotification>(
                        onNotification: (ScrollNotification scrollInfo) {
                          // Additional safeguard
                          if (scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent * 0.85) {
                            _onScroll();
                          }
                          return false;
                        },
                        child: GridView.builder(
                          controller: _scrollController,
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          physics: const AlwaysScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.9,
                            crossAxisSpacing: 1.w,
                            mainAxisSpacing: 1.h,
                          ),
                          itemCount: state.categoryContent.length +
                              (_isLoadingMore || state.status.isLoadingMore() ? 2 : 0),
                          itemBuilder: (context, index) {
                            // Show loading indicator for pagination
                            if (index >= state.categoryContent.length) {
                              return Center(
                                child: Padding(
                                  padding: EdgeInsets.all(16.p),
                                  child: CircularProgressIndicator(
                                    color: AppColors.primary,
                                    strokeWidth: 2.w,
                                  ),
                                ),
                              );
                            }
                            final sound = state.categoryContent[index];
                            return SoundCard(
                              title: sound.title ?? '',
                              visitorCount: sound.visitor_count ?? '0',
                              date: sound.date ?? '',
                              soundFileUrl: sound.sound_file_url,
                              soundId: sound.id,
                              soundItem: sound,
                              categoryTitle: state.categoryInfo?.title ?? bookTitle,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }


}

