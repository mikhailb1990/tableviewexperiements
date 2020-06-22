//
//  Attribute.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/23/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import Foundation

class Attribute {
    var key: String?
    var value: String?
    
    init(json: [String : Any]) {
        self.key = json[Params.key] as? String
        self.value = json[Params.value] as? String
    }
}
