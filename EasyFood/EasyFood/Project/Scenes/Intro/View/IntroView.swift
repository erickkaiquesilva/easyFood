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
    
    @IBOutlet weak var btnSignIn: CustomButton!
    @IBOutlet weak var btnSignUp: CustomButton!
    
    weak var controller: IntroViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btnSignIn.customSetup()
        btnSignUp.customSetup()
        // Initialization code
    }
    
    @IBAction func btnSignIn(_ sender: UIButton) {
        controller?.buttonLogin()
    }
    
    @IBAction func btnSignUp(_ sender: UIButton) {
        controller?.buttonCadastro()
    }
    
}
