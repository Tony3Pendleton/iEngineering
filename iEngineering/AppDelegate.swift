//
//  AppDelegate.swift
//  PengRobEOS
//
//  Created by Anthony on 11/18/17.
//  Copyright © 2017 Equations of State. All rights reserved.
//

import UIKit

@UIApplicationMain



//class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {
//
//    var window: UIWindow?
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
//        // Override point for customization after application launch.
//        let splitViewController = window!.rootViewController as! UISplitViewController
//        let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
//        navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem
//        splitViewController.preferredDisplayMode = .allVisible
//        splitViewController.delegate = self
//
//        UISearchBar.appearance().tintColor = .candyGreen
//        UINavigationBar.appearance().tintColor = .candyGreen
//
//        return true
//    }
//
//    // MARK: - Split view
//    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController:UIViewController, onto primaryViewController:UIViewController) -> Bool {
//        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
//        guard let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController else { return false }
//        if topAsDetailController.detailCandy == nil {
//            // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
//            return true
//        }
//        return false
//    }
//
//}
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate  {
//added UISplitViewControllerDelegate when trying to create search feature
    var window: UIWindow?
    
//    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
//        // Override point for customization after application launch.
//        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let navigationController:UINavigationController = storyboard.instantiateInitialViewController() as UINavigationController
//        let rootViewController:UIViewController = storyboard.instantiateViewControllerWithIdentifier("VC") as UIViewController
//        navigationController.viewControllers = [rootViewController]
//        self.window?.rootViewController = navigationController
//        return true
//    }
    
    
    
        //------------------------------------- 1a start
    var didRotate: (Notification) -> Void = { notification in
        switch UIDevice.current.orientation {
        case .landscapeLeft, .landscapeRight:
            print("landscape")
        case .portrait, .portraitUpsideDown:
            print("Portrait")
        default:
            print("other")
        }
    }
     //------------------------------------- 1a end
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //UIApplication.shared.statusBarStyle = .lightContent // I ADDDED THIS 11302017 1412 This makes the status bar text up at the top //// commented out, to get back to black text
        UINavigationBar.appearance().clipsToBounds = true
        
        let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
        
        statusBar.backgroundColor = UIColor.white // NOTE: Status Bar is the relating to the top of screen where wifi, cellular signal and time, etc. is located
        // Override point for customization after application launch.
      //  return true
        
        //------------added when trying to create search feature
          //      let splitViewController = window!.rootViewController as! UISplitViewController
//                let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
//                navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem
//                splitViewController.preferredDisplayMode = .allVisible
//                splitViewController.delegate = self
//
                UISearchBar.appearance().tintColor = .black
               UINavigationBar.appearance().tintColor = .black
        UINavigationBar.appearance().barTintColor = .white
        //-------------------------------------
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let storyboard = UIStoryboard.init(name: "refactored_calculator_storyboard", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "myCalculatorViewController") as! myCalculatorViewController
        let navigationController = UINavigationController.init(rootViewController: viewController)
        self.window?.rootViewController = navigationController
        
        self.window?.makeKeyAndVisible()
        
        
        //------------------------------------- 1b start
//        NotificationCenter.default.addObserver(forName: .UIDeviceOrientationDidChange, object: nil, queue: .main, using: didRotate)
//
//            NotificationCenter.default.removeObserver(self, name: .UIDeviceOrientationDidChange, object: nil)

        //------------------------------------- 1b end

        
        return true
        
    
        
    }
    //------------added when trying to create search feature
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController:UIViewController, onto primaryViewController:UIViewController) -> Bool {
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
        guard let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController else { return false }
        if topAsDetailController.detailCandy == nil {
            // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
            return true
        }
        return false
    }
    //-------------------------------------
    
    
   
    
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

