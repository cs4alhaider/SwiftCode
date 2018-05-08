//
//  Helper.swift
//
//  Created by Abdullah Alhaider on 3/16/18.
//  Copyright © 2018 Abdullah Alhaider. All rights reserved.
//

import Foundation
import UIKit

class Helper {
    
    
    
    static func getDate() -> String {
        
        let theDate = Date()
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "MMMM dd, yyyy 'at' h:mm a"
        formatter.amSymbol = "AM"
        formatter.pmSymbol = "PM"
        
        let formatedDate = formatter.string(from:theDate)
        
        return formatedDate
    }
    
    /****************************************************************************************************/
    /****************************************************************************************************/
    
    
    /*
    - This method is to format numbers like Arabic numbers to EN number and so on with othen languages ...
    - You can call it anywhere like this -->> Helper.formatThisNumber(stringNumber: stringNumber)
    */
    static func formatThisNumber(stringNumber: String) -> String {
        
        let ourNumberStr: String = stringNumber
        let ourFormatter: NumberFormatter = NumberFormatter()
        ourFormatter.locale = NSLocale(localeIdentifier: "EN") as Locale?
        let ourFinal = ourFormatter.number(from: ourNumberStr)
        print(ourFinal!)
        let ourStringNumber = "\(Int(truncating: ourFinal!))"
        
        return ourStringNumber
        
    }
    
    
    /****************************************************************************************************/
    /****************************************************************************************************/
    
    
    enum shakingType {
        case light
        case medium
        case heavy
        case success
        case warning
        case error
    }
    
    static func shakePhone(style: shakingType){
        
        if style == .light {
            let lightGenerator = UIImpactFeedbackGenerator(style: .light)
            lightGenerator.impactOccurred()
        }
        
        if style == .medium {
            let mediumGenerator = UIImpactFeedbackGenerator(style: .medium)
            mediumGenerator.impactOccurred()
        }
        
        if style == .heavy {
            let heavyGenerator = UIImpactFeedbackGenerator(style: .heavy)
            heavyGenerator.impactOccurred()
        }
        
        if style == .success {
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.success)
        }
        
        if style == .warning {
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.warning)
        }
        
        if style == .error {
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.error)
        }
        
    }
    
    
    /****************************************************************************************************/
    /****************************************************************************************************/
    
    
    
    // This method require UIDevice+Extensions.swift
    static func disabledForSome(){
        
        let device = UIDevice.current.modelName
        
        if  device == "Simulator" ||
            device == "iPad 2" ||
            device == "iPad 3" ||
            device == "iPad 4" ||
            device == "iPad Air" ||
            device == "iPad Air 2" ||
            device == "iPad 5" ||
            device == "iPad Mini" ||
            device == "iPad Mini 2" ||
            device == "iPad Mini 3" ||
            device == "iPad Mini 4" ||
            device == "iPad Pro 9.7 Inch" ||
            device == "iPad Pro 12.9 Inch" ||
            device == "iPad Pro 12.9 Inch 2. Generation" ||
            device == "iPad Pro 10.5 Inch" {
            
            //Do something here like button.isHidden = true ...
        }
    }
    
 
    
    /****************************************************************************************************/
    /****************************************************************************************************/
    
    
    
    static func showBasicAlert(title: String, message: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
    
    
    
    /****************************************************************************************************/
    /****************************************************************************************************/
    
    
    
    
}// Class ends.

