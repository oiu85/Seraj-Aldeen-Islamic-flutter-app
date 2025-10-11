import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';

/// Font Size Manager to handle font size customization
class FontSizeManager extends ChangeNotifier {
  static const String _fontSizeKey = 'font_size_multiplier';
  static const String _isDefaultKey = 'is_default_font_size';
  
  // Font size boundaries
  static const double minFontSize = 0.7;
  static const double maxFontSize = 0.91;
  static const double defaultFontSize = 0.78;
  
  double _fontSizeMultiplier = defaultFontSize;
  bool _isDefaultFontSize = true;

  double get fontSizeMultiplier => _fontSizeMultiplier;
  bool get isDefaultFontSize => _isDefaultFontSize;

  FontSizeManager() {
    _loadFontSize();
  }

  /// Load font size preference from storage
  Future<void> _loadFontSize() async {
    final prefs = await SharedPreferences.getInstance();
    _fontSizeMultiplier = prefs.getDouble(_fontSizeKey) ?? defaultFontSize;
    _isDefaultFontSize = prefs.getBool(_isDefaultKey) ?? true;
    
    // Update ScreenUtilRes with loaded font size
    ScreenUtilRes.updateFontSizeMultiplier(_fontSizeMultiplier);
    
    notifyListeners();
  }

  /// Toggle between default and custom font size
  Future<void> toggleDefaultFontSize() async {
    _isDefaultFontSize = !_isDefaultFontSize;
    
    // If switching to default, reset to default font size
    if (_isDefaultFontSize) {
      _fontSizeMultiplier = defaultFontSize;
      ScreenUtilRes.updateFontSizeMultiplier(_fontSizeMultiplier);
    }
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isDefaultKey, _isDefaultFontSize);
    await prefs.setDouble(_fontSizeKey, _fontSizeMultiplier);
    
    notifyListeners();
  }

  /// Set font size multiplier
  Future<void> setFontSize(double multiplier) async {
    // Clamp value to boundaries
    final clampedValue = multiplier.clamp(minFontSize, maxFontSize);
    
    if (_fontSizeMultiplier == clampedValue) return;
    
    _fontSizeMultiplier = clampedValue;
    _isDefaultFontSize = false; // Using custom size
    
    // Update ScreenUtilRes immediately
    ScreenUtilRes.updateFontSizeMultiplier(_fontSizeMultiplier);
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_fontSizeKey, _fontSizeMultiplier);
    await prefs.setBool(_isDefaultKey, _isDefaultFontSize);
    
    notifyListeners();
  }

  /// Reset to default font size
  Future<void> resetToDefault() async {
    _fontSizeMultiplier = defaultFontSize;
    _isDefaultFontSize = true;
    
    ScreenUtilRes.updateFontSizeMultiplier(_fontSizeMultiplier);
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_fontSizeKey, _fontSizeMultiplier);
    await prefs.setBool(_isDefaultKey, _isDefaultFontSize);
    
    notifyListeners();
  }
}

