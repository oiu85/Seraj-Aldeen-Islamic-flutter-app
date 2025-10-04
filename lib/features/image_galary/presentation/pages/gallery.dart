import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/decoration_app_bar.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import '../../../../gen/assets.gen.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: DecorationAppBar(title: "معرض الصور"),
          ),

          _buildSection("المدرسة الشعبانية"),
          _buildGrid(),
          _buildSection("نشاطات الطلاب"),
          _buildGrid(),
          _buildSection("المعارض والفعاليات"),
          _buildGrid(),
          _buildSection("الاحتفالات والمناسبات"),
          _buildGrid(),

          SliverToBoxAdapter(child: SizedBox(height: 50.h)),
        ],
      ),
    );
  }

  Widget _buildSection(String title) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Row(
          children: [
            Text(
              "$title:",
              style: TextStyle(
                fontSize: 16.f,
                fontWeight: FontWeight.bold,
                fontFamily: FontFamily.tajawal,
              ),
            ),
            const Spacer(),
            Text(
              "الكل",
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 16.f,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverPadding _buildGrid() {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      sliver: SliverGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5.w,
        childAspectRatio: 1,
        children: List.generate(2, (index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.asset(
              Assets.images.school.path,
              fit: BoxFit.cover,
            ),
          );
        }),
      ),
    );
  }
}
