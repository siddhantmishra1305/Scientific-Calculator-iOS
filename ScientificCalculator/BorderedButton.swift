//
//  CustomButton.swift
//  ScientificCalculator
//
//  Created by Siddhant Mishra on 22/02/19.
//  Copyright © 2019 Siddhant Mishra. All rights reserved.
//

import UIKit

class BorderedButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 90 * 0.5
        clipsToBounds = true
        contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
}
