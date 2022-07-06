//
//  UserViewController.swift
//  loginApp
//
//  Created by Клоун on 03.07.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user ?? "")!"
    }
}
