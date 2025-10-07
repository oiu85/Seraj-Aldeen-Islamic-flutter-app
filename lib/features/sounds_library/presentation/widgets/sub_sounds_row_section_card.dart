import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SubSoundsRowSectionCard extends StatelessWidget {
  final String title;
  final VoidCallback onSeeAll;
  final List<Widget> cards;
  final int sectionIndex;

  const SubSoundsRowSectionCard({
    super.key,
    required this.title,
    required this.onSeeAll,
    required this.cards,
    this.sectionIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          // Row(
          //   children: [
          //     Text(
          //       title,
          //       style: TextStyle(
          //         fontFamily: FontFamily.tajawal,
          //         fontSize: 16.sp,
          //         fontWeight: FontWeight.bold,
          //         color: AppColors.black,
          //       ),
          //     )
          //         .animate()
          //         .fadeIn(
          //             duration: 600.ms, delay: (400 + sectionIndex * 200).ms)
          //         .slideX(
          //             begin: -0.3,
          //             end: 0,
          //             duration: 500.ms,
          //             delay: (400 + sectionIndex * 200).ms),
          //     const Spacer(),
          //     GestureDetector(
          //       onTap: onSeeAll,
          //       child: Text(
          //         "الكل",
          //         style: TextStyle(
          //           fontFamily: FontFamily.tajawal,
          //           fontSize: 14.sp,
          //           fontWeight: FontWeight.w600,
          //           color: AppColors.primary,
          //         ),
          //       ),
          //     )
          //         .animate()
          //         .fadeIn(
          //             duration: 600.ms, delay: (500 + sectionIndex * 200).ms)
          //         .slideX(
          //             begin: 0.3,
          //             end: 0,
          //             duration: 500.ms,
          //             delay: (500 + sectionIndex * 200).ms)
          //         .scale(
          //             begin: const Offset(0.8, 0.8),
          //             end: const Offset(1.0, 1.0),
          //             duration: 300.ms,
          //             delay: (600 + sectionIndex * 200).ms),
          //   ],
          // ),
          SizedBox(
            height: 180.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: cards.asMap().entries.map((entry) {
                final index = entry.key;
                final card = entry.value;

                return card
                    .animate()
                    .fadeIn(
                  duration: 500.ms,
                  delay: (600 + sectionIndex * 200 + index * 100).ms,
                  curve: Curves.easeOutCubic,
                )
                    .slideX(
                  begin: 0.4,
                  end: 0,
                  duration: 500.ms,
                  delay: (600 + sectionIndex * 200 + index * 100).ms,
                  curve: Curves.easeOutCubic,
                )
                    .scale(
                  begin: const Offset(0.9, 0.9),
                  end: const Offset(1.0, 1.0),
                  duration: 400.ms,
                  delay: (700 + sectionIndex * 200 + index * 100).ms,
                  curve: Curves.easeOutBack,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    )
        .animate()
        .fadeIn(
      duration: 800.ms,
      delay: (300 + sectionIndex * 200).ms,
      curve: Curves.easeOutCubic,
    )
        .slideY(
      begin: 0.2,
      end: 0,
      duration: 600.ms,
      delay: (300 + sectionIndex * 200).ms,
      curve: Curves.easeOutCubic,
    );
  }
}
