//
//  TekCiftViewController.swift
//  TurkizFirstApp
//
//  Created by Türkiz Candan Şahin on 27.02.2022.
//

import UIKit

class TekCiftViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    
    
    @IBAction func girbtn(_ sender: UIButton) {
        
        if (numberTextField.text != ""){
            let num = Int(numberTextField.text!)!
            if(num%2 == 0){
                resultLabel.text = "Bu sayı çifttir"
            }else{
                resultLabel.text = "Bu sayı tektir"
            }
        }else{
            resultLabel.text = "Bir sayı giriniz!"
        }
        

    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

