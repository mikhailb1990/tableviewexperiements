//
//  ProfileViewModel.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/23/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import UIKit

class ProfileViewModel: NSObject {
    
    var items = [ProfileViewModelItem]()
    
    override init() {
        super.init()
        guard let data = dataFromFile("ServerData"), let profile = Profile(data: data)
            else { return }
        
        if let name = profile.fullName, let pictureUrl = profile.pictureUrl {
            let nameAndPictureItem = ProfileViewModelNameItem(pictureUrl: pictureUrl, username: name)
            items.append(nameAndPictureItem)
        }
        
        if let about = profile.about {
            let aboutItem = ProfileViewModelAboutItem(about: about)
            items.append(aboutItem)
        }
        
        if let email = profile.email {
            let emailItem = ProfileViewModelEmailItem(email: email)
            items.append(emailItem)
        }
        
        let friends = profile.friends
        if !friends.isEmpty {
            let friendsItem = ProfileViewModelFriendsItem(friends: friends)
            items.append(friendsItem)
        }
        
        let attributes = profile.profileAttributes
        if !attributes.isEmpty {
            let attributesItem = ProfileViewModelAttributeItem(attributes: attributes)
            items.append(attributesItem)
        }
    }
}

extension ProfileViewModel: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].rowCount
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return items[section].sectionTitle
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.section]
        switch item.type {
        case .nameAndPicture:
            if let cell = tableView.dequeueReusableCell(withIdentifier: NameAndPictureCell.reuseID, for: indexPath) as? NameAndPictureCell {
                cell.item = item
                return cell
            }
        case .about:
            if let cell = tableView.dequeueReusableCell(withIdentifier: AboutCell.reuseID, for: indexPath) as? AboutCell {
                cell.item = item
                return cell
            }
        case .email:
            if let cell = tableView.dequeueReusableCell(withIdentifier: EmailCell.reuseID, for: indexPath) as? EmailCell {
                cell.item = item
                return cell
            }
        case .friend:
            if let cell = tableView.dequeueReusableCell(withIdentifier: FriendCell.reuseID, for: indexPath) as? FriendCell, let item = item as? ProfileViewModelFriendsItem {
                cell.item = item.friends[indexPath.row]
                return cell
            }
        case .attribute:
            if let cell = tableView.dequeueReusableCell(withIdentifier: AttributeCell.reuseID, for: indexPath) as? AttributeCell, let item = item as? ProfileViewModelAttributeItem {
                cell.item = item.attributes[indexPath.row]
                return cell
            }
        }
        
        return UITableViewCell()
    }
}
