//
//  EmailCell.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/26/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import UIKit

class EmailCell: UITableViewCell {

    static let reuseID = "EmailCell"
    
    @IBOutlet weak var emailLabel: UILabel?
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelEmailItem
                else { return }
            
            emailLabel?.text = item.email
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
