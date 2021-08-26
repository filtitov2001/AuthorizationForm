//
//  ViewController.swift
//  Autorization
//
//  Created by Феликс Титов on 25.08.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    let userName = "User"
    let password = "Password"

    @IBOutlet var userNameText: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameText.delegate = self
        passwordText.delegate = self
        
        userNameText.returnKeyType = .next
        passwordText.returnKeyType = .done
        
        passwordText.enablesReturnKeyAutomatically = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.welcomeMessage = "Welcome, " + (userNameText.text ?? "") + "!"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case userNameText:
            userNameText.resignFirstResponder()
            passwordText.becomeFirstResponder()
        case passwordText:
            passwordText.resignFirstResponder()
            logInAction()
        default:
            textField.resignFirstResponder()
        }
        
        return true
    }

    @IBAction func showUsernamePrompting() {
        showAlert(with: "Ooops!", and: "Your name is \(userName) 😉")
    }
    
    
    @IBAction func showPasswordPrompting() {
        showAlert(with: "Ooops!", and: "Your password is \(password) 😉")
    }
    
    @IBAction func logInAction() {
        guard let inputUserName = userNameText.text, !inputUserName.isEmpty else {
            showAlert(
                with: "Text field is emplty!",
                and: "Input your User name and password")
            return
        }
        
        guard let inputPassword = passwordText.text, !inputPassword.isEmpty else {
            showAlert(
                with: "Text field is emplty!",
                and: "Input your User name and password"
            )
            return
        }
        
        if inputUserName != userName || inputPassword != password {
            showAlert(
                with: "Invalid username or password!",
                and: "Please, enter correct login and password"
            )
        }
      
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameText.text = ""
        passwordText.text = ""
    }
    
}

// MARK: - Private methods
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordText.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
