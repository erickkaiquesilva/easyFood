//
//  CadastroView.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class CadastroView: UIView, CadastroViewProtocolType {
    
    weak var controller: CadastroViewDelegate?
    
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
    @IBAction func btnSignUp(_ sender: UIButton) {
        controller?.dataUser(user: bindDataUser())
    }
    
    func bindDataUser() -> UserSignUp {
        let user = UserSignUp(name: textFieldName.text,
                              email: textFieldEmail.text,
                              password: textFieldPassword.text)
        return user
    }
}
