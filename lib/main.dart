import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/di/app_dependencies.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/close_app_button.dart';
import 'package:seraj_aldean_flutter_app/core/theme/theme_manager.dart';
import 'package:seraj_aldean_flutter_app/features/home/presentation/pages/home_page.dart';
import 'package:seraj_aldean_flutter_app/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependencies
  setupAppDependencies();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeManager(),
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

    return Consumer<ThemeManager>(
      builder: (context, themeManager, _) {
        // Update AppColors when theme changes
        AppColors.setDarkMode(themeManager.isDarkMode);

        // Use key to force complete rebuild on theme change
        return ScreenUtilInit(
          key: ValueKey(themeManager.isDarkMode),
          designSize: const Size(390, 814),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return GetMaterialApp(
              theme: ThemeData(
                scaffoldBackgroundColor: AppColors.scaffoldBackground,
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(
                  seedColor: AppColors.primary,
                  brightness: themeManager.isDarkMode ? Brightness.dark : Brightness.light,
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
            child: HomePage(),
          ),
        );
      },
    );
  }
}
