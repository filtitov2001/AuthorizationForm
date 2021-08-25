//
//  WelcomeViewController.swift
//  Autorization
//
//  Created by Феликс Титов on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeMessageLabel: UILabel!
    
    
    var welcomeMessage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = welcomeMessage
    }
    
    
}
