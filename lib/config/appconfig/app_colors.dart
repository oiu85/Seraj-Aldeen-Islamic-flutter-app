import 'package:flutter/material.dart';

class AppColors {
  static bool _isDarkMode = false;

  /// Initialize dark mode state
  static void setDarkMode(bool isDark) {
    _isDarkMode = isDark;
  }

  // Primary colors (same in both themes)
  static const Color primary = Color(0xff156A7F);
  static const Color primaryTest = Color(0xff005773);
  static const Color primaryDark = Color(0xFF272727);

  // Secondary colors (same in both themes)
  static const Color secondary = Color(0xFFD6BA58);
  static const Color secondaryLight = Color(0xFFFAEFDC);
  
  // Accent colors (same in both themes)
  static const Color accent = Color(0xFFF4D99F);
  static const Color accentDark = Color(0xFFF0E7DC);

  // Error color (same in both themes)
  static const Color error = Color(0xFFF44336);
  static const Color success = Color(0xFF4CAF50);

  // ============ Dynamic Colors (change based on theme) ============
  
  /// Background color - changes based on theme
  static Color get background => _isDarkMode ? const Color(0xFF121212) : const Color(0xFFFFFFFF);
  
  /// Scaffold background color - changes based on theme
  static Color get scaffoldBackground => _isDarkMode ? const Color(0xFF1E1E1E) : const Color(0xFFF5F5F5);
  
  /// Card background color - changes based on theme
  static Color get cardBackground => _isDarkMode ? const Color(0xFF2C2C2C) : const Color(0xFFFFFFFF);
  
  /// Surface color - changes based on theme
  static Color get surface => _isDarkMode ? const Color(0xFF2C2C2C) : const Color(0xFFFFFFFF);

  /// White color - changes based on theme
  static Color get white => _isDarkMode ? const Color(0xFF1E1E1E) : const Color(0xFFFFFFFF);
  
  /// Black color - changes based on theme
  static Color get black => _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF272727);
  
  /// Text primary color - changes based on theme
  static Color get textPrimary => _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF000000);
  
  /// Text secondary color - changes based on theme
  static Color get textSecondary => _isDarkMode ? const Color(0xFFB0B0B0) : const Color(0xFF757575);

  // Grey colors - adjusted for dark mode
  static Color get grey => _isDarkMode ? const Color(0xFF9E9E9E) : const Color(0xFF9E9E9E);
  static Color get lightGrey => _isDarkMode ? const Color(0xFF505050) : const Color(0xFFD6D6D6);
  static Color get extraLightGrey => _isDarkMode ? const Color(0xFF404040) : const Color(0xFFC0C0C0);
  static Color get darkGrey => _isDarkMode ? const Color(0xFFB0B0B0) : const Color(0xFF616161);

  // Home cards - adjusted for dark mode
  static Color get homeCard => _isDarkMode ? const Color(0xFF3A3A2E) : const Color(0xffFAEFDC);
  static Color get homeCard2 => _isDarkMode ? const Color(0xFF3E3A32) : const Color(0xFFF7E8D0);

  // Fatwa field color - adjusted for dark mode
  static Color get ftawaFiledColor => _isDarkMode 
      ? const Color(0xFF3A3A2E).withOpacity(0.3) 
      : const Color(0xfae6b333).withOpacity(0.2);

  // Bottom card colors - adjusted for dark mode
  static Color get bottomCardColor => _isDarkMode ? const Color(0xFF4A4032) : const Color(0xFFE3B260);
  static Color get waveCardColor => _isDarkMode ? const Color(0xFF3A3A2E) : const Color(0xFFFFFAF0);
  static Color get bottomCardColor2 => _isDarkMode ? const Color(0xFF4A4438) : const Color(0xFFE8DCCC);
  static Color get waveCardColor2 => _isDarkMode ? const Color(0xFF4A4438) : const Color(0xFFE8DCCC);

  // Gradients - adjusted for dark mode
  static LinearGradient get secondaryGradient => LinearGradient(
    colors: _isDarkMode 
        ? [secondary, const Color(0xFF2C2C2C)] 
        : [secondary, const Color(0xFFFFFFFF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
  );

  static LinearGradient get accentGradient => const LinearGradient(
    colors: [accent, accentDark],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}

