//
//  ViewController.swift
//  Autorization
//
//  Created by Феликс Титов on 25.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    let user = User.getUser()

    @IBOutlet var userNameText: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! UserViewController
                userInfoVC.user = user
            }

        }
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.user = user
        
    }
    
    @IBAction func forgotDataTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(with: "Ooops!", and: "Your name is \(user.username) 😉")
        : showAlert(with: "Ooops!", and: "Your name is \(user.password) 😉")
        
    }
    
    
    @IBAction func logInAction() {
        if userNameText.text != user.username || passwordText.text != user.password {
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

// MARK: - Work with keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameText {
            passwordText.becomeFirstResponder()
        } else {
            logInAction()
            performSegue(withIdentifier: "loginSegue", sender: nil)
        }
        
        return true
    }
    
}
