//
//  MaxViewController.swift
//  TurkizFirstApp
//
//  Created by Türkiz Candan Şahin on 27.02.2022.
//

import UIKit

class MaxViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet weak var firstNumberTF: UITextField!
    @IBOutlet weak var secondNumberTF: UITextField!
    @IBOutlet weak var thirdNumberTF: UITextField!
    
    
    
    
    @IBAction func girBtn(_ sender: UIButton) {
        if(firstNumberTF.text != "" && secondNumberTF.text != "" && thirdNumberTF.text != "" ){
            let  num1 = Int(firstNumberTF.text!)!
            let  num2 = Int(secondNumberTF.text!)!
            let  num3 = Int(thirdNumberTF.text!)!
            
            if(num1 > num2 && num1 > num3){
                resultLabel.text = "En büyük sayı \(num1)"
            }else if (num2 > num3 && num2 > num1){
                resultLabel.text = "En büyük sayı \(num2)"
            }else{
                resultLabel.text = "En büyük sayı \(num3)"
            }
        }else if(firstNumberTF.text == "" || secondNumberTF.text == "" || thirdNumberTF.text == "" ){
            resultLabel.text = "Tüm sayıları giriniz"
        }
    }
    
    
    @IBAction func backBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
