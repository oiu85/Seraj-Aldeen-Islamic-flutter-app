import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/decoration_app_bar.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../widgets/book_card.dart';
import '../widgets/book_desc_card.dart';
import 'sounds_book_page.dart';
import 'sounds_now_page.dart';

// Static book data model
class BookData {
  final String title;
  final String viewCount;
  final String bookName;
  final String bookImagePath;
  final bool isSoundBook;
  final VoidCallback? onTap;

  BookData({
    required this.title,
    required this.viewCount,
    required this.bookName,
    required this.bookImagePath,
    this.isSoundBook = false,
    this.onTap,
  });
}

// Row data model
class RowData {
  final String title;
  final String imagePath;
  final List<BookData> books;
  final VoidCallback? onViewAllTap;

  RowData({
    required this.title,
    required this.imagePath,
    required this.books,
    this.onViewAllTap,
  });
}

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Static data for testing
    final List<RowData> rowsData = [
      RowData(
        title: "كُتُب الإمام بصيغ متعددة",
        imagePath: Assets.images.serajName.path,
        books: [
          BookData(
            title: "فضيلة الشيخ",
            viewCount: "12",
            bookName: "كتاب الأهوال",
            bookImagePath: Assets.images.bookCard.path,
            onTap: () => _handleBookTap(context, "كتاب الأهوال"),
          ),
          BookData(
            title: "فضيلة الشيخ",
            viewCount: "8",
            bookName: "كتاب التفسير",
            bookImagePath: Assets.images.bookCard.path,
            onTap: () => _handleBookTap(context, "كتاب التفسير"),
          ),
          BookData(
            title: "فضيلة الشيخ",
            viewCount: "15",
            bookName: "كتاب الفقه",
            bookImagePath: Assets.images.bookCard.path,
            onTap: () => _handleBookTap(context, "كتاب الفقه"),
          ),
        ],
        onViewAllTap: () => _navigateToSoundsBookPage(
          context,
          "كُتُب الإمام بصيغ متعددة",
          SoundsBookData.getImamBooks(),
        ),
      ),
      RowData(
        title: "تحميل أبحاث مختارة من كتب الإمام",
        imagePath: Assets.images.bookCard.path,
        books: [
          BookData(
            title: "أبحاث مختارة",
            viewCount: "25",
            bookName: "بحث في العقيدة",
            bookImagePath: Assets.images.bookCard.path,
            onTap: () => _handleBookTap(context, "بحث في العقيدة"),
          ),
          BookData(
            title: "أبحاث مختارة",
            viewCount: "18",
            bookName: "بحث في التفسير",
            bookImagePath: Assets.images.bookCard.path,
            onTap: () => _handleBookTap(context, "بحث في التفسير"),
          ),
          BookData(
            title: "أبحاث مختارة",
            viewCount: "22",
            bookName: "بحث في الفقه",
            bookImagePath: Assets.images.bookCard.path,
            onTap: () => _handleBookTap(context, "بحث في الفقه"),
          ),
        ],
        onViewAllTap: () => _navigateToSoundsBookPage(
          context,
          "تحميل أبحاث مختارة من كتب الإمام",
          SoundsBookData.getSelectedResearch(),
        ),
      ),
      RowData(
        title: "الاستماع إلى بعض الكتب المسجلة",
        imagePath: Assets.images.bookColored.path,
        books: [
          BookData(
            title: "كتب مسجلة",
            viewCount: "35",
            bookName: "تسجيل صوتي - الأهوال",
            bookImagePath: Assets.images.bookColored.path,
            isSoundBook: true,
            onTap: () => _navigateToSoundsNowPage(context, "تسجيل صوتي - الأهوال"),
          ),
          BookData(
            title: "كتب مسجلة",
            viewCount: "28",
            bookName: "تسجيل صوتي - التفسير",
            bookImagePath: Assets.images.bookColored.path,
            isSoundBook: true,
            onTap: () => _navigateToSoundsNowPage(context, "تسجيل صوتي - التفسير"),
          ),
          BookData(
            title: "كتب مسجلة",
            viewCount: "42",
            bookName: "تسجيل صوتي - الفقه",
            bookImagePath: Assets.images.bookColored.path,
            isSoundBook: true,
            onTap: () => _navigateToSoundsNowPage(context, "تسجيل صوتي - الفقه"),
          ),
        ],
        onViewAllTap: () => _navigateToSoundsBookPage(
          context,
          "الاستماع إلى بعض الكتب المسجلة",
          SoundsBookData.getAudioBooks((bookTitle) => _navigateToSoundsNowPage(context, bookTitle)),
        ),
      ),
      RowData(
        title: "تحميل فهارس المؤلفات",
        imagePath: Assets.images.bookColored.path,
        books: [
          BookData(
            title: "فهارس المؤلفات",
            viewCount: "50",
            bookName: "فهرس الأهوال",
            bookImagePath: Assets.images.bookColored.path,
            onTap: () => _handleBookTap(context, "فهرس الأهوال"),
          ),
          BookData(
            title: "فهارس المؤلفات",
            viewCount: "38",
            bookName: "فهرس التفسير",
            bookImagePath: Assets.images.bookColored.path,
            onTap: () => _handleBookTap(context, "فهرس التفسير"),
          ),
          BookData(
            title: "فهارس المؤلفات",
            viewCount: "45",
            bookName: "فهرس الفقه",
            bookImagePath: Assets.images.bookColored.path,
            onTap: () => _handleBookTap(context, "فهرس الفقه"),
          ),
        ],
        onViewAllTap: () => _navigateToSoundsBookPage(
          context,
          "تحميل فهارس المؤلفات",
          SoundsBookData.getBookIndexes(),
        ),
      ),
    ];

    return AppScaffold.clean(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            DecorationAppBar(title: "كتب الإمام"),
            BookDescCard(),
            ...rowsData.asMap().entries.map((entry) {
              return _buildTheRow(
                context: context,
                rowIndex: entry.key,
                rowData: entry.value,
              );
            }),
          ],
        ),
      ),
    );
  }

  // Static tap handlers for testing
  void _handleBookTap(BuildContext context, String bookName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('تم النقر على: $bookName'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _navigateToSoundsBookPage(BuildContext context, String title, List<SoundBookData> books) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SoundsBookPage(
          pageTitle: title,
          books: books,
        ),
      ),
    );
  }

  void _navigateToSoundsNowPage(BuildContext context, String bookTitle) {
    // Get the appropriate sounds based on the book title
    List<BookSoundData> sounds;
    switch (bookTitle) {
      case "تسجيل صوتي - الأهوال":
        sounds = BookSoundsData.getAhwalSounds();
        break;
      case "تسجيل صوتي - التفسير":
        sounds = BookSoundsData.getTafseerSounds();
        break;
      case "تسجيل صوتي - الفقه":
        sounds = BookSoundsData.getFiqhSounds();
        break;
      case "تسجيل صوتي - العقيدة":
        sounds = BookSoundsData.getAhwalSounds(); // Using Ahwal as fallback for now
        break;
      case "تسجيل صوتي - الحديث":
        sounds = BookSoundsData.getTafseerSounds(); // Using Tafseer as fallback for now
        break;
      case "تسجيل صوتي - السيرة":
        sounds = BookSoundsData.getFiqhSounds(); // Using Fiqh as fallback for now
        break;
      case "تسجيل صوتي - الأخلاق":
        sounds = BookSoundsData.getAhwalSounds(); // Using Ahwal as fallback for now
        break;
      case "تسجيل صوتي - الدعوة":
        sounds = BookSoundsData.getTafseerSounds(); // Using Tafseer as fallback for now
        break;
      default:
        sounds = BookSoundsData.getAhwalSounds(); // Default fallback
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SoundsNowPage(
          bookTitle: bookTitle,
          sounds: sounds,
        ),
      ),
    );
  }
}


