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
        btn.setTitle(LocalizedStrings.buttonSignIn, for: .normal)
        btn.titleLabel?.font = UIFont.largeFonceSansText
        btn.backgroundColor = UIColor.backgroundBlack
        btn.sizeHeight(height: 60)
        return btn
    }()
    
    
    let btnSignUp: UIButton = {
        let btn = UIButton()
        btn.setTitle(LocalizedStrings.buttonSignUp, for: .normal)
        btn.titleLabel?.font = UIFont.largeFonceSansText
        btn.backgroundColor = UIColor.backgroundWithe
        btn.sizeHeight(height: 60)
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
        self.addSubview(btnSignUp)
    }
    
    func addConstraint() {
        
        btnSignUp.leadingView(to: self, margin: 36)
        btnSignUp.trailingView(to: self, margin: 36)
        btnSignUp.bottomView(to: btnSignIn, margin: 12)
        
        btnSignIn.leadingView(to: self, margin: 36)
        btnSignIn.trailingView(to: self, margin: 36)
        btnSignIn.bottomView(to: self, margin: 36)
    }
    
}
