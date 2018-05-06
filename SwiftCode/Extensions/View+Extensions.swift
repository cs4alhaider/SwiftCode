//
//  View+Extensions.swift
//
//  Created by Abdullah Alhaider on 5/05/18.
//  Copyright © 2018 Abdullah Alhaider. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    /**
     Adds a vertical gradient layer with two **UIColors** to the **UIView**.
     - Parameter topColor: The top **UIColor**.
     - Parameter bottomColor: The bottom **UIColor**.
     */
    
    func addVerticalGradientLayer(topColor:UIColor, bottomColor:UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [
            topColor.cgColor,
            bottomColor.cgColor
        ]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        self.layer.insertSublayer(gradient, at: 0)
    }
}
// To use it in you viewDidLoad() -->> view.addVerticalGradientLayer(topColor: UIColor.black, bottomColor: UIColor.red)
