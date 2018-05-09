//
//  ThemeManger.swift
//  SwiftCode
//
//  Created by Abdullah Alhaider on 5/9/18.
//  Copyright © 2018 Abdullah Alhaider. All rights reserved.
//

import UIKit
import Foundation


enum Theme: Int {
    
    case light
    case dark
    
    var mainColor: UIColor {
        
        switch self {
        case .light:
            return UIColor().colorFromHexString("ffffff")
        case .dark:
            return UIColor().colorFromHexString("000000")
        }
    }
    
    //Customizing the Navigation Bar
    var barStyle: UIBarStyle {
        switch self {
        case .light:
            return .default
        case .dark:
            return .black
        }
    }
    
    // if you set a navigation background image uncomment the below
    
//    var navigationBackgroundImage: UIImage? {
//        return self == .light ? UIImage(named: "navBackground") : nil
//    }
    
    
    
    // if you set a tab bar image uncomment the below
    
//    var tabBarBackgroundImage: UIImage? {
//        return self == .light ? UIImage(named: "tabBarBackground") : nil
//    }
    
    var backgroundColor: UIColor {
        switch self {
        case .light:
            return UIColor().colorFromHexString("ffffff")
        case .dark:
            return UIColor().colorFromHexString("000000")
        }
    }
    
    var secondaryColor: UIColor {
        switch self {
        case .light:
            return UIColor().colorFromHexString("000000")
        case .dark:
            return UIColor().colorFromHexString("ffffff")
        }
    }
    
    var titleTextColor: UIColor {
        switch self {
        case .light:
            return UIColor().colorFromHexString("000000")
        case .dark:
            return UIColor().colorFromHexString("ffffff")
        }
    }
    
    var subtitleTextColor: UIColor {
        switch self {
        case .light:
            return UIColor().colorFromHexString("000000")
        case .dark:
            return UIColor().colorFromHexString("ffffff")
        }
    }
    
    var shadowColor: UIColor {
        switch self {
        case .light:
            return UIColor().colorFromHexString("000000")
        case .dark:
            return UIColor().colorFromHexString("ffffff")
        }
    }
    
}// enum ends here


/********************************************************************************************************/
/********************************************************************************************************/


// This will let you use a theme in the app.
class ThemeManager {
    
    
    // ThemeManager
    static func currentTheme() -> Theme {
        if let storedTheme = (UserDefaults.standard.value(forKey: "SelectedTheme") as AnyObject).integerValue {
            return Theme(rawValue: storedTheme)!
        } else {
            return .dark
        }
    }
    
    
    
    static func applyTheme(theme: Theme) {
        
        // First persist the selected theme using UserDefaults.
        UserDefaults.standard.setValue(theme.rawValue, forKey: "SelectedTheme")
        
        
        // You get your current (selected) theme and apply the main color to the tintColor property of your application’s window.
        let sharedApplication = UIApplication.shared
        sharedApplication.delegate?.window??.tintColor = theme.mainColor
        
        UINavigationBar.appearance().barStyle = theme.barStyle
//        UINavigationBar.appearance().setBackgroundImage(theme.navigationBackgroundImage, for: .default)
//        UINavigationBar.appearance().backIndicatorImage = UIImage(named: "backArrow")
//        UINavigationBar.appearance().backIndicatorTransitionMaskImage = UIImage(named: "backArrowMaskFixed")
        
        UITabBar.appearance().barStyle = theme.barStyle
        UITabBar.appearance().tintColor = theme.titleTextColor
//        UITabBar.appearance().backgroundImage = theme.tabBarBackgroundImage
        
        
        
        
        // if set any image uncomment the below
/*
        let tabIndicator = UIImage(named: "tabBarSelectionIndicator")?.withRenderingMode(.alwaysTemplate)
        let tabResizableIndicator = tabIndicator?.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 2.0, bottom: 0, right: 2.0))
        UITabBar.appearance().selectionIndicatorImage = tabResizableIndicator

        let controlBackground = UIImage(named: "controlBackground")?.withRenderingMode(.alwaysTemplate)
            .resizableImage(withCapInsets: UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3))
        let controlSelectedBackground = UIImage(named: "controlSelectedBackground")?
            .withRenderingMode(.alwaysTemplate)
            .resizableImage(withCapInsets: UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3))
*/
        
        
        
        // if you any UISegmentedControl uncomment the below
        
//        UISegmentedControl.appearance().setBackgroundImage(controlBackground, for: .normal, barMetrics: .default)
//        UISegmentedControl.appearance().setBackgroundImage(controlSelectedBackground, for: .selected, barMetrics: .default)
        
        
        
        
        // if you any UIStepper uncomment the below
        
//        UIStepper.appearance().setBackgroundImage(controlBackground, for: .normal)
//        UIStepper.appearance().setBackgroundImage(controlBackground, for: .disabled)
//        UIStepper.appearance().setBackgroundImage(controlBackground, for: .highlighted)
//        UIStepper.appearance().setDecrementImage(UIImage(named: "fewerPaws"), for: .normal)
//        UIStepper.appearance().setIncrementImage(UIImage(named: "morePaws"), for: .normal)

        
        
        
        // if you any UISlider uncomment the below
        
//        UISlider.appearance().setThumbImage(UIImage(named: "sliderThumb"), for: .normal)
//        UISlider.appearance().setMaximumTrackImage(UIImage(named: "maximumTrack")?
//            .resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 0.0, bottom: 0, right: 6.0)), for: .normal)
//        UISlider.appearance().setMinimumTrackImage(UIImage(named: "minimumTrack")?
//            .withRenderingMode(.alwaysTemplate)
//            .resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 6.0, bottom: 0, right: 0)), for: .normal)

        
        
        
        // if you any UISwitch uncomment the below
        
//        UISwitch.appearance().onTintColor = theme.mainColor.withAlphaComponent(0.3)
//        UISwitch.appearance().thumbTintColor = theme.mainColor
    }
    
}
