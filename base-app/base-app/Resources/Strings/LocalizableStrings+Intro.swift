//
//  LocalizableStrings+Intro.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 04/02/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

struct LocalizedStrings {
    static func stringWithTable(_ tableName: String, forKey key: String) -> String {
        return Bundle.main.localizedString(forKey: key, value: nil, table: tableName)
    }
}

extension LocalizedStrings {
    static private func introStrings(for key: String) -> String {
        let tableName = "Localizable+Intro"
        return LocalizedStrings.stringWithTable(tableName, forKey: key)
    }
}

extension LocalizedStrings {
    static let welcomeIntro = introStrings(for: "welcomeTitle")
}
