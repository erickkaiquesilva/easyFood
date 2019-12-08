//
//  WelcomeProtocols.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

protocol WelcomeViewProtocolType {
    var controller: WelcomeViewDelegate? { get set }
    func setupView(user: UserSignUp?)
}

protocol WelcomeViewDelegate: class {
    func wantsToContinue()
}

protocol WelcomeViewControllerProtocolType {
    var delegate: WelcomeViewControllerDelegate? { get set }
}

protocol WelcomeViewControllerDelegate: class {
    func wantsToGoQuestions()
}
