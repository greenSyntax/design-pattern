//
//  HomeFeeds.swift
//  memento-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import Foundation

class HomeFeedCareTaker {
    private var keyName = "feeds_data"
    private var memento: Data?
    
    // Convert Originator -> Memento and Persist
    func save(_ originator: PostsResponse) {
        self.memento = try? JSONEncoder().encode(originator)
        UserDefaults.standard.setValue(self.memento, forKey: keyName)
    }
    
    // Get Memento -> Originator
    func load() -> PostsResponse? {
        if let memento = UserDefaults.value(forKey: keyName) as? Data {
            return try? JSONDecoder().decode(PostsResponse.self, from: memento)
        }
        return nil
    }
    
}
