import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

import '../../../../core/shared/widgets/decoration_app_bar.dart';
import '../widgets/main_category_section.dart';
import '../widgets/vedio_card.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {

    final videos = [
      'الدرس الأول',
      'الدرس الثاني',
      'الدرس الثالث',
      'الدرس الرابع',
      'الدرس الخامس',
      'الدرس السادس',
    ];

    return AppScaffold.clean(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          /// AppBar مزخرف
          SliverToBoxAdapter(
            child: Column(
              children: [
                DecorationAppBar(title: 'الفيديوهات'),
                SizedBox(height: 30.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: MainCategorySection(),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),

          /// Grid لبطاقات الفيديو
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // عدد الأعمدة
                crossAxisSpacing: 0.w, // المسافة الأفقية بين العناصر
                mainAxisSpacing: 0.h, // المسافة العمودية
                childAspectRatio: 1, // النسبة بين العرض والارتفاع
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return VideoCard(title: videos[index], onTap: (){
                    Get.toNamed(AppRoute.player);
                  }, );
                },
                childCount: videos.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
