import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:seraj_aldean_flutter_app/features/home/presentation/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 👇 تفعيل وضع fullscreen
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 👇 إعادة التأكيد عند كل build (لتضمن استمرار الـ fullscreen بعد hot reload)
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return ScreenUtilInit(
      designSize: const Size(390, 814), // القياس الأساسي للتصميم
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
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
        );
      },
      child: const HomePage(),
    );
  }
}
