import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

import '../../../sounds_library/presentation/widgets/sound_card.dart';

// Sound data model for individual sounds
class BookSoundData {
  final String title;
  final String visitorCount;
  final String date;
  final String duration;
  final String? position;
  final VoidCallback? onTap;
  final VoidCallback? onPlayPause;
  final VoidCallback? onDownload;
  final bool isPlaying;
  final bool isLoading;
  final bool isDownloading;
  final bool hasError;

  BookSoundData({
    required this.title,
    required this.visitorCount,
    required this.date,
    required this.duration,
    this.position,
    this.onTap,
    this.onPlayPause,
    this.onDownload,
    this.isPlaying = false,
    this.isLoading = false,
    this.isDownloading = false,
    this.hasError = false,
  });
}

class SoundsNowPage extends StatelessWidget {
  final String bookTitle;
  final List<BookSoundData> sounds;

  const SoundsNowPage({
    super.key,
    required this.bookTitle,
    required this.sounds,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.p),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            Text(
              bookTitle,
              style: TextStyle(
                fontSize: 24.f,
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10.h),
            Text(
              "عدد التسجيلات: ${sounds.length}",
              style: TextStyle(
                fontSize: 16.f,
                fontFamily: FontFamily.tajawal,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: _buildSoundsGrid(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSoundsGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.p),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 15.h,
          childAspectRatio: 1.1, // Adjust based on sound card dimensions
        ),
        itemCount: sounds.length,
        itemBuilder: (context, index) {
          final sound = sounds[index];
          return SoundCard(
            title: sound.title,
            visitorCount: sound.visitorCount,
            date: sound.date,
            duration: sound.duration,
            position: sound.position,
            onTap: sound.onTap,
            onPlayPause: sound.onPlayPause,
            onDownload: sound.onDownload,
            isPlaying: sound.isPlaying,
            isLoading: sound.isLoading,
            isDownloading: sound.isDownloading,
            hasError: sound.hasError,
            width: double.infinity,
            height: 180.h,
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
          );
        },
      ),
    );
  }
}

// Static data for different book sounds
class BookSoundsData {
  static List<BookSoundData> getAhwalSounds() {
    return [
      BookSoundData(
        title: "المقدمة - كتاب الأهوال",
        visitorCount: "1,250",
        date: "2024-01-15",
        duration: "15:30",
        position: "0:00",
        onTap: () => _handleSoundTap("المقدمة - كتاب الأهوال"),
        onPlayPause: () => _handlePlayPause("المقدمة - كتاب الأهوال"),
        onDownload: () => _handleDownload("المقدمة - كتاب الأهوال"),
      ),
      BookSoundData(
        title: "الفصل الأول - تعريف الأهوال",
        visitorCount: "980",
        date: "2024-01-16",
        duration: "22:45",
        position: "0:00",
        onTap: () => _handleSoundTap("الفصل الأول - تعريف الأهوال"),
        onPlayPause: () => _handlePlayPause("الفصل الأول - تعريف الأهوال"),
        onDownload: () => _handleDownload("الفصل الأول - تعريف الأهوال"),
      ),
      BookSoundData(
        title: "الفصل الثاني - أنواع الأهوال",
        visitorCount: "875",
        date: "2024-01-17",
        duration: "18:20",
        position: "0:00",
        onTap: () => _handleSoundTap("الفصل الثاني - أنواع الأهوال"),
        onPlayPause: () => _handlePlayPause("الفصل الثاني - أنواع الأهوال"),
        onDownload: () => _handleDownload("الفصل الثاني - أنواع الأهوال"),
      ),
      BookSoundData(
        title: "الفصل الثالث - أحكام الأهوال",
        visitorCount: "1,100",
        date: "2024-01-18",
        duration: "25:15",
        position: "0:00",
        onTap: () => _handleSoundTap("الفصل الثالث - أحكام الأهوال"),
        onPlayPause: () => _handlePlayPause("الفصل الثالث - أحكام الأهوال"),
        onDownload: () => _handleDownload("الفصل الثالث - أحكام الأهوال"),
      ),
      BookSoundData(
        title: "الفصل الرابع - أمثلة من القرآن",
        visitorCount: "750",
        date: "2024-01-19",
        duration: "20:40",
        position: "0:00",
        onTap: () => _handleSoundTap("الفصل الرابع - أمثلة من القرآن"),
        onPlayPause: () => _handlePlayPause("الفصل الرابع - أمثلة من القرآن"),
        onDownload: () => _handleDownload("الفصل الرابع - أمثلة من القرآن"),
      ),
      BookSoundData(
        title: "الخاتمة - كتاب الأهوال",
        visitorCount: "650",
        date: "2024-01-20",
        duration: "12:30",
        position: "0:00",
        onTap: () => _handleSoundTap("الخاتمة - كتاب الأهوال"),
        onPlayPause: () => _handlePlayPause("الخاتمة - كتاب الأهوال"),
        onDownload: () => _handleDownload("الخاتمة - كتاب الأهوال"),
      ),
    ];
  }

