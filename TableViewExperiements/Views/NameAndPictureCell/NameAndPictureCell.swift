//
//  NameAndPictureCell.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/26/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import UIKit

class NameAndPictureCell: UITableViewCell {

    static let reuseID = "NameAndPictureCell"
    
    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var pictureImageView: IBImageView?
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelNameItem
                else { return }
            
            nameLabel?.text = item.username
            pictureImageView?.image = UIImage(named: item.pictureUrl!)
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
