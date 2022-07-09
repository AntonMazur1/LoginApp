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
    
    private let personData = PersonDataModel.getData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        for viewController in viewControllers {
            if let userVC = viewController as? UserViewController {
                userVC.user = personData
            } else if let navigationVC = viewController as? UINavigationController {
                guard let aboutVC = navigationVC.topViewController as? AboutViewController else { return }
                aboutVC.user = personData
            }
        }
    }
    
    private func showAlert(title: String,
                           description: String,
                           nameOfButton: String,
                           textField: UITextField? = nil) {
        let alertController = UIAlertController(title: title, message: description, preferredStyle: .alert)
        let okAction = UIAlertAction(title: nameOfButton, style: .default) { _ in
            textField?.text = ""
        }
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
    
    @IBAction func loginButtonTapped() {
        if userNameTextField.text == personData.userName && passwordTextField.text == personData.password {
            performSegue(withIdentifier: "loginSegue", sender: nil)
        } else {
            showAlert(title: "Invalid login or password", description: "Please, enter the correct login and password", nameOfButton: "OK", textField: passwordTextField)
        }
    }
    
    @IBAction func registerDataForgotten(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", description: "Your username is \(personData.userName)😀", nameOfButton: "OK")
        : showAlert(title: "Oops!", description: "Your password is \(personData.password)😀", nameOfButton: "OK")
    }
    
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}
