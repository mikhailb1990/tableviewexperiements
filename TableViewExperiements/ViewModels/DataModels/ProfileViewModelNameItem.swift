//
//  ProfileViewModelNameItem.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/23/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import Foundation

class ProfileViewModelNameItem: ProfileViewModelItem {
    
    var type: ProfileViewModelItemType {
        return .nameAndPicture
    }
    
    var sectionTitle: String {
        return "Main Info"
    }
    
    var pictureUrl: String?
    var username: String?
    
    init(pictureUrl: String, username: String) {
        self.pictureUrl = pictureUrl
        self.username = username
    }
}
