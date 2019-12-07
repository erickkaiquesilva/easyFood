//
//  CadastroViewController.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController, CadastroViewDelegate {
    
    @IBOutlet var uiCadastro: CadastroView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiCadastro.controller = self
    }
    
    func dataUser(user: UserSignUp) {
        
    }
    
}
