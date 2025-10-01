import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/close_app_button.dart';
import 'package:seraj_aldean_flutter_app/features/home/presentation/pages/home_page.dart';
import 'package:seraj_aldean_flutter_app/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return ScreenUtilInit(
      designSize: const Size(390, 814),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(

          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          debugShowCheckedModeBanner: false,
          locale: const Locale('ar'),
          supportedLocales: const [
            Locale('ar'),
            Locale('en'),
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: child,
          getPages:routes,
        );
      },
      child: const CloseAppWillPopScope(
        child: HomePage(),
      ),
    );
  }
}
