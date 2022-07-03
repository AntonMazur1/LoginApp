//
//  ViewController.swift
//  loginApp
//
//  Created by Клоун on 03.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBAction func loginButtonTapped() {
        if userNameTextField.text == "User" && passwordTextField.text == "Password" {
            performSegue(withIdentifier: "loginSegue", sender: nil)
        } else {
            let alertController = UIAlertController(title: "Invalid login or password", message: "Please, enter the correct login and password", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.passwordTextField.text = ""
            }
            alertController.addAction(okAction)
            present(alertController, animated: true)
        }
    }
    
    @IBAction func forgotUsernameTapped() {
        let alertController = UIAlertController(title: "Oops", message: "Your username is User 😀", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
    
    @IBAction func forgotPasswordTapped() {
        let alertController = UIAlertController(title: "Oops", message: "Your username is Password 😀", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
    
}

//MARK: Segues
extension LoginViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userVC = segue.destination as! UserViewController
        userVC.user = userNameTextField.text
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}
