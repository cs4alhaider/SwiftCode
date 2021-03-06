//
//  ViewController.swift
//  SwiftCode
//
//  Created by Abdullah Alhaider on 5/6/18.
//  Copyright © 2018 Abdullah Alhaider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var themeLabel: UILabel!
    
    let theme = ThemeManager.currentTheme()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = theme.backgroundColor
        themeLabel.textColor = theme.subtitleTextColor
        
        imageView.downloadedFrom(link: "https://cn.pling.com/img/b/7/1/7/e105204712dfa5ed2b3f17254d561ce261fd.jpg", contentMode: .scaleAspectFill)
        
        Helper.shakePhone(style: .heavy)
        
        print(Helper.getDate(format: .ddmmyyyyWithTime))
        
    }

    
    
    
    
    
}
