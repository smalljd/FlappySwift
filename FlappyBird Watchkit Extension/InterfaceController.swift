//
//  InterfaceController.swift
//  FlappyBird Watchkit Extension
//
//  Created by Small, Jeff on 1/14/16.
//  Copyright © 2016 Fullstack.io. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity
import CoreMotion

class InterfaceController: WKInterfaceController, WCSessionDelegate {

    var session = WCSession.defaultSession()
    var motionManager = CMMotionManager()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        session.delegate = self
        session.activateSession()
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        if motionManager.accelerometerAvailable {
            motionManager.accelerometerUpdateInterval = 0.1
            motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.mainQueue(), withHandler: { (data, error) -> Void in
                guard let data = data else {
                    return
                }
                
                if data.acceleration.y > 1.0 {
                    print("fly bitch!: \(data.acceleration.y)")
                    self.flyButtonTapped()
                }
            })
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func flyButtonTapped() {
//        print("Sending message")
        session.sendMessage(["fly": true], replyHandler: nil, errorHandler: { error in
            print("error sending message: \(error.userInfo)")
        })
    }
}
