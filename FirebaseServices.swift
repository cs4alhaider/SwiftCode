//
//  FirebaseServices.swift
//
//  Created by Abdullah Alhaider on 5/5/18.
//  Copyright © 2018 Abdullah Alhaider. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class FirebaseServices {
    
    /*
    - Call those methods in your ViewController like this -->> FirebaseServices.firebaseSignUp(...)
    */

    class func firebaseSignUp(email:String, password:String, name:String, vc: UIViewController){
        
        Auth.auth().createUser(withEmail: email, password: password) { user, error in
            if error == nil && user != nil {
                print("You can create a user")
                
                // Here you can assin the user first and last name 
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = name
                changeRequest?.commitChanges(completion: { (err) in
                    if err == nil {
                        print("user name has changed")
                        // Do your work here ..
                        vc.dismiss(animated: true, completion: nil)
                    }
                })
            }else{
                print("Error in: \(error!.localizedDescription)")
            }
        }
    }
    
    
    
    class func firebaseSignIn(email: String, password: String, vc: UIViewController){
        
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error == nil && user != nil {
            	// Do your work here ..
                vc.dismiss(animated: true, completion: nil)
            }else{
                print("Error in: \(error!.localizedDescription)")
            }
        }
    }
   
    
    
    
    
}// Class ends.
