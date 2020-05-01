//
//  SignUpViewController.swift
//  CustomLogin
//
//  Created by catie on 4/30/20.
//  Copyright © 2020 cmp5987. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    func setUpElements(){
        
        //hide error
        errorLabel.alpha = 0
        
        Utilities.styleTextField(firstNameTextField)
        
        Utilities.styleTextField(lastNameTextField)
        
        Utilities.styleTextField(emailTextField)
        
        Utilities.styleTextField(passwordTextField)
        
        Utilities.styleFilledButotn(signUpButton)
        
        
    }
    
    //check the fields and validates that the data is correct. If everything is correct, this method returns nil. Otherwise, it returns the error message
    func validateFields() -> String? {

        //Check all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields"
        
        }
        //Check if password is secure
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            return "Please make sure you have eight characters, a number, and special chracter"
        }
        
        // FIX: Add regular expression to check email format
            
        return  nil
    }
    
    func showError(_ message: String){
        errorLabel.text = message
        errorLabel.alpha = 1
    }

    @IBAction func signUpTapped(_ sender: Any) {
        //Validate the Fields
        let error = validateFields()
        
        if error != nil {
            //there was an error, show error message
            showError(error!)
        }
        
        //Create the user
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (results, err) in
             //check for errors
            
            if err != nil{
                self.showError("Error Creating User")
            }
            else{
                //User was created sucessfully, now store first and last name

                
            }
        }
        
        //transition to home screen
        
    }
    
}
