//
//  AppDelegate.swift
//  Tachiyomi
//
//  Created by Jacob King on 28/08/2021.
//
//

import UIKit
import SharkORM

@main
class AppDelegate: UIResponder, UIApplicationDelegate, SRKDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        SharkORM.setDelegate(self)
        SharkORM.openDatabaseNamed("Tachiyomi")

        if FirstRunHelper.isFirstRun() {
            DatabaseSeeder.seedLocalSource()
            FirstRunHelper.markFirstRunComplete()
        }

        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}
