//
//  ImageViewController.swift
//  AutorizationForm
//
//  Created by Felix Titov on 6/2/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: user.person.image)
    }
    
   override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.layer.cornerRadius = imageView.frame.width / 2

    }

}
