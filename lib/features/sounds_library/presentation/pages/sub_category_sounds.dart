import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/features/sounds_library/presentation/widgets/desc_card.dart';

import '../widgets/row_section_card.dart';
import '../widgets/sound_card.dart';
import '../widgets/sub_desc_card.dart';
import '../widgets/sub_sounds_row_section_card.dart';

class SubCategorySounds extends StatelessWidget {
  const SubCategorySounds({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40.h,),
          SubDescCard(),
          SizedBox(height: 40.h,),
          Container(
            child: Column(
              children: [
                SubSoundsRowSectionCard(
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
                SubSoundsRowSectionCard(
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
                SubSoundsRowSectionCard(
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
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
