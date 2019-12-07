//
//  RootBase.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 06/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//
 
import Foundation
import UIKit

class RouterBase: UINavigationController {
    
    // MARK: Properties
    
    weak var currentViewController: UIViewController?
    
    var introViewController: IntroViewController?
        
    // MARK: RouterBase
    
    func introController() {
        introViewController = IntroViewController(nibName: "IntroViewController", bundle: nil)
        
        if let introViewController = introViewController {
            currentViewController = introViewController
            introViewController.delegate = self
            viewControllers = [introViewController]
        }
    }
    
    func loginViewController() {
        let loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        
        currentViewController = loginViewController
        self.pushViewController(loginViewController, animated: true)
        
    }
    
    func cadastroViewController() {
        let cadastroViewController = CadastroViewController(nibName: "CadastroViewController", bundle: nil)
        
        currentViewController = cadastroViewController
        self.pushViewController(cadastroViewController, animated: true)
    }
}

extension RouterBase: IntroViewControllerDelegate {
    func goToSignIn() {
        loginViewController()
    }
    
    func goToSignUp() {
        cadastroViewController()
    }
}
