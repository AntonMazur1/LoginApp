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
    
    private let aboutMe = AboutMe.getInfoAbout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = aboutMe.name
        descriptionLabel.text = aboutMe.description
    }

}
