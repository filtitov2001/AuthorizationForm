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
    
    var welcomeMessage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = welcomeMessage
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.blue.cgColor
        ]
        view.layer.addSublayer(gradientLayer)
        
        view.bringSubviewToFront(elementsStackView)
        
    }
    
    
}