  static List<BookSoundData> getTafseerSounds() {
    return [
      BookSoundData(
        title: "مقدمة التفسير - الجزء الأول",
        visitorCount: "2,100",
        date: "2024-02-01",
        duration: "30:15",
        position: "0:00",
        onTap: () => _handleSoundTap("مقدمة التفسير - الجزء الأول"),
        onPlayPause: () => _handlePlayPause("مقدمة التفسير - الجزء الأول"),
        onDownload: () => _handleDownload("مقدمة التفسير - الجزء الأول"),
      ),
      BookSoundData(
        title: "تفسير سورة الفاتحة",
        visitorCount: "1,800",
        date: "2024-02-02",
        duration: "35:20",
        position: "0:00",
        onTap: () => _handleSoundTap("تفسير سورة الفاتحة"),
        onPlayPause: () => _handlePlayPause("تفسير سورة الفاتحة"),
        onDownload: () => _handleDownload("تفسير سورة الفاتحة"),
      ),
      BookSoundData(
        title: "تفسير سورة البقرة - الجزء الأول",
        visitorCount: "1,650",
        date: "2024-02-03",
        duration: "28:45",
        position: "0:00",
        onTap: () => _handleSoundTap("تفسير سورة البقرة - الجزء الأول"),
        onPlayPause: () => _handlePlayPause("تفسير سورة البقرة - الجزء الأول"),
        onDownload: () => _handleDownload("تفسير سورة البقرة - الجزء الأول"),
      ),
      BookSoundData(
        title: "تفسير سورة البقرة - الجزء الثاني",
        visitorCount: "1,400",
        date: "2024-02-04",
        duration: "32:10",
        position: "0:00",
        onTap: () => _handleSoundTap("تفسير سورة البقرة - الجزء الثاني"),
        onPlayPause: () => _handlePlayPause("تفسير سورة البقرة - الجزء الثاني"),
        onDownload: () => _handleDownload("تفسير سورة البقرة - الجزء الثاني"),
      ),
      BookSoundData(
        title: "تفسير سورة آل عمران",
        visitorCount: "1,200",
        date: "2024-02-05",
        duration: "26:30",
        position: "0:00",
        onTap: () => _handleSoundTap("تفسير سورة آل عمران"),
        onPlayPause: () => _handlePlayPause("تفسير سورة آل عمران"),
        onDownload: () => _handleDownload("تفسير سورة آل عمران"),
      ),
      BookSoundData(
        title: "تفسير سورة النساء",
        visitorCount: "950",
        date: "2024-02-06",
        duration: "24:15",
        position: "0:00",
        onTap: () => _handleSoundTap("تفسير سورة النساء"),
        onPlayPause: () => _handlePlayPause("تفسير سورة النساء"),
        onDownload: () => _handleDownload("تفسير سورة النساء"),
      ),
    ];
  }

  static List<BookSoundData> getFiqhSounds() {
    return [
      BookSoundData(
        title: "مقدمة في الفقه الإسلامي",
        visitorCount: "1,500",
        date: "2024-03-01",
        duration: "20:25",
        position: "0:00",
        onTap: () => _handleSoundTap("مقدمة في الفقه الإسلامي"),
        onPlayPause: () => _handlePlayPause("مقدمة في الفقه الإسلامي"),
        onDownload: () => _handleDownload("مقدمة في الفقه الإسلامي"),
      ),
      BookSoundData(
        title: "كتاب الطهارة - الجزء الأول",
        visitorCount: "1,300",
        date: "2024-03-02",
        duration: "25:40",
        position: "0:00",
        onTap: () => _handleSoundTap("كتاب الطهارة - الجزء الأول"),
        onPlayPause: () => _handlePlayPause("كتاب الطهارة - الجزء الأول"),
        onDownload: () => _handleDownload("كتاب الطهارة - الجزء الأول"),
      ),
      BookSoundData(
        title: "كتاب الطهارة - الجزء الثاني",
        visitorCount: "1,150",
        date: "2024-03-03",
        duration: "23:15",
        position: "0:00",
        onTap: () => _handleSoundTap("كتاب الطهارة - الجزء الثاني"),
        onPlayPause: () => _handlePlayPause("كتاب الطهارة - الجزء الثاني"),
        onDownload: () => _handleDownload("كتاب الطهارة - الجزء الثاني"),
      ),
      BookSoundData(
        title: "كتاب الصلاة - الجزء الأول",
        visitorCount: "1,400",
        date: "2024-03-04",
        duration: "28:30",
        position: "0:00",
        onTap: () => _handleSoundTap("كتاب الصلاة - الجزء الأول"),
        onPlayPause: () => _handlePlayPause("كتاب الصلاة - الجزء الأول"),
        onDownload: () => _handleDownload("كتاب الصلاة - الجزء الأول"),
      ),
      BookSoundData(
        title: "كتاب الصلاة - الجزء الثاني",
        visitorCount: "1,200",
        date: "2024-03-05",
        duration: "26:45",
        position: "0:00",
        onTap: () => _handleSoundTap("كتاب الصلاة - الجزء الثاني"),
        onPlayPause: () => _handlePlayPause("كتاب الصلاة - الجزء الثاني"),
        onDownload: () => _handleDownload("كتاب الصلاة - الجزء الثاني"),
      ),
    ];
  }

  // Static handlers for testing
  static void _handleSoundTap(String soundTitle) {
    // This will be called when a sound is tapped
    // TODO: Implement proper navigation or callback
  }

  static void _handlePlayPause(String soundTitle) {
    // This will be called when play/pause is tapped
    // TODO: Implement audio playback logic
  }

  static void _handleDownload(String soundTitle) {
    // This will be called when download is tapped
    // TODO: Implement download logic
  }
}
