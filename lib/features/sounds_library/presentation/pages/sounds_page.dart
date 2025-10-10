import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/shared/widgets/decoration_app_bar.dart';
import '../../../../core/shared/widgets/ui_status_handling.dart';
import '../../../../gen/fonts.gen.dart';
import '../bloc/sounds_bloc.dart';
import '../bloc/sounds_event.dart';
import '../bloc/sounds_state.dart';
import '../widgets/desc_card.dart';
import '../widgets/row_section_card.dart';
import '../widgets/sound_card.dart';

class SoundsPage extends StatelessWidget {
  const SoundsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.instance<SoundsBloc>()..add(LoadSoundCategoriesEvent()),
      child: const _SoundsPageContent(),
    );
  }
}

class _SoundsPageContent extends StatefulWidget {
  const _SoundsPageContent();

  @override
  State<_SoundsPageContent> createState() => _SoundsPageContentState();
}

class _SoundsPageContentState extends State<_SoundsPageContent> {
  int selectedTabIndex = 0; // 0 for الصوتيات, 1 for الكتب الصوتية

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            DecorationAppBar(
              title: 'الصوتيات',
            ),
            SizedBox(
              height: 24.h,
            ),
            BlocBuilder<SoundsBloc, SoundsState>(
              builder: (context, state) {
                if (state.pageInfo != null) {
                  return DescCard(
                    title: state.pageInfo!.title ?? "كلمة حول دروس الشيخ",
                    content: _stripHtmlTags(state.pageInfo!.content ?? ""),
                    onMoreTap: () {
                      // TODO: Navigate to full page content
                    },
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.p),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => setState(() => selectedTabIndex = 0),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.p, vertical: 5.p),
                      margin:
                          EdgeInsets.symmetric(horizontal: 3.p, vertical: 3.p),
                      decoration: BoxDecoration(
                        color: selectedTabIndex == 0
                            ? AppColors.primary
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Text(
                        "الصوتيات",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.f,
                            fontFamily: FontFamily.tajawal,
                            color: selectedTabIndex == 0
                                ? AppColors.white
                                : Colors.grey[600]),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => selectedTabIndex = 1),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.p, vertical: 5.p),
                      margin:
                          EdgeInsets.symmetric(horizontal: 3.p, vertical: 3.p),
                      decoration: BoxDecoration(
                        color: selectedTabIndex == 1
                            ? AppColors.primary
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Text(
                        "الكتب الصوتية",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.f,
                            fontFamily: FontFamily.tajawal,
                            color: selectedTabIndex == 1
                                ? AppColors.white
                                : Colors.grey[600]),
                      ),
                    ),
                  ),
                ],
              )
                  .animate()
                  .fadeIn(
                    delay: 500.ms,
                    duration: 500.ms,
                    curve: Curves.easeOutCubic,
                  )
                  .slideY(
                    begin: 0.3,
                    end: 0,
                    delay: 500.ms,
                    duration: 500.ms,
                    curve: Curves.easeOutCubic,
                  )
                  .scale(
                    begin: const Offset(0.9, 0.9),
                    end: const Offset(1.0, 1.0),
                    duration: 400.ms,
                    delay: 500.ms,
                    curve: Curves.easeOutBack,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            // Conditional content based on selected tab
            if (selectedTabIndex == 0) ...[
              // Audio content (original sounds)
              Expanded(
                child: BlocBuilder<SoundsBloc, SoundsState>(
                  builder: (context, state) {
                    if (state.status.isLoading()) {
                      return SimpleLottieHandler(
                        blocStatus: state.status,
                        successWidget: const SizedBox.shrink(),
                        loadingMessage: 'جاري تحميل الصوتيات...',
                      );
                    }

                    if (state.status.isFail()) {
                      return SimpleLottieHandler(
                        blocStatus: state.status,
                        successWidget: const SizedBox.shrink(),
                        onRetry: () {
                          context
                              .read<SoundsBloc>()
                              .add(LoadSoundCategoriesEvent());
                        },
                      );
                    }

                    if (state.status.isSuccess() &&
                        state.categories.isNotEmpty) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            ...state.categories.asMap().entries.map((entry) {
                              final index = entry.key;
                              final category = entry.value;
                              final soundItems = category.data ?? [];

                              // Take only first 3 items for preview
                              final previewItems = soundItems.take(3).toList();

                              return Padding(
                                padding: EdgeInsets.only(bottom: 20.h),
                                child: RowSectionCard(
                                  title: category.title ?? "",
                                  onSeeAll: () {
                                    Get.toNamed(AppRoute.subSounds, arguments: {
                                      'categoryId': category.id,
                                      'categoryTitle': category.title,
                                      'soundItems': soundItems,
                                    });
                                  },
                                  sectionIndex: index,
                                  cards: [
                                    ...previewItems
                                        .asMap()
                                        .entries
                                        .map((itemEntry) {
                                      final item = itemEntry.value;
                                      return [
                                        SoundCard(
                                          title: item.title ?? "",
                                          visitorCount:
                                              item.visitor_count ?? "0",
                                          date: item.date ?? "",
                                          soundFileUrl: item.sound_file_url,
                                          soundId: item.id,
                                          soundItem: item,
                                          categoryTitle: category.title,
                                        ),
                                        if (itemEntry.key < previewItems.length - 1)
                                          SizedBox(width: 12.w),
                                      ];
                                    }).expand((element) => element),
                                  ],
                                ),
                              );
                            }),
                          ],
                        ),
                      );
                    }

                    return const Center(
                      child: Text('لا توجد بيانات'),
                    );
                  },
                ),
              ),
            ] else ...[
              // Audio Books content
              Expanded(
                child: _buildAudioBooksContent(),
              ),
            ],
          ],
        ));
  }

  Widget _buildAudioBooksContent() {
    // TODO: Implement audio books content from API
    return Center(
      child: Text(
        'الكتب الصوتية',
        style: TextStyle(
          fontSize: 18.f,
          fontFamily: FontFamily.tajawal,
        ),
      ),
    );
  }

  String _stripHtmlTags(String htmlString) {
    final RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return htmlString.replaceAll(exp, '').replaceAll('&nbsp;', ' ').trim();
  }
}
