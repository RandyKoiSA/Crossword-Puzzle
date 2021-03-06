//
//  AppDelegate.swift
//  Crossword
//
//  Created by Randy Le on 4/7/19.
//  Copyright © 2019 Project Koisa. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
    
        // Create a ButtonStore
        // let buttonStore = ButtonStore()
        // let levelStore = LevelStore()
        
        let game = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "game")
        let menu = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "menu")
        
        let navController : UINavigationController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "navigation") as! UINavigationController
        navController.setViewControllers([menu, game], animated: false)
        navController.popViewController(animated: false)
        window?.rootViewController = navController
        //window?.rootViewController = navController
        // Access the MainController and set its buttonStore
        //let navController = window!.rootViewController as! UINavigationController
        
        // let mainController = navController.topViewController as! MainController
        // mainController.buttonStore = buttonStore
        // mainController.levelStore = levelStore
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

