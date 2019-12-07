//
//  IntroViewController.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 06/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, IntroViewDelegate {
    
    @IBOutlet var uiIntro: IntroView!
    
    weak var delegate: IntroViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        
        uiIntro.controller = self
    }
    
    func buttonLogin() {
        delegate?.goToSignIn()
    }
    
    func buttonCadastro() {
        delegate?.goToSignUp()
    }
    
}
