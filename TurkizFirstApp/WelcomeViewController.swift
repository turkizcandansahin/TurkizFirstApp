//
//  WelcomeViewController.swift
//  TurkizFirstApp
//
//  Created by Türkiz Candan Şahin on 27.02.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    var welcome = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Hoşgeldin \(welcome)!"
    }

}
