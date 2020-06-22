//
//  ProfileViewModelAttributeItem.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/23/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import Foundation

class ProfileViewModelAttributeItem: ProfileViewModelItem {
    
    var type: ProfileViewModelItemType {
        return .attribute
    }
    
    var sectionTitle: String {
        return "Attributes"
    }
    
    var rowCount: Int {
        return attributes.count
    }
    
    var attributes: [Attribute]
    
    init(attributes: [Attribute]) {
        self.attributes = attributes
    }
    
}
