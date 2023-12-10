//
//  AnalyticsStrategy.swift
//  strategy-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import Foundation

protocol AnalyticsStrategy {
    func logEvent(_ event: String, _ attibutes: [String: Any])
}
