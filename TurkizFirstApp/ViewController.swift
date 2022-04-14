//
//  ViewController.swift
//  TurkizFirstApp
//
//  Created by Türkiz Candan Şahin on 22.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func TekCiftBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goToTekCift", sender: self)
    }
    
    @IBAction func maxBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goToMax", sender: self)
    }
    
    @IBAction func controlBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLogin", sender: self)
    }
    
}
