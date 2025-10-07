import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import 'package:seraj_aldean_flutter_app/features/home/presentation/pages/home_page.dart';

import '../../../../gen/assets.gen.dart';

class GlobalSearch extends StatefulWidget {
  const GlobalSearch({super.key});

  @override
  State<GlobalSearch> createState() => _GlobalSearchState();
}

class _GlobalSearchState extends State<GlobalSearch> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                      (route) => false,
                    );
                  },
                  icon: Icon(Icons.arrow_back_outlined),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.r),
                      border: Border.all(
                        color: AppColors.primary,
                        width: 1.w,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: SearchBar(
                      controller: _searchController,
                      hintText: "ابحث بكلمة عن ما تريد",
                      hintStyle: WidgetStateProperty.all(
                        TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 16.f,
                          color: Colors.grey[500],
                        ),
                      ),
                      textStyle: WidgetStateProperty.all(
                        TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 16.f,
                          color: Colors.black87,
                        ),
                      ),
                      leading: Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Icon(
                          Icons.search,
                          color: AppColors.grey,
                          size: 24.w,
                        ),
                      ),
                      trailing: [
                        if (_searchController.text.isNotEmpty)
                          Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: IconButton(
                              icon: Container(
                                padding: EdgeInsets.all(4.w),
                                decoration: BoxDecoration(
                                  color: AppColors.primary.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                child: Icon(
                                  Icons.clear,
                                  color: AppColors.primary,
                                  size: 18.w,
                                ),
                              ),
                              onPressed: () {
                                _searchController.clear();
                                setState(() {});
                              },
                            ),
                          ),
                      ],
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      elevation: WidgetStateProperty.all(0),
                      side: WidgetStateProperty.all(BorderSide.none),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                      ),

                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Image.asset(Assets.images.searchEmpty.path),
                    SizedBox(height: 20.h),
                    Text(
                      "لايوجد محتويات لعرضها",
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 16.f,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
