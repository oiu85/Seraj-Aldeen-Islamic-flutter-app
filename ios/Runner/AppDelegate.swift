import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // Setup method channel for iOS file operations
    guard let controller = window?.rootViewController as? FlutterViewController else {
      return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    let fileManagerChannel = FlutterMethodChannel(
      name: "com.swbai.serajaldeen/filemanager",
      binaryMessenger: controller.binaryMessenger
    )

    fileManagerChannel.setMethodCallHandler { [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) in
      guard let self = self else {
        result(FlutterError(code: "UNAVAILABLE", message: "AppDelegate unavailable", details: nil))
        return
      }

      switch call.method {
      case "saveFileToDownloads":
        if let args = call.arguments as? [String: Any],
           let filePath = args["filePath"] as? String,
           let fileName = args["fileName"] as? String {

          let savedPath = self.saveFileToDownloads(filePath: filePath, fileName: fileName)
          result(savedPath)
        } else {
          result(FlutterError(code: "INVALID_ARGUMENT", message: "filePath and fileName are required", details: nil))
        }
      default:
        result(FlutterMethodNotImplemented)
      }
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func saveFileToDownloads(filePath: String, fileName: String) -> String? {
    let sourceURL = URL(fileURLWithPath: filePath)

    let fileManager = FileManager.default
    guard fileManager.fileExists(atPath: filePath) else {
      return nil
    }

    do {
      // Create file URL in app's Documents directory (accessible via Files app with iTunes/File Sharing)
      let documentsDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
      let destinationURL = documentsDirectory.appendingPathComponent(fileName)

      // Remove existing file if present
      if fileManager.fileExists(atPath: destinationURL.path) {
        try fileManager.removeItem(at: destinationURL)
      }

      // Copy file to Documents directory
      try fileManager.copyItem(at: sourceURL, to: destinationURL)

      // Present share sheet to user so they can save to Files app
      if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
         let rootViewController = windowScene.windows.first?.rootViewController {
        DispatchQueue.main.async {
          let activityVC = UIActivityViewController(
            activityItems: [destinationURL],
            applicationActivities: nil
          )

          // For iPad support
          if let popoverController = activityVC.popoverPresentationController {
            popoverController.sourceView = rootViewController.view
            popoverController.sourceRect = CGRect(x: rootViewController.view.bounds.midX, y: rootViewController.view.bounds.midY, width: 0, height: 0)
            popoverController.permittedArrowDirections = []
          }

          rootViewController.present(activityVC, animated: true, completion: nil)
        }
      }

      return destinationURL.path
    } catch {
      print("Error saving file: \(error.localizedDescription)")
      return nil
    }
  }
}
