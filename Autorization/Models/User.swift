//
//  User.swift
//  AutorizationForm
//
//  Created by Felix Titov on 5/31/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

struct User {
    let username: String
    let password: String
    
    let person: Person
    
    static func getUser() -> User {
        User(
            username: "User",
            password: "Password",
            person: Person(
                name: "Felix",
                surname: "Titov",
                image: "IMG_0578",
                birthDate: "19.05.2001",
                countryOfBirth: "Uzbekistan",
                countryOfLife: "Russia",
                languages: ["Russian", "English", "German", "Spanish", "Ukranian"]
            )
        )
    }
}
