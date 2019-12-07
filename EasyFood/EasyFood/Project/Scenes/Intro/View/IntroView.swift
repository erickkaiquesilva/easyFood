//
//  IntroView.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 06/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit



class IntroView: UIView, IntroViewProtocolType {
    
    weak var controller: IntroViewDelegate?
    
    @IBAction func btnSignIn(_ sender: UIButton) {
        controller?.buttonLogin()
    }
    
    @IBAction func btnSignUp(_ sender: UIButton) {
        controller?.buttonCadastro()
    }
    
}
