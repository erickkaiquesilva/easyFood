//
//  LoginProtocols.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 06/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

protocol LoginViewProtocolType {
    var controller: LoginViewDelegate? { get set }
}

protocol LoginViewDelegate: class {
    func recepitData(email: String?, password: String?)
}
