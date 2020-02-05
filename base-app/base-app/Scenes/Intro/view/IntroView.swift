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
        
        return btn
    }()
    
    
    let btnSignUp: UIButton = {
        let btn = UIButton()
        btn.setTitle(LocalizedStrings.buttonSignUp, for: .normal)
        btn.titleLabel?.font = UIFont.largeFonceSansText
        btn.backgroundColor = UIColor.backgroundWithe
        
        btn.backgroundColor = .orange
        return btn
    }()
    
    let btnDesignSystem = EFButton(type: .secundary, title: "testando botão".uppercased())
    
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
        self.addSubview(btnDesignSystem)
        self.addSubview(btnSignIn)
        self.addSubview(btnSignUp)
    }
    
    func addConstraint() {
        
        btnDesignSystem.con.applyConstraint { view in
            view.leftSafeArea(alinedWith: self, offset: 36)
            view.rightSafeArea(alignedWith: self, offset: 36)
            view.above(view: btnSignIn, offSet: 16)
        }
        
        btnSignIn.con.applyConstraint { view in
            view.leftSafeArea(alinedWith: self, offset: 16)
            view.rightSafeArea(alignedWith: self, offset: 16)
            view.above(view: btnSignUp, offSet: 16)
            view.height(55)
        }
        
        btnSignUp.con.applyConstraint { view in
            view.rightSafeArea(alignedWith: self, offset: 16)
            view.leftSafeArea(alinedWith: self, offset: 16)
            view.bottomSafaArea(alignedWith: self, offset: 16)
            view.height(55)
        }
    }
    
}
