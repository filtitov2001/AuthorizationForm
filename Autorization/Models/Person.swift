//
//  Person.swift
//  AutorizationForm
//
//  Created by Felix Titov on 5/31/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

struct Person {
    let name: String
    let surname: String

    let image: String
    
    let birthDate: String
    
    let countryOfBirth: String
    let countryOfLife: String
    
    let languages: [String]
    
    var fullName: String {
        name + " " + surname
    }
    
}
