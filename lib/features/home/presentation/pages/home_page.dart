import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/shared/widgets/app_scaffold.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/main_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      bottomNavigationBar: CustomBottomNavBar(),
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(right: 16.w, left: 16.w,),
        child: ListView(
          children: [
            MainCard(),
            SizedBox(height: 20.h),
            Text(
              "أقسام التطبيق:",
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold,
                fontSize: 23.f,
              ),
            ),
            SizedBox(height: 10.h),
            buildListTile(
              title: "كتب الإمام",
              assetPath: Assets.svg.book.path,
              onTap: () {},
            ),
            buildListTile(
              title: "قوائد وفتاوى",
              assetPath: Assets.svg.paepar.path,
              onTap: () {},
            ),
            buildListTile(
              title: "الصوتيات",
              assetPath: Assets.svg.soundWave.path,
              onTap: () {},
            ),
            buildListTile(
              title: "الفيديوهات",
              assetPath: Assets.svg.book.path,
              onTap: () {},
            ),
            buildListTile(
              title: "معرض الصور",
              assetPath: Assets.svg.galery.path,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildListTile({
  required String title,
  required String assetPath,
  VoidCallback? onTap,
}) {
  return Container(
    height: 83.h,
    margin: EdgeInsets.only(bottom: 20.p, right: 10.p, left: 10.p),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.r),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          blurRadius: 8,
          spreadRadius: 0.3,
          offset: const Offset(0, 1),
        ),
      ],
    ),
    child: Center(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: SvgPicture.asset(
            assetPath,
            width: 40.w,
            height: 40.w,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.f,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Container(
          height: 40.w,
          width: 40.w,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Icon(
            Icons.arrow_forward_ios,
            size: 18.p,
            color: AppColors.white,
          ),
        ),
        onTap: onTap,
      ),
    ),
  );
}
