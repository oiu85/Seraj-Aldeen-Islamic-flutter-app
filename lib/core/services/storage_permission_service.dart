import 'dart:io';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:path_provider/path_provider.dart';

/// Service to handle storage permissions specifically for the Downloads folder
class StoragePermissionService {
  /// Get the public Downloads directory path
  /// Returns: /storage/emulated/0/Download/ on Android
  static Future<String?> getDownloadsDirectory() async {
    try {
      if (Platform.isAndroid) {
        // Get external storage directory
        final externalDir = await getExternalStorageDirectory();
        if (externalDir != null) {
          // Navigate to Downloads folder
          // externalDir.path is typically /storage/emulated/0/Android/data/com.swbai.serajaldeen/files
          // We need to go up to /storage/emulated/0/ and then to Download/
          final path = externalDir.path;
          // Extract the base storage path
          final storagePath = path.split('/Android')[0];
          final downloadsPath = '$storagePath/Download';
          
          // Create directory if it doesn't exist
          final directory = Directory(downloadsPath);
          if (!await directory.exists()) {
            await directory.create(recursive: true);
          }
          
          return downloadsPath;
        }
      }
      return null;
    } catch (e) {
      // Fallback: try direct path
      try {
        const downloadsPath = '/storage/emulated/0/Download';
        final directory = Directory(downloadsPath);
        if (!await directory.exists()) {
          await directory.create(recursive: true);
        }
        return downloadsPath;
      } catch (_) {
        return null;
      }
    }
  }

  /// Check if storage permission is granted based on Android version
  static Future<bool> hasStoragePermission() async {
    if (!Platform.isAndroid) {
      return true; // iOS handles permissions differently
    }

    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    final sdkInt = androidInfo.version.sdkInt;

    // Android 11+ (API 30+) requires MANAGE_EXTERNAL_STORAGE
    if (sdkInt >= 30) {
      return await Permission.manageExternalStorage.isGranted;
    }

    // Android 10 and below use WRITE_EXTERNAL_STORAGE
    if (sdkInt >= 29) {
      return await Permission.storage.isGranted;
    }

    // Android 9 and below
    return await Permission.storage.isGranted;
  }

  /// Request all necessary storage permissions based on Android version
  /// Returns true if permission is granted, false otherwise
  static Future<bool> requestAllStoragePermissions() async {
    if (!Platform.isAndroid) {
      return true; // iOS handles permissions differently
    }

    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    final sdkInt = androidInfo.version.sdkInt;

    // Android 11+ (API 30+) requires MANAGE_EXTERNAL_STORAGE
    if (sdkInt >= 30) {
      final status = await Permission.manageExternalStorage.request();
      if (status.isGranted) {
        return true;
      }
      // If permanently denied, return false (caller should open settings)
      return false;
    }

    // Android 10 (API 29) - use WRITE_EXTERNAL_STORAGE with legacy flag
    if (sdkInt >= 29) {
      final status = await Permission.storage.request();
      return status.isGranted;
    }

    // Android 9 and below - use WRITE_EXTERNAL_STORAGE
    final status = await Permission.storage.request();
    return status.isGranted;
  }

  /// Request storage permission with dialog (legacy method for compatibility)
  static Future<bool> requestStoragePermission(BuildContext? context) async {
    return await requestAllStoragePermissions();
  }

  /// Check if permission is permanently denied and open app settings if needed
  /// Returns true if settings were opened, false otherwise
  static Future<bool> openAppSettingsIfNeeded() async {
    if (!Platform.isAndroid) {
      return false;
    }

    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    final sdkInt = androidInfo.version.sdkInt;

    bool isPermanentlyDenied = false;

    // Check if permission is permanently denied
    if (sdkInt >= 30) {
      final status = await Permission.manageExternalStorage.status;
      isPermanentlyDenied = status.isPermanentlyDenied;
    } else {
      final status = await Permission.storage.status;
      isPermanentlyDenied = status.isPermanentlyDenied;
    }

    if (isPermanentlyDenied) {
      return await openAppSettings();
    }

    return false;
  }

  /// Get permission status message in Arabic
  static Future<String> getPermissionStatusMessage() async {
    if (!Platform.isAndroid) {
      return 'غير متاح';
    }

    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    final sdkInt = androidInfo.version.sdkInt;

    if (sdkInt >= 30) {
      final status = await Permission.manageExternalStorage.status;
      if (status.isGranted) {
        return 'ممنوح';
      } else if (status.isPermanentlyDenied) {
        return 'مرفوض بشكل دائم - يرجى فتح الإعدادات';
      } else if (status.isDenied) {
        return 'مرفوض - يرجى منح الصلاحية';
      }
    } else {
      final status = await Permission.storage.status;
      if (status.isGranted) {
        return 'ممنوح';
      } else if (status.isPermanentlyDenied) {
        return 'مرفوض بشكل دائم - يرجى فتح الإعدادات';
      } else if (status.isDenied) {
        return 'مرفوض - يرجى منح الصلاحية';
      }
    }

    return 'غير معروف';
  }
}
