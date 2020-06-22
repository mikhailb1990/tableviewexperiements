//
//  Profile.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/23/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import Foundation

class Profile {
    var fullName: String?
    var pictureUrl: String?
    var email: String?
    var about: String?
    var friends = [Friend]()
    var profileAttributes = [Attribute]()
    
    init?(data: Data) {
        do {
            if let json = try JSONSerialization.jsonObject(with: data) as? [String : Any],
                let body = json[Params.data] as? [String : Any] {
                self.fullName = body[Params.Profile.fullName] as? String
                self.pictureUrl = body[Params.Profile.pictureUrl] as? String
                self.about = body[Params.Profile.about] as? String
                self.email = body[Params.Profile.email] as? String
                
                if let friends = body[Params.Profile.friends] as? [[String : Any]] {
                    self.friends = friends.map { Friend(json: $0) }
                }
                
                if let profileAttributes = body[Params.Profile.profileAttributes] as? [[String : Any]] {
                    self.profileAttributes = profileAttributes.map { Attribute(json: $0) }
                }
                
                print(json)
            }
        }
        catch {
            print("Error deserializing JSON file: \(error.localizedDescription)")
            return nil
        }
    }
}
