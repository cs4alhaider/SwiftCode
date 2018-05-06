//
//  UITextField+Extensions.swift
//
//  Created by Abdullah Alhaider on 5/05/18.
//  Copyright © 2018 Abdullah Alhaider. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
    func addUnderlineDesign(){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = #colorLiteral(red: 0.9960784314, green: 1, blue: 0.9958750606, alpha: 1)
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
