//
//  WelcomeViewController.swift
//  Autorization
//
//  Created by Феликс Титов on 25.08.2021.
//

import UIKit


class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeMessageLabel: UILabel!
    @IBOutlet var elementsStackView: UIStackView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Welcome, \(user.person.fullName)!"
        
        view.addVerticalGradienLayer()
        
        view.bringSubviewToFront(elementsStackView)
        
    }
    
    
}
