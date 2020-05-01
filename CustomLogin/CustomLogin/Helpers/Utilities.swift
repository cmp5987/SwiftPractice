//
//  Utilities.swift
//  CustomLogin
//
//  Created by catie on 4/30/20.
//  Copyright © 2020 cmp5987. All rights reserved.
//

import Foundation
import UIKit

class Utilities{
    
    static func styleTextField(_ textfield:UITextField){
        
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        
        bottomLine.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        
        textfield.borderStyle = .none
        
        textfield.layer.addSublayer(bottomLine)
    }
    static func styleFilledButotn(_ button:UIButton){
        button.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    static func styleHollowButton(_ button:UIButton){
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius =  25.0
        button.tintColor = UIColor.black
        
    }
    static func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "Self Matches %@",
        "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
}
