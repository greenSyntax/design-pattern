//
//  ViewController.swift
//  singleton-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set Once you get the Data
        AppSession.shared.setSession("xxxx", "xxx@gmail.com", "x1334")
        
        // Whenever You want to use
        print(AppSession.shared.userToken)
        
    }


}

