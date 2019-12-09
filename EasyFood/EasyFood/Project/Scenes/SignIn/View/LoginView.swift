//
//  LoginView.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 06/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class LoginView: UIView, LoginViewProtocolType {
    
    weak var controller: LoginViewDelegate?
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var btnSignIn: CustomButton!
    
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func btnSignIn(_ sender: UIButton) {
        controller?.recepitData(email: textFieldEmail.text,
                                password: textFieldPassword.text)
    }
}
