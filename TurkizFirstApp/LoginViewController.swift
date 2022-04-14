//
//  LoginViewController.swift
//  TurkizFirstApp
//
//  Created by Türkiz Candan Şahin on 27.02.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var controlLabel: UILabel!
    @IBOutlet weak var girisBtn: UIButton!
    
    
    @IBAction func loginBtn(_ sender: UIButton) {
        
        if(nameTextField.text  != "" && passwordTextField.text !=  ""){
            
            if(nameTextField.text  == "turkiz" && passwordTextField.text ==  "123"){
                performSegue(withIdentifier: "goToWelcome", sender: self)
                
            }else{
                nameTextField.backgroundColor = UIColor.red
                passwordTextField.backgroundColor = UIColor.red
            }
        }else{
            controlLabel.text = "İsim ve şifre giriniz!"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToWelcome" {
            let destinationVC = segue.destination as! WelcomeViewController
            
            destinationVC.welcome = (nameTextField.text!)
            
        }
    }
    
    
    
    @IBAction func backBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
