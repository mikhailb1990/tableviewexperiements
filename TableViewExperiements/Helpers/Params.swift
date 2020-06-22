//
//  Params.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/23/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import Foundation

public struct Params {
    
    static let data: String = "data"
    static let key: String = "key"
    static let value: String = "value"
    
    struct Profile {
        static let fullName: String = "fullName"
        static let pictureUrl: String = "pictureUrl"
        static let about: String = "about"
        static let email: String = "email"
        static let friends: String = "friends"
        static let profileAttributes: String = "profileAttributes"
    }
    
    struct Friend {
        static let name: String = "name"
        static let pictureUrl: String = "pictureUrl"
    }
}
