//
//  LaunchScreenViewController.swift
//  AutorizationForm
//
//  Created by Felix Titov on 6/1/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class UserViewController: UIViewController {

    @IBOutlet var photoImageView: UIImageView!
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var birthDateLabel: UILabel!
    
    @IBOutlet var birthCountryLabel: UILabel!
    @IBOutlet var livingCountryLabel: UILabel!
    
    @IBOutlet var languagesLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = user.person.fullName
        birthDateLabel.text = user.person.birthDate
        birthCountryLabel.text = user.person.countryOfBirth
        livingCountryLabel.text = user.person.countryOfLife
        
        languagesLabel.text = user.person.languages.joined(separator: ", ")

        photoImageView.image = UIImage(named: user.person.image)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        
        imageVC.user = user
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
    }

}
