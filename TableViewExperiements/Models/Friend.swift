//
//  Friend.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/23/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import Foundation

class Friend {
    var name: String?
    var pictureUrl: String?
    
    init(json: [String : Any]) {
        self.name = json[Params.Friend.name] as? String
        self.pictureUrl = json[Params.Friend.pictureUrl] as? String
    }
}
