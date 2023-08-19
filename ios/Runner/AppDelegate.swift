import UIKit
import Flutter
import YandexMapsMobile

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let yandexMapKitApiKey = Bundle.main.object(forInfoDictionaryKey: "YandexMapApiKey") as? String

    if (yandexMapKitApiKey != nil) {
      YMKMapKit.setApiKey(yandexMapKitApiKey!)
    }

    GeneratedPluginRegistrant.register(with: self)
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
