import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../core/shared/widgets/decoration_app_bar.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../widgets/desc_card.dart';
import '../widgets/row_section_card.dart';
import '../widgets/sound_card.dart';
import '../../../books_library/presentation/pages/sounds_book_page.dart';
import '../../../books_library/presentation/pages/sounds_now_page.dart';
import '../../../books_library/presentation/widgets/book_card.dart';

class SoundsPage extends StatefulWidget {
  const SoundsPage({super.key});

  @override
  State<SoundsPage> createState() => _SoundsPageState();
}

class _SoundsPageState extends State<SoundsPage> {
  int selectedTabIndex = 0; // 0 for الصوتيات, 1 for الكتب الصوتية

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
        backgroundColor: Colors.white,
        body: Column(
          children: [
              DecorationAppBar(title: 'الصوتيات',),
              SizedBox(
                height: 24.h,
              ),
              DescCard(),
            SizedBox(height: 16.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0.p),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => setState(() => selectedTabIndex = 0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 7.p , vertical: 5.p),
                      margin: EdgeInsets.symmetric(horizontal: 3.p , vertical: 3 . p),
                      decoration: BoxDecoration(
                        color: selectedTabIndex == 0 ? AppColors.primary : Colors.grey[300],
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Text("الصوتيات", style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 16.f , fontFamily: FontFamily.tajawal ,  color: selectedTabIndex == 0 ? Colors.white : Colors.grey[600]),),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => selectedTabIndex = 1),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 7.p , vertical: 5.p),
                      margin: EdgeInsets.symmetric(horizontal: 3.p , vertical: 3 . p),
                      decoration: BoxDecoration(
                        color: selectedTabIndex == 1 ? AppColors.primary : Colors.grey[300],
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Text("الكتب الصوتية", style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 16.f , fontFamily: FontFamily.tajawal ,  color: selectedTabIndex == 1 ? Colors.white : Colors.grey[600]),),
                    ),
                  ),
                ],
              ).animate()
                  .fadeIn(
                delay: 500.ms,
                duration: 500.ms,
                curve: Curves.easeOutCubic,
              )
                  .slideY(
                begin: 0.3,
                end: 0,
                delay: 500.ms,
                duration: 500.ms,
                curve: Curves.easeOutCubic,
              )
                  .scale(
                begin: const Offset(0.9, 0.9),
                end: const Offset(1.0, 1.0),
                duration: 400.ms,
                delay: 500.ms,
                curve: Curves.easeOutBack,
              ),
            ),
              SizedBox(
                height: 20.h,
              ),
              // Conditional content based on selected tab
              if (selectedTabIndex == 0) ...[
                // Audio content (original sounds)
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
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
                    SizedBox(width: 10.w),
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
                  ),
                ),
              ] else ...[
                // Audio Books content
                Expanded(
                  child: _buildAudioBooksContent(),
                ),
              ],
          ],
        ));
  }

  Widget _buildAudioBooksContent() {
    final audioBooks = SoundsBookData.getAudioBooks((bookTitle) => _navigateToSoundsNowPage(bookTitle));
    
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.p),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 5.w,
          mainAxisSpacing: 15.h,
          childAspectRatio: 0.60, // Adjust based on book card dimensions
        ),
        itemCount: audioBooks.length,
        itemBuilder: (context, index) {
          final book = audioBooks[index];
          return Container(
            child: bookCardBuild(
              context: context,
              viewCont: book.viewCount,
              title: book.title,
              imageNamePath: Assets.images.serajName.path,
              width: double.infinity,
              height: 280.h,
              book: book.bookName,
              bookImagePath: book.bookImagePath,
              isSoundBook: book.isSoundBook,
              onTap: book.onTap,
            ).animate()
                .fadeIn(
              duration: 500.ms,
              delay: (index * 100).ms,
              curve: Curves.easeOutCubic,
            )
                .slideY(
              begin: 0.3,
              end: 0,
              duration: 500.ms,
              delay: (index * 100).ms,
              curve: Curves.easeOutCubic,
            )
                .scale(
              begin: const Offset(0.9, 0.9),
              end: const Offset(1.0, 1.0),
              duration: 400.ms,
              delay: (index * 100 + 100).ms,
              curve: Curves.easeOutBack,
            ),
          );
        },
      ),
    );
  }

  void _navigateToSoundsNowPage(String bookTitle) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SoundsNowPage(
          bookTitle: bookTitle,
          sounds: _getSoundsForBook(bookTitle),
        ),
      ),
    );
  }

  List<BookSoundData> _getSoundsForBook(String bookTitle) {
    switch (bookTitle) {
      case "تسجيل صوتي - الأهوال":
        return BookSoundsData.getAhwalSounds();
      case "تسجيل صوتي - التفسير":
        return BookSoundsData.getTafseerSounds();
      case "تسجيل صوتي - الفقه":
        return BookSoundsData.getFiqhSounds();
      default:
        return BookSoundsData.getAhwalSounds(); // Default fallback
    }
  }
}



