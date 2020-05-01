//
//  ViewController.swift
//  CustomLogin
//
//  Created by catie on 4/30/20.
//  Copyright © 2020 cmp5987. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        setupElements()
    }

    func setupElements(){
        Utilities.styleFilledButotn(signUpButton)
        Utilities.styleFilledButotn(loginButton)
    }
}

