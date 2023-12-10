//
//  EventLogger.swift
//  strategy-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import Foundation

class EventLogger {
    
    var analytics: AnalyticsStrategy
    
    init(_ analytics: AnalyticsStrategy) {
        self.analytics = analytics
    }
    
    func sendEvent(_ event: String, attributes: [String: Any]) {
        analytics.logEvent(event, attributes)
    }
}
