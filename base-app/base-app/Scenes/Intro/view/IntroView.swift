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
        btn.setTitle("Sign In", for: .normal)
        btn.titleLabel?.font = UIFont.largeFonceSansText
        btn.backgroundColor = .blue
        btn.sizeHeight(height: 60)
        return btn
    }()
    
    
    let btnSignUp: UIButton = {
        let btn = UIButton()
        btn.titleLabel?.text = "Sign Up"
        btn.backgroundColor = .orange
        return btn
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        bindLayoutEvents()
        addConstraint()
        backgroundColor = .white
    }
    
    func bindLayoutEvents() {
        self.addSubview(btnSignIn)
    }
    
    func addConstraint() {
        btnSignIn.trailingView(to: self, margin: 36)
        btnSignIn.leadingView(to: self, margin: 36)
        btnSignIn.bottomView(to: self, margin: 36)
    }
    
}
