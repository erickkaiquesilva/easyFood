//
//  BemvindoViewController.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, WelcomeViewDelegate, WelcomeViewControllerProtocolType {
    
    var delegate: WelcomeViewControllerDelegate?
    
    @IBOutlet var uiWelcome: WelcomeView!
    
    var user: UserSignUp? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiWelcome.controller = self
        uiWelcome.setupView(user: user)
    }
    
    func wantsToContinue() {
        delegate?.wantsToGoQuestions()
    }
}
