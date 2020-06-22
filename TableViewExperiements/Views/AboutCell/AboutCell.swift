//
//  AboutCell.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/26/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import UIKit

class AboutCell: UITableViewCell {

    static let reuseID = "AboutCell"
    
    @IBOutlet weak var aboutLabel: UILabel?
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelAboutItem
                else { return }
            aboutLabel?.text = item.about
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
