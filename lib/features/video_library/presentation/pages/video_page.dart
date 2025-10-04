import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

import '../../../../core/shared/widgets/decoration_app_bar.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DecorationAppBar(
            title: 'الفيديوهات',
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.p, vertical: 10.p),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Text(
                  "وفاة الامام",
                  style: TextStyle(
                      fontSize: 12.f,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.tajawal),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
