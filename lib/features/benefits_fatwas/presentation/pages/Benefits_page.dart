import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../widgets/ftawa_card.dart';

class BenefitsPage extends StatelessWidget {
  const BenefitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 20.p, left: 20.p, top: 40.p),
          child: Column(children: [
            // Animated header section
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    Assets.images.appbarImageRight.path,
                    width: 90,
                  ).animate()
                    .fadeIn(duration: 600.ms, delay: 200.ms)
                    .slideX(begin: -0.3, end: 0, duration: 600.ms, delay: 200.ms),
                  Text("فوائد وفتاوى",
                      style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 20.f,
                          fontWeight: FontWeight.bold))
                    .animate()
                    .fadeIn(duration: 800.ms, delay: 400.ms)
                    .scale(begin: const Offset(0.8, 0.8), end: const Offset(1.0, 1.0), duration: 600.ms, delay: 400.ms),
                  Image.asset(
                    Assets.images.appbarImageLeft.path,
                    width: 90,
                  ).animate()
                    .fadeIn(duration: 600.ms, delay: 200.ms)
                    .slideX(begin: 0.3, end: 0, duration: 600.ms, delay: 200.ms),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
        
            // Animated content rows
            _buildTheRow(0),
            _buildTheRow(1),
            _buildTheRow(2),
        
          ]),
        ),
      ),
    );
  }
}


Widget _buildTheRow(int rowIndex) {
  // Different titles for each row
  final List<String> titles = [
    "مايتعلق بايات القران الكريم",
    "الفتاوى الشرعية",
    "المواعظ والارشادات"
  ];
  
  return Column(
    children: [
      // Animated section header
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titles[rowIndex % titles.length],
            style: TextStyle(
              fontSize: 18.f,
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.tajawal,
            ),
          ).animate()
            .fadeIn(duration: 600.ms, delay: (200 + rowIndex * 200).ms)
            .slideX(begin: -0.2, end: 0, duration: 600.ms, delay: (200 + rowIndex * 200).ms),
          Text(
            "الكل",
            style: TextStyle(
              fontSize: 18.f,
              fontFamily: FontFamily.tajawal,
              fontWeight: FontWeight.bold,
            ),
          ).animate()
            .fadeIn(duration: 600.ms, delay: (300 + rowIndex * 200).ms)
            .slideX(begin: 0.2, end: 0, duration: 600.ms, delay: (300 + rowIndex * 200).ms),
        ],
      ),
      SizedBox(
        height: 20.h,
      ),
      // Animated horizontal list
      SizedBox(
        height: 240.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              width: 180.w,
              margin: EdgeInsets.only(right: index < 2 ? 12.w : 0),
              child: lessonCardBuild(
                lesson: 'من هو الذبيح',
                viewCont: '12',
                title: 'فضيلة الشيخ',
                imageNamePath: Assets.images.serajName.path,
                width: 50.w,
                height: 50.h,
                context: context,
              ).animate()
                .fadeIn(
                  duration: 500.ms, 
                  delay: (400 + rowIndex * 200 + index * 100).ms,
                  curve: Curves.easeOutCubic,
                )
                .slideX(
                  begin: 0.3, 
                  end: 0, 
                  duration: 500.ms, 
                  delay: (400 + rowIndex * 200 + index * 100).ms,
                  curve: Curves.easeOutCubic,
                )
                .scale(
                  begin: const Offset(0.9, 0.9), 
                  end: const Offset(1.0, 1.0), 
                  duration: 400.ms, 
                  delay: (500 + rowIndex * 200 + index * 100).ms,
                  curve: Curves.easeOutBack,
                ),
            );
          },
        ),
      ),
      SizedBox(height: 20.h,),
    ],
  ).animate()
    .fadeIn(
      duration: 800.ms, 
      delay: (100 + rowIndex * 200).ms,
      curve: Curves.easeOutCubic,
    )
    .slideY(
      begin: 0.2, 
      end: 0, 
      duration: 600.ms, 
      delay: (100 + rowIndex * 200).ms,
      curve: Curves.easeOutCubic,
    );
}