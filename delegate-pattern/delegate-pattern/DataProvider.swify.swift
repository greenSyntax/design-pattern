//
//  DataProvider.swify.swift
//  delegate-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import Foundation

protocol DataContract: AnyObject {
    func onSuccess(_ data: Data)
    func onFailure(_ error: Error)
}

class DataProvider {
    
    weak var delegate: DataContract?
    
    func getDataFromServer() {
        URLSession.shared.dataTask(with: URLRequest(url: URL(string: "")!)) { data, response, error in
            //onFailure
            if let err = error {
                self.delegate?.onFailure(err)
            }
            
            //onSuccess
            if let data = data {
                self.delegate?.onSuccess(data)
            }
        }.resume()
    }
    
}
