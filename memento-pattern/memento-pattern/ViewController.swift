//
//  ViewController.swift
//  memento-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import UIKit

class ViewController: UIViewController {

    let careTaker = HomeFeedCareTaker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        careTaker.save(PostsResponse())
    }


}

