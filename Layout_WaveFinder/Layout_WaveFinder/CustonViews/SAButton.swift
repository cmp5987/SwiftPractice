//
//  SAButton.swift
//  Beginner-Constraints
//
//  Created by Sean Allen on 11/29/18.
//  Copyright © 2018 Sean Allen. All rights reserved.
//

import UIKit

class SAButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        backgroundColor     = UIColor(red: 0.0, green: 0.004, blue: 0.502, alpha: 1.0)
        titleLabel?.font    = UIFont(name: "avenirNextCondensedDemiBold", size: 22)
        layer.cornerRadius  = frame.size.height/2
        setTitleColor(.white, for: .normal)
    }
}
