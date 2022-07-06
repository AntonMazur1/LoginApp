//
//  AboutModel.swift
//  loginApp
//
//  Created by Клоун on 05.07.2022.
//

import Foundation

struct AboutMe {
    let name: String
    let description: String
    
    static func getInfoAbout() -> AboutMe {
        AboutMe(name: "Anton Mazur", description: "Меня зовут Антон.Я учусь в Харьковском Национальном Университете Гражданской Защиты Украины на первом курсе факультета Пожарная безопасность.")
    }
}
