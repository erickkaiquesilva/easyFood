//
//  LocalizableStrings+Buttons.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 04/02/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

extension LocalizedStrings {
    static private func buttonStrings(forKey: String) -> String {
        let tableName = "Localizable+Buttons"
        return LocalizedStrings.stringWithTable(tableName, forKey: forKey)
    }
}

extension LocalizedStrings {
    static let buttonSignIn = buttonStrings(forKey: "buttonTitleSignIn")
    static let buttonSignUp = buttonStrings(forKey: "buttonTitleSignUp")
}
