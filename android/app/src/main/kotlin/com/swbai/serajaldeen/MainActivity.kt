package com.swbai.serajaldeen

import android.content.ContentValues
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.IOException

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.swbai.serajaldeen/mediastore"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "saveFileToDownloads" -> {
                    val filePath = call.argument<String>("filePath")
                    val fileName = call.argument<String>("fileName")
                    val mimeType = call.argument<String>("mimeType") ?: "application/pdf"
                    
                    if (filePath == null || fileName == null) {
                        result.error("INVALID_ARGUMENT", "filePath and fileName are required", null)
                        return@setMethodCallHandler
                    }
                    
                    try {
                        val savedUri = saveFileUsingMediaStore(filePath, fileName, mimeType)
                        if (savedUri != null) {
                            result.success(savedUri.toString())
                        } else {
                            result.error("SAVE_FAILED", "Failed to save file using MediaStore", null)
                        }
                    } catch (e: Exception) {
                        result.error("EXCEPTION", e.message, null)
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    private fun saveFileUsingMediaStore(sourceFilePath: String, fileName: String, mimeType: String): android.net.Uri? {
        val sourceFile = File(sourceFilePath)
        if (!sourceFile.exists()) {
            return null
        }

        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            // Android 10+ (API 29+) - Use MediaStore API
            val contentValues = ContentValues().apply {
                put(MediaStore.Downloads.DISPLAY_NAME, fileName)
                put(MediaStore.Downloads.MIME_TYPE, mimeType)
                put(MediaStore.Downloads.RELATIVE_PATH, Environment.DIRECTORY_DOWNLOADS)
            }

            val resolver = contentResolver
            val uri = resolver.insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, contentValues)
            
            uri?.let {
                try {
                    resolver.openOutputStream(it)?.use { outputStream ->
                        FileInputStream(sourceFile).use { inputStream ->
                            inputStream.copyTo(outputStream)
                        }
                    }
                    // Delete the temporary source file if it was in app directory
                    if (sourceFilePath.contains(applicationContext.filesDir.path)) {
                        sourceFile.delete()
                    }
                    it
                } catch (e: IOException) {
                    resolver.delete(it, null, null)
                    null
                }
            }
        } else {
            // Android 9 and below - Use direct file access
            val downloadsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)
            if (!downloadsDir.exists()) {
                downloadsDir.mkdirs()
            }
            
            val destFile = File(downloadsDir, fileName)
            try {
                FileInputStream(sourceFile).use { inputStream ->
                    FileOutputStream(destFile).use { outputStream ->
                        inputStream.copyTo(outputStream)
                    }
                }
                // Delete the temporary source file if it was in app directory
                if (sourceFilePath.contains(applicationContext.filesDir.path)) {
                    sourceFile.delete()
                }
                android.net.Uri.fromFile(destFile)
            } catch (e: IOException) {
                null
            }
        }
    }
}

