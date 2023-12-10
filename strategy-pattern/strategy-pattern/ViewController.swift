//
//  ViewController.swift
//  strategy-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import UIKit

class ViewController: UIViewController {

    //var eventLogger = EventLogger(FirebaseAnalytics())
    var eventLogger = EventLogger(MoengageAnalytics())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eventLogger.sendEvent("VC_LOAD", attributes: ["user_id": "xxxxx", "platform": "ios"])
    }


}

