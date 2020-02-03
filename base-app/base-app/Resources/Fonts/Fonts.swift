//
//  Fonts.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 03/02/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

extension UIFont {
    static func customFontDefault(familyName: String, size: CGFloat) -> UIFont {
        if let font = UIFont(name: familyName, size: size) {
            return font
        }
        return UIFont.systemFont(ofSize: size)
    }
}

extension UIFont {
    static var largeFonceSansText: UIFont {
        return customFontDefault(familyName: FontFamily.FonceSans.normal, size: 21)
    }
    
    static var largeMargueriteText: UIFont {
        return customFontDefault(familyName: FontFamily.Marguerite.normal, size: 21)
    }
    
    static var normalFonceSansText:  UIFont {
        return customFontDefault(familyName: FontFamily.FonceSans.normal, size: 14)
    }
    
    static var normalMargueriteText:  UIFont {
        return customFontDefault(familyName: FontFamily.Marguerite.normal, size: 14)
    }
}
