//
//  ViewController.swift
//  delegate-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import UIKit

class ViewController: UIViewController {

    var dataProvider: DataProvider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataProvider = DataProvider()
        dataProvider.delegate = self
    }

}

extension ViewController: DataContract {
    func onSuccess(_ data: Data) {
        print("Success: \(data)")
    }
    
    func onFailure(_ error: Error) {
        print("Error: \(error.localizedDescription)")
    }
    
}

