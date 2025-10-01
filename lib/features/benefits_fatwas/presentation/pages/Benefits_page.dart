import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';

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
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    Assets.images.appbarImageRight.path,
                    width: 90,
                  ),
                  Text("فوائد وفتاوى",
                      style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 20.f,
                          fontWeight: FontWeight.bold)),
                  Image.asset(
                    Assets.images.appbarImageLeft.path,
                    width: 90,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
        
        
        
        
            _buildTheRow(),
            _buildTheRow(),
            _buildTheRow(),
        
          ]),
        ),
      ),
    );
  }
}


Widget _buildTheRow(){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "مايتعلق بايات القران الكريم",
            style: TextStyle(
              fontSize: 18.f,
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.tajawal,
            ),
          ),
          Text(
            "الكل",
            style: TextStyle(
              fontSize: 18.f,
              fontFamily: FontFamily.tajawal,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      SizedBox(
        height: 20.h,
      ),
      SizedBox(
        height: 240.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              width: 180.w,
              child: lessonCardBuild(
                lesson: 'من هو الذبيح',
                viewCont: '12',
                title: 'فضيلة الشيخ',
                imageNamePath: Assets.images.serajName.path,
                width: 50.w,
                height: 50.h,
                context: context,
              ),
            );
          },
        ),
      ),
      SizedBox(height: 20.h,),
    ],
  );
}