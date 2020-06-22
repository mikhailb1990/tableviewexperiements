//
//  ProfileViewModelEmailItem.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/23/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import Foundation

class ProfileViewModelEmailItem: ProfileViewModelItem {
    
    var type: ProfileViewModelItemType {
       return .email
    }
    
    var sectionTitle: String {
       return "Email"
    }
    
    var email: String
    
    init(email: String) {
        self.email = email
    }
}
