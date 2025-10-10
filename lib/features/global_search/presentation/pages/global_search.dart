import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/di/app_dependencies.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import 'package:seraj_aldean_flutter_app/features/home/presentation/pages/home_page.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../gen/assets.gen.dart';
import '../bloc/search_bloc.dart';
import '../bloc/search_event.dart';
import '../bloc/search_state.dart';
import '../widgets/search_result_card.dart';
import '../../data/models/search_model.dart';

class GlobalSearch extends StatefulWidget {
  const GlobalSearch({super.key});

  @override
  State<GlobalSearch> createState() => _GlobalSearchState();
}

class _GlobalSearchState extends State<GlobalSearch> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String value, SearchBloc bloc) {
    if (value.trim().length >= 2) {
      // Debounce: wait a bit before searching
      Future.delayed(Duration(milliseconds: 500), () {
        if (_searchController.text == value) {
          bloc.add(PerformSearchEvent(query: value));
        }
      });
    } else if (value.trim().isEmpty) {
      bloc.add(ClearSearchEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchBloc>(),
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          final bloc = context.read<SearchBloc>();
          
          return AppScaffold.clean(
            backgroundColor: AppColors.background,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar Header
                _buildSearchBar(context, bloc, state),
                
                // Search Results
                Expanded(
                  child: _buildBody(context, state),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context, SearchBloc bloc, SearchState state) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        children: [
          SizedBox(height: 48.h),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                    (route) => false,
                  );
                },
                icon: Icon(Icons.arrow_back_outlined, color: AppColors.black),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(60.r),
                    border: Border.all(
                      color: AppColors.primary,
                      width: 1.w,
                    ),
                  ),
                  child: SearchBar(
                    controller: _searchController,
                    hintText: "ابحث بكلمة عن ما تريد",
                    hintStyle: WidgetStateProperty.all(
                      TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 16.f,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    textStyle: WidgetStateProperty.all(
                      TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 16.f,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    leading: Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: Icon(
                        Icons.search,
                        color: AppColors.black,
                        size: 24.w,
                      ),
                    ),
                    trailing: [
                      if (_searchController.text.isNotEmpty)
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: IconButton(
                            icon: Container(
                              padding: EdgeInsets.all(4.w),
                              decoration: BoxDecoration(
                                color: AppColors.primary.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: Icon(
                                Icons.clear,
                                color: AppColors.primary,
                                size: 18.w,
                              ),
                            ),
                            onPressed: () {
                              _searchController.clear();
                              bloc.add(ClearSearchEvent());
                              setState(() {});
                            },
                          ),
                        ),
                    ],
                    backgroundColor: WidgetStateProperty.all(AppColors.cardBackground),
                    elevation: WidgetStateProperty.all(0),
                    side: WidgetStateProperty.all(BorderSide.none),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
                      _onSearchChanged(value, bloc);
                    },
                    onSubmitted: (value) {
                      if (value.trim().length >= 2) {
                        bloc.add(PerformSearchEvent(query: value));
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context, SearchState state) {
    // Loading state
    if (state.status.isLoading()) {
      return Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
      );
    }

    // Error state
    if (state.status.isFail()) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 64.f,
                color: Colors.red,
              ),
              SizedBox(height: 16.h),
              Text(
                'حدث خطأ أثناء البحث',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 18.f,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                state.errorMessage ?? '',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 14.f,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    // Success with results
    if (state.status.isSuccess() && state.hasAnyResults) {
      return _buildResults(context, state);
    }

    // Success but no results (searched but found nothing)
    if (state.status.isSuccess() && !state.hasAnyResults && state.currentQuery.isNotEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search_off,
                size: 80.f,
                color: AppColors.grey,
              ),
              SizedBox(height: 20.h),
              Text(
                'لا توجد نتائج',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 18.f,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'لم نجد أي نتائج لبحثك عن "${state.currentQuery}"',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 14.f,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    // Initial state - empty search
    return Center(
      child: Padding(
        padding: EdgeInsets.all(40.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.images.searchEmpty.path),
            SizedBox(height: 20.h),
            Text(
              "ابحث عن ما تريد",
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 16.f,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              "اكتب كلمة للبحث عنها",
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResults(BuildContext context, SearchState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Results summary
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Text(
                'وجدنا ${state.totalResults} نتيجة لبحثك عن "${state.currentQuery}"',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 14.f,
                  color: AppColors.grey,
                ),
              ),
            ).animate().fadeIn(duration: 300.ms),
            
            // Articles - use API label
            if (state.hasArticles) _buildCategorySection(
              context,
              state.searchResults!.articles!.label ?? 'المقالات',
              state.searchResults!.articles!,
              Icons.article,
              Colors.blue,
            ),
            
            // Books - use API label
            if (state.hasBooks) _buildCategorySection(
              context,
              state.searchResults!.books!.label ?? 'الكتب',
              state.searchResults!.books!,
              Icons.menu_book,
              Colors.purple,
            ),
            
            // Sounds - use API label
            if (state.hasSounds) _buildCategorySection(
              context,
              state.searchResults!.sounds!.label ?? 'الأصوات',
              state.searchResults!.sounds!,
              Icons.headset,
              Colors.green,
            ),
            
            // Videos - use API label
            if (state.hasVideos) _buildCategorySection(
              context,
              state.searchResults!.videos!.label ?? 'الفيديوهات',
              state.searchResults!.videos!,
              Icons.play_circle_outline,
              Colors.red,
            ),
            
            // Photo Galleries - use API label
            if (state.hasPhotoGalleries) _buildCategorySection(
              context,
              state.searchResults!.photo_galleries!.label ?? 'معارض الصور',
              state.searchResults!.photo_galleries!,
              Icons.photo_library,
              Colors.pink,
            ),
            
            // Pages (Biography) - use API label
            if (state.hasPages) _buildCategorySection(
              context,
             'السيرة الذاتية',
              state.searchResults!.pages!,
              Icons.person,
              Colors.orange,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategorySection(
    BuildContext context,
    String title,
    SearchCategory category,
    IconData icon,
    Color color,
  ) {
    final items = category.data ?? [];
    if (items.isEmpty) return SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Category Header
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  icon,
                  size: 20.f,
                  color: color,
                ),
              ),
              SizedBox(width: 12.w),
              Text(
                title,
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 18.f,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  '${category.count ?? 0}',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 14.f,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
        ).animate().fadeIn(duration: 400.ms).slideX(begin: -0.2, end: 0),
        
        // Category Items
        ...items.map((item) => SearchResultCard(
          item: item,
          onTap: () => _navigateToDetail(context, item),
        ).animate().fadeIn(duration: 400.ms, delay: 100.ms).slideY(begin: 0.1, end: 0)),
        
        SizedBox(height: 16.h),
      ],
    );
  }

  void _navigateToDetail(BuildContext context, SearchResultItem item) {
    // Navigation will be implemented later
    // For now, just show the item was clicked
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'تم اختيار: ${item.title ?? ""}',
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 14.f,
          ),
        ),
        backgroundColor: AppColors.primary,
        duration: Duration(seconds: 2),
      ),
    );
  }
}
