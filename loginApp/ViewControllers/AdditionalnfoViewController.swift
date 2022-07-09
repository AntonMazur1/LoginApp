//
//  AdditionalnfoViewController.swift
//  loginApp
//
//  Created by Клоун on 08.07.2022.
//

import UIKit

class AdditionalnfoViewController: UIViewController {

    @IBOutlet weak var addInfoLabel: UILabel!
    var user: PersonDataModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addInfoLabel.text = user?.person.additionalInfo
    }
}
