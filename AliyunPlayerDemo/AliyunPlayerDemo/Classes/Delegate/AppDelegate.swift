//
//  AppDelegate.swift
//  AliyunPlayerDemo
//
//  Created by Daniel on 2020/6/8.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let tabBar = TabBarController()
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
        
        return true
    }



}

