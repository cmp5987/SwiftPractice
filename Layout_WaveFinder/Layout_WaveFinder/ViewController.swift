//
//  ViewController.swift
//  Layout_WaveFinder
//
//  Created by catie on 4/30/20.
//  Copyright © 2020 cmp5987. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let backgroundImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setBackground()
    }

    func setBackground(){
        view.addSubview(backgroundImageView)
        //lets xcode know you are using auto layout
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        //now we do anchors
        //pin the whole view so it doesn't have any space
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive =  true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "background-wave")
        
        view.sendSubviewToBack(backgroundImageView)
    }

}

