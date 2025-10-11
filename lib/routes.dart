
import 'package:get/get.dart';
import 'package:seraj_aldean_flutter_app/features/benefits_fatwas/presentation/pages/Benefits_page.dart';
import 'package:seraj_aldean_flutter_app/features/biography/presentation/pages/biography_page.dart';
import 'package:seraj_aldean_flutter_app/features/books_library/presentation/pages/books_page.dart';
import 'package:seraj_aldean_flutter_app/features/home/presentation/pages/home_page.dart';
import 'package:seraj_aldean_flutter_app/features/image_galary/presentation/pages/gallery.dart';
import 'package:seraj_aldean_flutter_app/features/settings/presentation/pages/about_app_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seraj_aldean_flutter_app/core/di/app_dependencies.dart';
import 'package:seraj_aldean_flutter_app/features/sounds_library/presentation/bloc/sounds_bloc.dart';
import 'package:seraj_aldean_flutter_app/features/sounds_library/presentation/pages/audio_book_sounds_page.dart';
import 'package:seraj_aldean_flutter_app/features/sounds_library/presentation/pages/sounds_page.dart';
import 'package:seraj_aldean_flutter_app/features/video_library/presentation/pages/player_page.dart';
import 'core/routes.dart';
import 'features/settings/presentation/pages/contact_use.dart';
import 'features/sounds_library/presentation/pages/sub_category_sounds.dart';
import 'features/video_library/presentation/pages/video_page.dart';

List<GetPage<dynamic>>? routes=[
 GetPage(name:"/", page: ()=>const HomePage()),

  GetPage(name: AppRoute.biography, page: ()=> const BiographyPage()),
  GetPage(name: AppRoute.benefits, page: ()=> const BenefitsPage()),
 GetPage(name: AppRoute.sounds, page: ()=> const SoundsPage()),
 GetPage(name: AppRoute.subSounds, page: ()=> const SubCategorySounds()),
 GetPage(
   name: AppRoute.audioBookSounds, 
   page: () => BlocProvider(
     create: (context) => getIt<SoundsBloc>(),
     child: const AudioBookSoundsPage(),
   ),
 ),
 GetPage(name: AppRoute.videos, page: ()=> const VideoPage()),
 GetPage(
   name: AppRoute.player, 
   page: () {
     final args = Get.arguments as Map<String, dynamic>?;
     final videoId = args?['videoId'] as int? ?? 1;
     return PlayerPage(videoId: videoId);
   },
 ),
 GetPage(name: AppRoute.gallery, page: ()=> const Gallery()),
 GetPage(name: AppRoute.booksPage, page: ()=> const BooksPage()),
 GetPage(name: AppRoute.contacUs, page: ()=> const ContactUsPage()),
 GetPage(name: AppRoute.aboutApp, page: ()=> const AboutAppPage()),
];