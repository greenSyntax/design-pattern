//
//  ViewController.swift
//  builder-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonTitle: AppButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButton()
    }

    private func setButton() {
        // #1
        buttonTitle
            .setTitle("Hello World")
            .setBackgroundColor(.green)
            .setCornerRaius(8.0)
        
        // #2
        _ = AppButton.build(16.0, .green, "Hello World")
    }

}

