//
//  FeedViewModel.swift
//  observer-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import Foundation
import Combine

class FeedViewModel {
    @Published var data = ["Abhishek", "Rahul", "Amit"]
    
    func getData() {
        //TODO: Assuming there is some API call, it will update the new Data
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            self.data.append("Ravi")
        })
    }
    
}
