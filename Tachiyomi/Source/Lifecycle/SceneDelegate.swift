//
//  SceneDelegate.swift
//  Tachiyomi
//
//  Created by Jacob King on 28/08/2021.
//
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else {
            return
        }

        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = RootTabBarController()
        window?.makeKeyAndVisible()
    }
}
