//
//  CadastroProtocols.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

protocol CadastroViewProtocolType {
    var controller: CadastroViewDelegate? { get set }
}

protocol CadastroViewDelegate: class {
    func dataUser(user: UserSignUp)
}

protocol CadastroViewControllerProtocolType {
    var delegate: CadastroViewControllerDelegate? { get set }
}

protocol CadastroViewControllerDelegate: class {
    func startFirstAccess(user: UserSignUp)
}
