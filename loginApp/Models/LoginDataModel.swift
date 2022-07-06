//
//  DataModel.swift
//  loginApp
//
//  Created by Клоун on 05.07.2022.
//

import Foundation

struct LoginData {
    let userName: String
    let password: String
    
    static func getData() -> LoginData {
        LoginData(userName: "User", password: "Password")
    }
}
