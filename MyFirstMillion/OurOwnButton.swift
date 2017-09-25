//
//  OurOwnButtonn.swift
//  MyFirstMillion
//
//  Created by Вячеслав Горлов on 25.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import UIKit

class OurOwnButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 5
        self.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.layer.borderWidth = 2.0
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
