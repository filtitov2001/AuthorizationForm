//
//  WelcomeViewController.swift
//  Autorization
//
//  Created by Felix Titov on 25.08.2021.
//  Copyright © 2021 by Felix Titov. All rights reserved.
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
