import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

import '../../../../gen/assets.gen.dart';
import '../widgets/book_card.dart';

// Book data model for sounds book page
class SoundBookData {
  final String title;
  final String viewCount;
  final String bookName;
  final String bookImagePath;
  final bool isSoundBook;
  final VoidCallback? onTap;

  SoundBookData({
    required this.title,
    required this.viewCount,
    required this.bookName,
    required this.bookImagePath,
    this.isSoundBook = false,
    this.onTap,
  });
}

class SoundsBookPage extends StatelessWidget {
  final String pageTitle;
  final List<SoundBookData> books;

  const SoundsBookPage({
    super.key,
    required this.pageTitle,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric( horizontal:  5.p),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h,),
            Text(
          "الكتب",
              style: TextStyle(
                fontSize: 24.f,
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            Expanded(
              child: _buildBooksGrid(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBooksGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:  5.p),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: 0.62, // Adjust based on your card height/width ratio
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return bookCardBuild(
            context: context,
            viewCont: book.viewCount,
            title: book.title,
            imageNamePath: Assets.images.serajName.path,
            // Default row image
            width: 10,
            height: 10.h,
            book: book.bookName,
            bookImagePath: book.bookImagePath,
            isSoundBook: book.isSoundBook,
            onTap: book.onTap,
          )
              .animate()
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
              );
        },
      ),
    );
  }
}

// Static data for different book categories
class SoundsBookData {
  static List<SoundBookData> getImamBooks() {
    return [
      SoundBookData(
        title: "فضيلة الشيخ",
        viewCount: "12",
        bookName: "كتاب الأهوال",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("كتاب الأهوال"),
      ),
      SoundBookData(
        title: "فضيلة الشيخ",
        viewCount: "8",
        bookName: "كتاب التفسير",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("كتاب التفسير"),
      ),
      SoundBookData(
        title: "فضيلة الشيخ",
        viewCount: "15",
        bookName: "كتاب الفقه",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("كتاب الفقه"),
      ),
      SoundBookData(
        title: "فضيلة الشيخ",
        viewCount: "20",
        bookName: "كتاب العقيدة",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("كتاب العقيدة"),
      ),
      SoundBookData(
        title: "فضيلة الشيخ",
        viewCount: "18",
        bookName: "كتاب الحديث",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("كتاب الحديث"),
      ),
      SoundBookData(
        title: "فضيلة الشيخ",
        viewCount: "25",
        bookName: "كتاب السيرة",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("كتاب السيرة"),
      ),
      SoundBookData(
        title: "فضيلة الشيخ",
        viewCount: "14",
        bookName: "كتاب الأخلاق",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("كتاب الأخلاق"),
      ),
      SoundBookData(
        title: "فضيلة الشيخ",
        viewCount: "22",
        bookName: "كتاب الدعوة",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("كتاب الدعوة"),
      ),
    ];
  }

  static List<SoundBookData> getSelectedResearch() {
    return [
      SoundBookData(
        title: "أبحاث مختارة",
        viewCount: "25",
        bookName: "بحث في العقيدة",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("بحث في العقيدة"),
      ),
      SoundBookData(
        title: "أبحاث مختارة",
        viewCount: "18",
        bookName: "بحث في التفسير",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("بحث في التفسير"),
      ),
      SoundBookData(
        title: "أبحاث مختارة",
        viewCount: "22",
        bookName: "بحث في الفقه",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("بحث في الفقه"),
      ),
      SoundBookData(
        title: "أبحاث مختارة",
        viewCount: "30",
        bookName: "بحث في الحديث",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("بحث في الحديث"),
      ),
      SoundBookData(
        title: "أبحاث مختارة",
        viewCount: "16",
        bookName: "بحث في السيرة",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("بحث في السيرة"),
      ),
      SoundBookData(
        title: "أبحاث مختارة",
        viewCount: "28",
        bookName: "بحث في الأخلاق",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("بحث في الأخلاق"),
      ),
    ];
  }

