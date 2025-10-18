import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// FullScreen Manager to handle immersive mode
class FullScreenManager extends ChangeNotifier {
  static const String _fullScreenKey = 'isFullScreenMode';
  bool _isFullScreenMode = false;

  bool get isFullScreenMode => _isFullScreenMode;

  FullScreenManager() {
    _loadFullScreenMode();
  }

  /// Load full screen preference from storage
  Future<void> _loadFullScreenMode() async {
    final prefs = await SharedPreferences.getInstance();
    _isFullScreenMode = prefs.getBool(_fullScreenKey) ?? false;
    await _applyFullScreenMode();
    notifyListeners();
  }

  /// Toggle full screen mode
  Future<void> toggleFullScreenMode() async {
    _isFullScreenMode = !_isFullScreenMode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_fullScreenKey, _isFullScreenMode);
    await _applyFullScreenMode();
    notifyListeners();
  }

  /// Set full screen mode explicitly
  Future<void> setFullScreenMode(bool isFullScreen) async {
    if (_isFullScreenMode == isFullScreen) return;
    _isFullScreenMode = isFullScreen;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_fullScreenKey, _isFullScreenMode);
    await _applyFullScreenMode();
    notifyListeners();
  }

  /// Apply the system UI mode based on the current setting
  Future<void> _applyFullScreenMode() async {
    if (_isFullScreenMode) {
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } else {
      await SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );
    }
  }

  /// Apply current full screen mode setting (call this on app startup)
  Future<void> applyCurrentMode() async {
    await _applyFullScreenMode();
  }
}

