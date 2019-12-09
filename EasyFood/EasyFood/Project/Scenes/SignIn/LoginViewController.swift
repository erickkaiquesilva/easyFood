//
//  LoginViewController.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 06/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginViewDelegate, LoginViewControllerProtocolType {
    
    weak var delegate: LoginViewControllerDelegate?
    
    @IBOutlet var uiLogin: LoginView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        
        uiLogin.controller = self
    }
    
    func recepitData(email: String?, password: String?) {
        delegate?.wantsToContinue()
    }
}
