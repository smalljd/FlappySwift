//
//  ExtensionDelegate.swift
//  FlappyBird Watchkit Extension
//
//  Created by Small, Jeff on 1/14/16.
//  Copyright © 2016 Fullstack.io. All rights reserved.
//

import WatchKit
import WatchConnectivity

class ExtensionDelegate: NSObject, WKExtensionDelegate, WCSessionDelegate {

//    static var session = WCSession.defaultSession()
    
    func applicationDidFinishLaunching() {
        // Perform any final initialization of your application.
//        ExtensionDelegate.session.delegate = self
    }

    func applicationDidBecomeActive() {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillResignActive() {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, etc.
    }

}
