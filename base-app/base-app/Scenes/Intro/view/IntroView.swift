//
//  IntroView.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 31/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class IntroView: UIView {
    
    
    let btnSignIn: UIButton = {
        let btn = UIButton()
        btn.titleLabel?.text = "Sign In"
        btn.backgroundColor = .blue
        return btn
    }()
    
    
    let btnSignUp: UIButton = {
        let btn = UIButton()
        btn.titleLabel?.text = "Sign Up"
        btn.backgroundColor = .orange
        return btn
    }()
    
}
