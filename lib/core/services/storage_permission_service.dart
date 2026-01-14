import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../core/utils/logger/app_logger.dart';

/// Service to handle storage permissions and file operations for both Android and iOS
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
      AppLogger.error('Error getting app books directory: $e');
      return null;
    }
  }

  /// Get the download directory path (for display purposes only)
  /// Returns:
  ///   - Android: /storage/emulated/0/Download/
  ///   - iOS: App's Documents directory (accessible via Files app)
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
          // Extract base storage path
          final storagePath = path.split('/Android')[0];
          final downloadsPath = '$storagePath/Download';

          // Create directory if it doesn't exist
          final directory = Directory(downloadsPath);
          if (!await directory.exists()) {
            await directory.create(recursive: true);
          }

          return downloadsPath;
        }
      } else if (Platform.isIOS) {
        // On iOS, return the app's Documents directory
        // Files saved here are accessible via Files app with iTunes File Sharing enabled
        final appDir = await getApplicationDocumentsDirectory();
        return appDir.path;
      }
      return null;
    } catch (e) {
      // Fallback for Android: try direct path
      if (Platform.isAndroid) {
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
      return null;
    }
  }

  /// Check if storage permission is granted based on platform
  /// For Android 10+ (API 29+), MediaStore API doesn't require special permissions
  /// Only Android 9 and below need WRITE_EXTERNAL_STORAGE
  /// iOS doesn't need storage permissions for app directory
  static Future<bool> hasStoragePermission() async {
    if (Platform.isIOS) {
      return true; // iOS handles permissions differently
    }

    if (Platform.isAndroid) {
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

    return false;
  }

  /// Request all necessary storage permissions based on platform
  /// For Android 10+ (API 29+), MediaStore API doesn't require permissions
  /// Only Android 9 and below need WRITE_EXTERNAL_STORAGE
  /// iOS doesn't need storage permissions for app directory
  /// Returns true if permission is granted, false otherwise
  static Future<bool> requestAllStoragePermissions() async {
    if (Platform.isIOS) {
      return true; // iOS handles permissions differently
    }

    if (Platform.isAndroid) {
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

    return false;
  }

  /// Request storage permission with dialog (legacy method for compatibility)
  static Future<bool> requestStoragePermission(BuildContext? context) async {
    return await requestAllStoragePermissions();
  }

  /// Check if permission is permanently denied and open app settings if needed
  /// Returns true if settings were opened, false otherwise
  static Future<bool> openAppSettingsIfNeeded() async {
    if (Platform.isIOS) {
      return false;
    }

    if (Platform.isAndroid) {
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
    }

    return false;
  }

  /// Get permission status message in Arabic
  static Future<String> getPermissionStatusMessage() async {
    if (Platform.isIOS) {
      return 'غير مطلوب (يستخدم مجلد التطبيق)';
    }

    if (Platform.isAndroid) {
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
    }

    return 'غير معروف';
  }

  /// Save file to Downloads folder using platform-specific method
  ///
  /// Android:
  ///   - Uses MediaStore API (Android 10+) or direct file access (Android 9-)
  ///   - Returns: File URI as string
  ///
  /// iOS:
  ///   - Saves to app's Documents directory
  ///   - Presents UIActivityViewController for user to save to Files app
  ///   - Returns: Local file path as string
  ///
  /// Returns: Saved file path/URI or null if failed
  static Future<String?> saveFileToDownloads(
    String sourceFilePath,
    String fileName,
    String mimeType,
  ) async {
    try {
      if (Platform.isAndroid) {
        return await saveFileToDownloadsAndroid(sourceFilePath, fileName, mimeType);
      } else if (Platform.isIOS) {
        return await saveFileToIOSDocuments(sourceFilePath, fileName);
      }
      return null;
    } catch (e) {
      AppLogger.error('Error saving file to downloads: $e');
      return null;
    }
  }

  /// Save file to Downloads folder on Android using MediaStore API
  /// This method uses MediaStore API which doesn't require MANAGE_EXTERNAL_STORAGE permission
  /// Returns: Saved file URI or null if failed
  static Future<String?> saveFileToDownloadsAndroid(
    String sourceFilePath,
    String fileName,
    String mimeType,
  ) async {
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
      AppLogger.info('File saved to Android Downloads: $result');
      return result;
    } catch (e) {
      AppLogger.error('Error saving file to Android Downloads: $e');
      return null;
    }
  }

  /// Save file to Documents directory on iOS and present share sheet
  /// Uses UIActivityViewController to allow user to save to Files app
  /// Returns: Saved file path or null if failed
  static Future<String?> saveFileToIOSDocuments(
    String sourceFilePath,
    String fileName,
  ) async {
    try {
      const platform = MethodChannel('com.swbai.serajaldeen/filemanager');
      final result = await platform.invokeMethod<String>(
        'saveFileToDownloads',
        <String, dynamic>{
          'filePath': sourceFilePath,
          'fileName': fileName,
        },
      );
      AppLogger.info('File saved to iOS Documents: $result');
      return result;
    } catch (e) {
      AppLogger.error('Error saving file to iOS Documents: $e');
      return null;
    }
  }

  /// Legacy method for backward compatibility
  /// Now delegates to saveFileToDownloads()
  @Deprecated('Use saveFileToDownloads() instead')
  static Future<String?> saveFileToDownloadsUsingMediaStore(
    String sourceFilePath,
    String fileName,
    String mimeType,
  ) async {
    return await saveFileToDownloads(sourceFilePath, fileName, mimeType);
  }
}
