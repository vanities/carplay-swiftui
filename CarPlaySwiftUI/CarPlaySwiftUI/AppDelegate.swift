//
//  AppDelegate.swift
//  CarPlaySwiftUI
//
//  Created by Adam Mischke on 2/8/24.
//

import SwiftUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        if (connectingSceneSession.role == UISceneSession.Role.carTemplateApplication) {
            let scene =  UISceneConfiguration(name: "CarPlay", sessionRole: connectingSceneSession.role)
            scene.delegateClass = CarPlaySceneDelegate.self
            return scene
        } else {
            let scene = UISceneConfiguration(name: "Phone", sessionRole: connectingSceneSession.role)
            scene.delegateClass = SceneDelegate.self
            return scene
        }
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}
