//
//  AppSession.swift
//  singleton-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import Foundation

class AppSession {
    var userToken: String = ""
    var userEmail: String = ""
    var userId: String = ""
    
    static let shared = AppSession()
    
    init() {}
    
    func setSession(_ token: String, _ email: String, _ uid: String) {
        self.userToken = token
        self.userEmail = email
        self.userId = uid
    }
}
