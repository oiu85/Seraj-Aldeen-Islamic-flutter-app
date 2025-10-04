import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../widgets/desc_card.dart';
import '../widgets/row_section_card.dart';
import '../widgets/sound_card.dart';

class SoundsPage extends StatelessWidget {
  const SoundsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      Assets.images.appbarImageRight.path,
                      width: 90,
                    )
                        .animate()
                        .fadeIn(duration: 800.ms, delay: 200.ms)
                        .slideX(begin: -0.5, end: 0, duration: 600.ms, delay: 200.ms)
                        .scale(begin: const Offset(0.8, 0.8), end: const Offset(1.0, 1.0), duration: 500.ms, delay: 300.ms),
                    Text("الصوتيات",
                        style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 20.f,
                            fontWeight: FontWeight.bold))
                        .animate()
                        .fadeIn(duration: 1000.ms, delay: 400.ms)
                        .scale(begin: const Offset(0.7, 0.7), end: const Offset(1.0, 1.0), duration: 700.ms, delay: 400.ms)
                        .shimmer(duration: 2000.ms, delay: 1000.ms, color: AppColors.primary.withOpacity(0.3)),
                    Image.asset(
                      Assets.images.appbarImageLeft.path,
                      width: 90,
                    )
                        .animate()
                        .fadeIn(duration: 800.ms, delay: 200.ms)
                        .slideX(begin: 0.5, end: 0, duration: 600.ms, delay: 200.ms)
                        .scale(begin: const Offset(0.8, 0.8), end: const Offset(1.0, 1.0), duration: 500.ms, delay: 300.ms),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              DescCard(),
              SizedBox(
                height: 20.h,
              ),
              RowSectionCard(
                title: "دروس عام 1405هـ من محرم فما بعده",
                onSeeAll: () {
                  Get.toNamed(AppRoute.subSounds);
                },
                sectionIndex: 0,
                cards: [
                  SoundCard(
                    title: "خطبة الجمعة",
                    visitorCount: "120",
                    date: "2025-10-01",
                  ),
                  SizedBox(width: 12.w),
                  SoundCard(
                    title: "دروس التفسير",
                    visitorCount: "250",
                    date: "2025-09-28",
                  ),
                  SizedBox(width: 12.w),
                  SoundCard(
                    title: "محاضرة العقيدة",
                    visitorCount: "90",
                    date: "2025-09-15",
                  ),
                ],
              ),
          
              SizedBox(height: 20.h,),

              RowSectionCard(
                title: "دروس عام 1406هـ من محرم فما بعده",
                onSeeAll: () {},
                sectionIndex: 1,
                cards: [
                  SoundCard(
                    title: "خطبة الجمعة",
                    visitorCount: "120",
                    date: "2025-10-01",
                  ),
                  SizedBox(width: 12.w),
                  SoundCard(
                    title: "دروس التفسير",
                    visitorCount: "250",
                    date: "2025-09-28",
                  ),
                  SizedBox(width: 12.w),
                  SoundCard(
                    title: "محاضرة العقيدة",
                    visitorCount: "90",
                    date: "2025-09-15",
                  ),
                ],
              ),

              RowSectionCard(
                title: "دروس عام 1407هـ من محرم فما بعده",
                onSeeAll: () {},
                sectionIndex: 2,
                cards: [
                  SoundCard(
                    title: "خطبة الجمعة",
                    visitorCount: "120",
                    date: "2025-10-01",
                  ),
                  SizedBox(width: 12.w),
                  SoundCard(
                    title: "دروس التفسير",
                    visitorCount: "250",
                    date: "2025-09-28",
                  ),
                  SizedBox(width: 12.w),
                  SoundCard(
                    title: "محاضرة العقيدة",
                    visitorCount: "90",
                    date: "2025-09-15",
                  ),
                ],
              ),
          
          
            ],
          ),
        ));
  }
}



