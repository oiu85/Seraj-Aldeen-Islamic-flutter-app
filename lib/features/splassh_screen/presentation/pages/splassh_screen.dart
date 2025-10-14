import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/shared/widgets/close_app_button.dart';
import '../../../../gen/assets.gen.dart';
import '../../../home/presentation/pages/home_page.dart';

class SplasshScreen extends StatefulWidget {
  const SplasshScreen({super.key});

  @override
  State<SplasshScreen> createState() => _SplasshScreenState();
}

class _SplasshScreenState extends State<SplasshScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Get.off(
          () => const CloseAppWillPopScope(
            child: HomePage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.splashScreen.path),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
