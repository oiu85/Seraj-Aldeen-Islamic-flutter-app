import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/di/app_dependencies.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/close_app_button.dart';
import 'package:seraj_aldean_flutter_app/core/theme/font_size_manager.dart';
import 'package:seraj_aldean_flutter_app/core/theme/theme_manager.dart';
import 'package:seraj_aldean_flutter_app/features/splassh_screen/presentation/pages/splassh_screen.dart';
import 'package:seraj_aldean_flutter_app/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //? Initialize dependencies
  setupAppDependencies();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeManager()),
        ChangeNotifierProvider(create: (_) => FontSizeManager()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return Consumer2<ThemeManager, FontSizeManager>(
      builder: (context, themeManager, fontSizeManager, _) {
        final mediaQuery = MediaQuery.of(context);
        // Update AppColors when theme changes
        AppColors.setDarkMode(themeManager.isDarkMode);
        return MediaQuery(
          data: mediaQuery.copyWith(
            textScaler: const TextScaler.linear(1),
          ),
          child: ScreenUtilInit(
            key: ValueKey(
                '${themeManager.isDarkMode}_${fontSizeManager.fontSizeMultiplier}'),
            designSize: const Size(390, 814),
            //* iphone X Size
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return GetMaterialApp(
                title: "الشيخ عبدالله سراج الدين رحمه الله",
                theme: ThemeData(
                  scaffoldBackgroundColor: AppColors.scaffoldBackground,
                  useMaterial3: true,
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: AppColors.primary,
                    brightness: themeManager.isDarkMode
                        ? Brightness.dark
                        : Brightness.light,
                  ),
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
                getPages: routes,
              );
            },
            child: const CloseAppWillPopScope(
              child: SplasshScreen(),
            ),
          ),
        );
      },
    );
  }
}
