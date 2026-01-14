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
    Future.delayed(const Duration(seconds: 4), () {
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
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage(Assets.images.splashScreenJpeg.path),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
