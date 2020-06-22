//
//  ProfileViewModelFriendsItem.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/23/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import Foundation

class ProfileViewModelFriendsItem: ProfileViewModelItem {
    
    var type: ProfileViewModelItemType {
        return .friend
    }
    
    var sectionTitle: String {
       return "Friends"
    }
    
    var rowCount: Int {
        return friends.count
    }
    
    var friends: [Friend]
    
    init(friends: [Friend]) {
        self.friends = friends
    }
    
}
