//
//  Extension + UIView.swift
//  AutorizationForm
//
//  Created by Felix Titov on 6/1/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

extension UIView {
    func addVerticalGradienLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.blue.cgColor
        ]
        

        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradientLayer, at: 2)
//        layer.addSublayer(gradientLayer)
    }
}