Widget _buildTheRow({
  required BuildContext context,
  required int rowIndex,
  required RowData rowData,
}) {
  return Column(
    children: [
      SizedBox(height: 10.h,),
      // Animated section header
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20.p),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              rowData.title,
              style: TextStyle(
                fontSize: 18.f,
                fontWeight: FontWeight.bold,
                fontFamily: FontFamily.tajawal,
              ),
            ).animate()
                .fadeIn(duration: 600.ms, delay: (200 + rowIndex * 200).ms)
                .slideX(begin: -0.2, end: 0, duration: 600.ms, delay: (200 + rowIndex * 200).ms),
            GestureDetector(
              onTap: rowData.onViewAllTap,
              child: Text(
                "الكل",
                style: TextStyle(
                  fontSize: 18.f,
                  fontFamily: FontFamily.tajawal,
                  fontWeight: FontWeight.bold,
                ),
              ).animate()
                  .fadeIn(duration: 600.ms, delay: (300 + rowIndex * 200).ms)
                  .slideX(begin: 0.2, end: 0, duration: 600.ms, delay: (300 + rowIndex * 200).ms),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20.h,
      ),
      // Animated horizontal list
      SizedBox(
        height: 270.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: rowData.books.length,
          itemBuilder: (context, index) {
            final book = rowData.books[index];
            return Container(
              width: 180.w,
              margin: EdgeInsets.only(right: index < rowData.books.length - 1 ? 20.p : 0),
              child: bookCardBuild(
                context: context,
                viewCont: book.viewCount,
                title: book.title,
                imageNamePath: rowData.imagePath,
                width: 180.w,
                height: 250.h,
                book: book.bookName,
                bookImagePath: book.bookImagePath,
                isSoundBook: book.isSoundBook,
                onTap: book.onTap,
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