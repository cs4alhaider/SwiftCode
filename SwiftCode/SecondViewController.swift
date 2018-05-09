//
//  SecondViewController.swift
//  SwiftCode
//
//  Created by Abdullah Alhaider on 5/6/18.
//  Copyright © 2018 Abdullah Alhaider. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var titelLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    let theme = ThemeManager.currentTheme()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.view.backgroundColor = theme.backgroundColor
        titelLabel.textColor = theme.titleTextColor
        subtitleLabel.textColor = theme.subtitleTextColor
        
        
    }

    
    

}
