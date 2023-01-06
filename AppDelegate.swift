//
//  AppDelegate.swift
//  Provinha
//
//  Created by Lucas Parolin on 06/01/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let navigationView =  UINavigationController(rootViewController: ViewController())
        navigationView.navigationBar.tintColor = .black
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .red
        window?.rootViewController = navigationView
        return true
    }
}
