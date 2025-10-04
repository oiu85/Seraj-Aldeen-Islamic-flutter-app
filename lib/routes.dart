
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:seraj_aldean_flutter_app/features/benefits_fatwas/presentation/pages/Benefits_page.dart';
import 'package:seraj_aldean_flutter_app/features/biography/presentation/pages/biography_page.dart';
import 'package:seraj_aldean_flutter_app/features/home/presentation/pages/home_page.dart';
import 'package:seraj_aldean_flutter_app/features/image_galary/presentation/pages/gallery.dart';
import 'package:seraj_aldean_flutter_app/features/sounds_library/presentation/pages/sounds_page.dart';
import 'package:seraj_aldean_flutter_app/features/video_library/presentation/pages/player_page.dart';

import 'core/routes.dart';
import 'features/sounds_library/presentation/pages/sub_category_sounds.dart';
import 'features/video_library/presentation/pages/video_page.dart';

List<GetPage<dynamic>>? routes=[
 GetPage(name:"/", page: ()=>const HomePage()),
  //GetPage(name: "/", page:()=> const  Test()),//middlewares: [MyMiddelWare()]

  GetPage(name: AppRoute.biography, page: ()=> const BiographyPage()),
  GetPage(name: AppRoute.benefits, page: ()=> const BenefitsPage()),
 GetPage(name: AppRoute.sounds, page: ()=> const SoundsPage()),
 GetPage(name: AppRoute.subSounds, page: ()=> const SubCategorySounds()),
 GetPage(name: AppRoute.videos, page: ()=> const VideoPage()),
 GetPage(name: AppRoute.player, page: ()=> const PlayerPage()),
 GetPage(name: AppRoute.gallery, page: ()=> const Gallery()),
];