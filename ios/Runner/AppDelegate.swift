import Flutter
import UIKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AIzaSyDXMQE17ACmeABDg6iXS50xkiZADFMwT6I")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
