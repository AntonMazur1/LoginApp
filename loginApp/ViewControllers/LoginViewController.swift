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
    
    private let loginData = LoginData.getData()
    
    private var userName: String {
        self.loginData.userName
    }
    
    private var password: String {
        self.loginData.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as! UITabBarController
        let userVC = tabBarVC.viewControllers![0] as! UserViewController
        userVC.user = userNameTextField.text
    }
    
    private func showAlert(title: String, description: String, nameOfButton: String) {
        let alertController = UIAlertController(title: title, message: description, preferredStyle: .alert)
        let okAction = UIAlertAction(title: nameOfButton, style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
    
    @IBAction func loginButtonTapped() {
        if userNameTextField.text == userName && passwordTextField.text == password {
            performSegue(withIdentifier: "loginSegue", sender: nil)
        } else {
            showAlert(title: "Invalid login or password", description: "Please, enter the correct login and password", nameOfButton: "OK")
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUsernameTapped() {
        showAlert(title: "Oops", description: "Your username is \(userName) 😀", nameOfButton: "OK")
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(title: "Oops", description: "Your username is \(password) 😀", nameOfButton: "OK")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}
