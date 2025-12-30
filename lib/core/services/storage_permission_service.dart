import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:path_provider/path_provider.dart';

/// Service to handle storage permissions specifically for the Downloads folder
class StoragePermissionService {
  /// Get the app's internal Books directory path
  /// Returns: App's internal documents directory with Books subfolder
  /// No permissions required for app directory
  static Future<String?> getAppBooksDirectory() async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final booksPath = '${appDir.path}/Books';
      
      // Create directory if it doesn't exist
      final directory = Directory(booksPath);
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }
      
      return booksPath;
    } catch (e) {
      return null;
    }
  }

  /// Get the public Downloads directory path (for display purposes only)
  /// Note: Actual file operations should use MediaStore API via saveFileToDownloadsUsingMediaStore()
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
  /// For Android 10+ (API 29+), MediaStore API doesn't require special permissions
  /// Only Android 9 and below need WRITE_EXTERNAL_STORAGE
  static Future<bool> hasStoragePermission() async {
    if (!Platform.isAndroid) {
      return true; // iOS handles permissions differently
    }

    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    final sdkInt = androidInfo.version.sdkInt;

    // Android 10+ (API 29+) - MediaStore API doesn't require permissions
    if (sdkInt >= 29) {
      return true;
    }

    // Android 9 and below - need WRITE_EXTERNAL_STORAGE
    return await Permission.storage.isGranted;
  }

  /// Request all necessary storage permissions based on Android version
  /// For Android 10+ (API 29+), MediaStore API doesn't require permissions
  /// Only Android 9 and below need WRITE_EXTERNAL_STORAGE
  /// Returns true if permission is granted, false otherwise
  static Future<bool> requestAllStoragePermissions() async {
    if (!Platform.isAndroid) {
      return true; // iOS handles permissions differently
    }

    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    final sdkInt = androidInfo.version.sdkInt;

    // Android 10+ (API 29+) - MediaStore API doesn't require permissions
    if (sdkInt >= 29) {
      return true;
    }

    // Android 9 and below - need WRITE_EXTERNAL_STORAGE
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

    // Android 10+ (API 29+) - MediaStore API doesn't require permissions
    if (sdkInt >= 29) {
      return false;
    }

    // Android 9 and below - check if storage permission is permanently denied
    final status = await Permission.storage.status;
    if (status.isPermanentlyDenied) {
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

    // Android 10+ (API 29+) - MediaStore API doesn't require permissions
    if (sdkInt >= 29) {
      return 'غير مطلوب (يستخدم MediaStore API)';
    }

    // Android 9 and below - check storage permission
    final status = await Permission.storage.status;
    if (status.isGranted) {
      return 'ممنوح';
    } else if (status.isPermanentlyDenied) {
      return 'مرفوض بشكل دائم - يرجى فتح الإعدادات';
    } else if (status.isDenied) {
      return 'مرفوض - يرجى منح الصلاحية';
    }

    return 'غير معروف';
  }

  /// Save file to Downloads folder using MediaStore API (Android 10+) or direct file access (Android 9-)
  /// This method uses MediaStore API which doesn't require MANAGE_EXTERNAL_STORAGE permission
  /// Returns the saved file URI or null if failed
  static Future<String?> saveFileToDownloadsUsingMediaStore(
    String sourceFilePath,
    String fileName,
    String mimeType,
  ) async {
    if (!Platform.isAndroid) {
      return null;
    }

    try {
      const platform = MethodChannel('com.swbai.serajaldeen/mediastore');
      final result = await platform.invokeMethod<String>(
        'saveFileToDownloads',
        <String, dynamic>{
          'filePath': sourceFilePath,
          'fileName': fileName,
          'mimeType': mimeType,
        },
      );
      return result;
    } catch (e) {
      return null;
    }
  }
}
