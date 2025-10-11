import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/gen/assets.gen.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

/// About App Page - Information about Sheikh Abdullah Seraj Aldeen
class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      body: CustomScrollView(
        slivers: [
          // App Bar with Sheikh's Name
          SliverAppBar(
            expandedHeight: 230.h,
            floating: false,
            pinned: true,
            backgroundColor: AppColors.primary,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20.f,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'حول التطبيق',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 24.f,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.primary,
                      AppColors.primary.withValues(alpha: 0.8),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    // Decorative Pattern
                    Positioned.fill(
                      child: Opacity(
                        opacity: 0.1,
                        child: Image.asset(
                          Assets.images.appbarImageLeft.path,
                          fit: BoxFit.cover,
                          width: 100,
                        ),
                      ),
                    ),
                    // Sheikh Image
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: Image.asset(
                            Assets.images.abdullahSerajAldeen.path,
                            height: 140.h,
                            width: 200.w,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sheikh's Name Card
                  _buildSheikhNameCard()
                      .animate()
                      .fadeIn(duration: 600.ms, delay: 200.ms)
                      .slideY(begin: 0.2, end: 0, duration: 500.ms, delay: 200.ms),

                  SizedBox(height: 20.h),

                  // About Sheikh Section
                  _buildSectionTitle('عن الشيخ')
                      .animate()
                      .fadeIn(duration: 500.ms, delay: 400.ms)
                      .slideX(begin: -0.2, end: 0, duration: 500.ms, delay: 400.ms),

                  SizedBox(height: 12.h),

                  _buildContentCard(
                    icon: Icons.person,
                    content:
                        'فضيلة الإمام الشيخ عبدالله سراج الدين الحسيني، رحمه الله ورضي عنه، من أبرز علماء الأمة الإسلامية في العصر الحديث. كان عالماً جليلاً وفقيهاً مجتهداً، اشتهر بعلمه الغزير وورعه وتقواه.',
                  ).animate()
                      .fadeIn(duration: 600.ms, delay: 500.ms)
                      .slideY(begin: 0.2, end: 0, duration: 500.ms, delay: 500.ms),

                  SizedBox(height: 20.h),

                  // About App Section
                  _buildSectionTitle('عن التطبيق')
                      .animate()
                      .fadeIn(duration: 500.ms, delay: 600.ms)
                      .slideX(begin: -0.2, end: 0, duration: 500.ms, delay: 600.ms),

                  SizedBox(height: 12.h),

                  _buildContentCard(
                    icon: Icons.phone_android,
                    content:
                        'تطبيق الشيخ عبدالله سراج الدين هو منصة شاملة تهدف إلى نشر علم وتراث الشيخ، رحمه الله، وإتاحة الوصول إلى كتبه وفتاواه ومحاضراته الصوتية والمرئية لجميع المسلمين في أنحاء العالم.',
                  ).animate()
                      .fadeIn(duration: 600.ms, delay: 700.ms)
                      .slideY(begin: 0.2, end: 0, duration: 500.ms, delay: 700.ms),

                  SizedBox(height: 20.h),

                  // App Features Section
                  _buildSectionTitle('مميزات التطبيق')
                      .animate()
                      .fadeIn(duration: 500.ms, delay: 800.ms)
                      .slideX(begin: -0.2, end: 0, duration: 500.ms, delay: 800.ms),

                  SizedBox(height: 12.h),

                  _buildFeaturesList().animate()
                      .fadeIn(duration: 600.ms, delay: 900.ms)
                      .slideY(begin: 0.2, end: 0, duration: 500.ms, delay: 900.ms),

                  SizedBox(height: 20.h),

                  // Purpose Section
                  _buildSectionTitle('رسالة التطبيق')
                      .animate()
                      .fadeIn(duration: 500.ms, delay: 1000.ms)
                      .slideX(begin: -0.2, end: 0, duration: 500.ms, delay: 1000.ms),

                  SizedBox(height: 12.h),

                  _buildContentCard(
                    icon: Icons.menu_book,
                    content:
                        'يسعى هذا التطبيق إلى حفظ التراث العلمي للشيخ عبدالله سراج الدين وتقديمه للأجيال القادمة بطريقة عصرية وميسرة، ليستفيد منه طلاب العلم والباحثون والمهتمون بالعلوم الشرعية.',
                  ).animate()
                      .fadeIn(duration: 600.ms, delay: 1100.ms)
                      .slideY(begin: 0.2, end: 0, duration: 500.ms, delay: 1100.ms),

                  SizedBox(height: 20.h),

                  // Dua Section
                  _buildDuaCard()
                      .animate()
                      .fadeIn(duration: 600.ms, delay: 1200.ms)
                      .scale(begin: const Offset(0.9, 0.9), end: const Offset(1.0, 1.0), duration: 500.ms, delay: 1200.ms),

                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSheikhNameCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primary.withValues(alpha: 0.1),
            AppColors.primary.withValues(alpha: 0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Text(
            'فضيلة الإمام الشيخ',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 16.f,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            'عبدالله سراج الدين الحسيني',
            style: TextStyle(
              fontFamily: FontFamily.amiri,
              fontSize: 24.f,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            'رحمه الله ورضي عنه',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.f,
              color: AppColors.textSecondary,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      children: [
        Container(
          width: 4.w,
          height: 24.h,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(2.r),
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          title,
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 20.f,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildContentCard({
    required IconData icon,
    required String content,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(
              icon,
              color: AppColors.primary,
              size: 24.f,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              content,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 15.f,
                color: AppColors.textPrimary,
                height: 1.8,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesList() {
    final features = [
      {'icon': Icons.book, 'text': 'كُتُب الإمام ومؤلفاته القيمة'},
      {'icon': Icons.article, 'text': 'فوائد وفتاوى شرعية'},
      {'icon': Icons.headphones, 'text': 'مكتبة صوتية شاملة'},
      {'icon': Icons.video_library, 'text': 'محاضرات ودروس مرئية'},
      {'icon': Icons.photo_library, 'text': 'معرض صور توثيقي'},
      {'icon': Icons.search, 'text': 'بحث شامل في المحتوى'},
    ];

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: features.map((feature) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    feature['icon'] as IconData,
                    color: AppColors.primary,
                    size: 20.f,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    feature['text'] as String,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 14.f,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: AppColors.primary,
                  size: 18.f,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildDuaCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.primary.withValues(alpha: 0.15),
            AppColors.primary.withValues(alpha: 0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.3),
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.auto_awesome,
            color: AppColors.primary,
            size: 32.f,
          ),
          SizedBox(height: 12.h),
          Text(
            'رَحِمَهُ اللهُ رَحْمَةً وَاسِعَةً',
            style: TextStyle(
              fontFamily: FontFamily.amiri,
              fontSize: 22.f,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
              height: 1.8,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            'وَأَسْكَنَهُ فَسِيحَ جَنَّاتِهِ',
            style: TextStyle(
              fontFamily: FontFamily.amiri,
              fontSize: 20.f,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
              height: 1.8,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            'وَجَزَاهُ عَنَّا وَعَنِ الْمُسْلِمِينَ خَيْرَ الْجَزَاءِ',
            style: TextStyle(
              fontFamily: FontFamily.amiri,
              fontSize: 18.f,
              color: AppColors.textPrimary,
              height: 1.8,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

