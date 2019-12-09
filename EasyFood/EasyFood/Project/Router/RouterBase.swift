//
//  RootBase.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 06/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//
 
import Foundation
import UIKit

class RouterBase: RouterProtocol {
    
    var navigationController: UINavigationController? = UINavigationController()
    weak var currentViewController: UIViewController?
        
    // MARK: RouterBase
    
    func start(with navigationType: NavigationType) {
        let introViewController = introController()
        show(viewController: introViewController, with: .push)
    }
    
    func introController() -> IntroViewController {
        let introViewController = IntroViewController(nibName: "IntroViewController", bundle: nil)
        currentViewController = introViewController
        introViewController.delegate = self
        navigationController?.viewControllers = [introViewController]
        return introViewController
    }
    
    func loginViewController() {
        let loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        loginViewController.delegate = self
        currentViewController = loginViewController
        show(viewController: loginViewController, with: .push)
    }
    
    func cadastroViewController() {
        let cadastroViewController = CadastroViewController(nibName: "CadastroViewController", bundle: nil)
        cadastroViewController.delegate = self
        currentViewController = cadastroViewController
        show(viewController: cadastroViewController, with: .push)
    }
    
    func firstAccessRouter(user: UserSignUp) {
        let firstAccessRoter = RouterFirstAccess(navigationController: navigationController, user: user)
        firstAccessRoter.start(with: .push)
    }
    
    func homeController() {
        let homeController = RestaurantListViewController(nibName: "RestaurantListViewController", bundle: nil)
        show(viewController: homeController, with: .push)
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

extension RouterBase: LoginViewControllerDelegate {
    func wantsToContinue() {
        homeController()
    }
}

extension RouterBase: CadastroViewControllerDelegate {
    func startFirstAccess(user: UserSignUp) {
        firstAccessRouter(user: user)
    }
}
