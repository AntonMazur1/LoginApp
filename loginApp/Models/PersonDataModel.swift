//
//  DataModel.swift
//  loginApp
//
//  Created by Клоун on 05.07.2022.
//

import Foundation

struct PersonDataModel {
    let userName: String
    let password: String
    let person: AboutMeModel
    
    static func getData() -> PersonDataModel {
        PersonDataModel(userName: "User2",
                       password: "Password",
                       person: AboutMeModel.getInfoAbout())
    }
}

struct AboutMeModel {
    let name: String
    let description: String
    let additionalInfo: String
    
    static func getInfoAbout() -> AboutMeModel {
        AboutMeModel(name: "Anton Mazur",
                     description: "Меня зовут Антон.Я учусь в Харьковском Национальном Университете Гражданской Защиты Украины на первом курсе факультета Пожарная безопасность.",
                     additionalInfo: "Мне 17 лет, мой родной город - Волноваха, второй город - Харьков")
    }
}
