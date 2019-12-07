//
//  IntroProtocols.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 06/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

protocol IntroViewProtocolType {
    var controller: IntroViewDelegate? { get set }
}

protocol IntroViewDelegate: class {
    func buttonLogin()
    func buttonCadastro()
}

protocol IntroViewControllerDelegate: class {
    func goToSignIn()
    func goToSignUp()
}
