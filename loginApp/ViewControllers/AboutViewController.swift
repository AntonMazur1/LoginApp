//
//  AboutViewController.swift
//  loginApp
//
//  Created by Клоун on 05.07.2022.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    var user: PersonDataModel?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let addInfoVC = segue.destination as? AdditionalnfoViewController else { return }
        addInfoVC.user = user
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user?.person.name
        descriptionLabel.text = user?.person.description
    }
}
