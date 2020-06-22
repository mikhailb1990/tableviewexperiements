//
//  AttributeCell.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/26/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import UIKit

class AttributeCell: UITableViewCell {

    static let reuseID = "AttributeCell"
    
    @IBOutlet weak var keyLabel: UILabel?
    @IBOutlet weak var valueLabel: UILabel?
    
    var item: Attribute? {
        didSet {
            keyLabel?.text = item?.key
            valueLabel?.text = item?.value
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
