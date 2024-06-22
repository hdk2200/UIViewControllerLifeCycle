//
// Copyright (c) 2024, ___ORGANIZATIONNAME___ All rights reserved.
//
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    print("didFinishLaunchingWithOptions")

    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    print("configurationForConnecting")
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    print("didDiscardSceneSessions")
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }

  // アプリがアクティブになったときに呼び出されます。
  func applicationDidBecomeActive(_ application: UIApplication) {
       print("applicationDidBecomeActive")
  }

  // アプリが非アクティブになる直前に呼び出されます。
  func applicationWillResignActive(_ application: UIApplication) {
    print("applicationWillResignActive")
  }

  // アプリがバックグラウンドに入ったときに呼び出されます。
  func applicationDidEnterBackground(_ application: UIApplication) {
    print("applicationDidEnterBackground")
  }

  // アプリがフォアグラウンドに戻ったときに呼び出されます。
  func applicationWillEnterForeground(_ application: UIApplication) {
    print("applicationWillEnterForeground")
  }

  // アプリが終了する直前に呼び出されます。
  func applicationWillTerminate(_ application: UIApplication) {
    print("applicationWillTerminate")
  }

  // メモリ警告が発生したときに呼び出されます。
  func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    print("applicationDidReceiveMemoryWarning")
  }
}
