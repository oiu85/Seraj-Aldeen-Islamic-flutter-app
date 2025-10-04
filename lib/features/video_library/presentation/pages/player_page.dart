import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

import '../../../../gen/assets.gen.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.p),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Container(
                width: double.infinity,
                height: 342.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColors.extraLightGrey,
                    image: DecorationImage(
                        image: AssetImage(Assets.images.shaikImage.path))),
                child: Icon(
                  Icons.play_circle_outline,
                  size: 70,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  Assets.svg.document.path,
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "فيديو نعي الإمام الشيخ\n في التلفزيون السوري",
                  style: TextStyle(
                    fontSize: 16.f,
                    fontWeight: FontWeight.bold,
                    fontFamily: FontFamily.tajawal,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.share_outlined,
                  color: AppColors.primary,
                ),
                Text(
                  "555",
                  style: TextStyle(color: AppColors.grey),
                ),
                //TODO : this is the visitors count
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: 24,
                  color: AppColors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "30 دقيقة ",
                style: TextStyle(
                    fontSize: 18.f,
                    fontFamily: FontFamily.tajawal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "شاهد مواضيع أخرى: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.f,
                  fontFamily: FontFamily.tajawal,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 83.h,
              margin: EdgeInsets.only(bottom: 20.p, right: 10.p, left: 10.p),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 8,
                    spreadRadius: 0.3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    Assets.images.vedioIcon.path,
                    width: 40.w,
                    height: 40.w,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Center(
                  child: Text(
                    "فيديو خروج النعش المبارك",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.f,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                trailing: Container(
                  height: 40.w,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18.p,
                      color: AppColors.white,
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
