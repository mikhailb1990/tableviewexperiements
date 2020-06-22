//
//  FriendCell.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/26/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {

    static let reuseID = "FriendCell"
    
    @IBOutlet weak var pictureImageview: IBImageView?
    @IBOutlet weak var nameLabel: UILabel?
    
    var item: Friend? {
        didSet {
            guard let item = item
                else { return }
            
            nameLabel?.text = item.name
            if let pictureUrl = item.pictureUrl {
                pictureImageview?.image = UIImage(named: pictureUrl)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
