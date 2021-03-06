//
//  String+Extensions.swift
//
//  Created by Abdullah Alhaider on 5/05/18.
//  Copyright © 2018 Abdullah Alhaider. All rights reserved.
//

import Foundation

extension String {
    
    
    
    // This helps you when creating sign up page
    var isValidEmail: Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
    
    var isValidNumber: Bool {
        let numberFormat = "^[0-9]*$"
        let numberPredicate = NSPredicate(format:"SELF MATCHES %@", numberFormat)
        return numberPredicate.evaluate(with: self)
    }
    
    
    
    /***********************************************************************************/
    /***********************************************************************************/
    
    
    
    
    // Those methods is to remove the white spacing in a string
    func replace(string:String, replacement:String) -> String {
        return self.replacingOccurrences(of: string, with: replacement, options: NSString.CompareOptions.literal, range: nil)
    }
    // In your code just call removeWhitespace() after a string value 
    func removeWhitespace() -> String {
        return self.replace(string: " ", replacement: "")
    }
    
    
    
    /***********************************************************************************/
    /***********************************************************************************/
    
    
    
    
    
}// Extension ends.

