//
//  ViewController.swift
//  observer-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import UIKit

class ViewController: UIViewController {

    var viewModel = FeedViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Observe the Change
        _ = viewModel.data.publisher.sink { completion in
            switch completion {
            case .finished:
                print("Finished")
            case .failure(let error):
                print("Error :\(error)")
            }
        } receiveValue: { value in
            print("Value: \(value)")
        }

    }
    
}