  static List<SoundBookData> getAudioBooks(Function(String) onNavigateToSounds) {
    return [
      SoundBookData(
        title: "كتب مسجلة",
        viewCount: "35",
        bookName: "تسجيل صوتي - الأهوال",
        bookImagePath: Assets.images.bookColored.path,
        isSoundBook: true,
        onTap: () => onNavigateToSounds("تسجيل صوتي - الأهوال"),
      ),
      SoundBookData(
        title: "كتب مسجلة",
        viewCount: "28",
        bookName: "تسجيل صوتي - التفسير",
        bookImagePath: Assets.images.bookColored.path,
        isSoundBook: true,
        onTap: () => onNavigateToSounds("تسجيل صوتي - التفسير"),
      ),
      SoundBookData(
        title: "كتب مسجلة",
        viewCount: "42",
        bookName: "تسجيل صوتي - الفقه",
        bookImagePath: Assets.images.bookColored.path,
        isSoundBook: true,
        onTap: () => onNavigateToSounds("تسجيل صوتي - الفقه"),
      ),
      SoundBookData(
        title: "كتب مسجلة",
        viewCount: "38",
        bookName: "تسجيل صوتي - العقيدة",
        bookImagePath: Assets.images.bookColored.path,
        isSoundBook: true,
        onTap: () => onNavigateToSounds("تسجيل صوتي - العقيدة"),
      ),
      SoundBookData(
        title: "كتب مسجلة",
        viewCount: "45",
        bookName: "تسجيل صوتي - الحديث",
        bookImagePath: Assets.images.bookColored.path,
        isSoundBook: true,
        onTap: () => onNavigateToSounds("تسجيل صوتي - الحديث"),
      ),
      SoundBookData(
        title: "كتب مسجلة",
        viewCount: "32",
        bookName: "تسجيل صوتي - السيرة",
        bookImagePath: Assets.images.bookColored.path,
        isSoundBook: true,
        onTap: () => onNavigateToSounds("تسجيل صوتي - السيرة"),
      ),
      SoundBookData(
        title: "كتب مسجلة",
        viewCount: "40",
        bookName: "تسجيل صوتي - الأخلاق",
        bookImagePath: Assets.images.bookColored.path,
        isSoundBook: true,
        onTap: () => onNavigateToSounds("تسجيل صوتي - الأخلاق"),
      ),
      SoundBookData(
        title: "كتب مسجلة",
        viewCount: "36",
        bookName: "تسجيل صوتي - الدعوة",
        bookImagePath: Assets.images.bookColored.path,
        isSoundBook: true,
        onTap: () => onNavigateToSounds("تسجيل صوتي - الدعوة"),
      ),
    ];
  }

  static List<SoundBookData> getBookIndexes() {
    return [
      SoundBookData(
        title: "فهارس المؤلفات",
        viewCount: "50",
        bookName: "فهرس الأهوال",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("فهرس الأهوال"),
      ),
      SoundBookData(
        title: "فهارس المؤلفات",
        viewCount: "38",
        bookName: "فهرس التفسير",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("فهرس التفسير"),
      ),
      SoundBookData(
        title: "فهارس المؤلفات",
        viewCount: "45",
        bookName: "فهرس الفقه",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("فهرس الفقه"),
      ),
      SoundBookData(
        title: "فهارس المؤلفات",
        viewCount: "42",
        bookName: "فهرس العقيدة",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("فهرس العقيدة"),
      ),
      SoundBookData(
        title: "فهارس المؤلفات",
        viewCount: "48",
        bookName: "فهرس الحديث",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("فهرس الحديث"),
      ),
      SoundBookData(
        title: "فهارس المؤلفات",
        viewCount: "35",
        bookName: "فهرس السيرة",
        bookImagePath: Assets.images.bookColored.path,
        onTap: () => _handleBookTap("فهرس السيرة"),
      ),
    ];
  }

  static void _handleBookTap(String bookName) {
    // This will be called when a book is tapped
    // For now, it's a placeholder - you can add navigation logic here
    // TODO: Implement proper navigation or callback
  }

}
