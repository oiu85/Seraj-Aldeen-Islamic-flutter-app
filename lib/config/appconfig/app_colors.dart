import 'package:flutter/material.dart';

class AppColors {
  // Primary colors
  static const Color primary = Color(0xff0F99BA);
  static const Color primaryDark = Color(0xFF272727);

  // Secondary colors
  static const Color secondary = Color(0xFFD6BA58);
  static const Color secondaryLight = Color(0xFFFAEFDC);
  // Accent colors
  static const Color accent = Color(0xFFF4D99F);
  static const Color accentDark = Color(0xFFF0E7DC);

  static const Color homeCard = Color(0xffFAEFDC);
  static const Color homeCard2 = Color(0xFFF7E8D0);

  // Neutral colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF272727);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color darkGrey = Color(0xFF616161);


  static const Color background = Color(0xFFFFFFFF);
  static const Color scaffoldBackground = Color(0xFFF5F5F5);

  static  Color ftawaFiledColor = Color(0xfae6b333).withOpacity(0.2);
//* ================ Home Bottom Cards Color===============*//
  static const Color bottomCardColor = Color(0xFFE3B260);
  static  Color waveCardColor = Color(0xFFFFFAF0);
  static const Color bottomCardColor2 = Color(0xFFE8DCCC);
  static  Color waveCardColor2 = Color(0xFFE8DCCC);





  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF757575);
  // Error and success
  static const Color error = Color(0xFFF44336);

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [secondary, white],
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [accent, accentDark],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
