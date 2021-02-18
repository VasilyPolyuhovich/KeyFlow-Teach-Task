//
//  AppDelegate.swift
//  KeyFlow-Teach-Task
//
//  Created by Vasyl Poliukhovych on 18.02.2021.
//

import UIKit
import DITranquillity

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationDidFinishLaunching(_ application: UIApplication) {
        let container = DIContainer()
        container.append(framework: AppFramework.self)

        #if DEBUG
        if !container.makeGraph().checkIsValid(checkGraphCycles: true) {
            fatalError("invalid graph")
        }
        #endif

        window = UIWindow(frame: UIScreen.main.bounds)

        let storyboard: UIStoryboard = container.resolve(name: "Main")
        window?.rootViewController = storyboard.instantiateInitialViewController()
        window?.makeKeyAndVisible()
    }
}

