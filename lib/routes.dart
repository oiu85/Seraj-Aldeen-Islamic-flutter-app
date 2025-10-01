
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:seraj_aldean_flutter_app/features/benefits_fatwas/presentation/pages/Benefits_page.dart';
import 'package:seraj_aldean_flutter_app/features/biography/presentation/pages/biography_page.dart';
import 'package:seraj_aldean_flutter_app/features/home/presentation/pages/home_page.dart';

import 'core/routes.dart';

List<GetPage<dynamic>>? routes=[
 GetPage(name:"/", page: ()=>const HomePage()),
  //GetPage(name: "/", page:()=> const  Test()),//middlewares: [MyMiddelWare()]

  GetPage(name: AppRoute.biography, page: ()=> const BiographyPage()),
  GetPage(name: AppRoute.benefits, page: ()=> const BenefitsPage()),
];