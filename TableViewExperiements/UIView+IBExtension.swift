//
//  UIView+IBExtension.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/26/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat{
        get  {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
}

@IBDesignable
class IBImageView: UIImageView {
    
}
