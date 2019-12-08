//
//  RouterFirstAccess.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class RouterFirstAccess: RouterProtocol {
    
    var navigationController: UINavigationController?
    var currentViewController: UIViewController?
    let user: UserSignUp
    
    init(navigationController: UINavigationController?, user: UserSignUp) {
        self.navigationController = navigationController
        self.user = user
    }
    
    public func start(with navigationType: NavigationType) {
        let welcomeViewController = welcomeController(user: user)
        show(viewController: welcomeViewController, with: .push)
    }
    
    func welcomeController(user: UserSignUp) -> WelcomeViewController {
        let welcomeViewController = WelcomeViewController(nibName: "WelcomeViewController", bundle: nil)
        welcomeViewController.delegate = self
        welcomeViewController.user = user
        currentViewController = welcomeViewController
        return welcomeViewController
    }
    
    func favoriteFoodsController() -> FavoriteFoodsViewController {
        let favoriteFoodsViewController = FavoriteFoodsViewController(nibName: "FavoriteFoodsViewController", bundle: nil)
        favoriteFoodsViewController.delegate = self
        currentViewController = favoriteFoodsViewController
        return favoriteFoodsViewController
    }
    
    func restractionFoodsController() -> RestractionFoodsViewController {
        let restractionFoodsViewController = RestractionFoodsViewController(nibName: "RestractionFoodsViewController", bundle: nil)
        restractionFoodsViewController.delegate = self
        currentViewController = restractionFoodsViewController
        return restractionFoodsViewController
    }
    
    func averagePriceController() -> AveragePriceViewController {
        let averagePriceViewController = AveragePriceViewController(nibName: "AveragePriceViewController", bundle: nil)
        averagePriceViewController.delegate = self
        currentViewController = averagePriceViewController
        return averagePriceViewController
    }
    
    func finalFirstAccessController() -> FinalFirstAccessViewController {
        let finalFirstAccessViewController = FinalFirstAccessViewController(nibName: "FinalFirstAccessViewController", bundle: nil)
        currentViewController = finalFirstAccessViewController
        return finalFirstAccessViewController
    }
}

extension RouterFirstAccess: WelcomeViewControllerDelegate {
    func wantsToGoQuestions() {
        let viewController = favoriteFoodsController()
        show(viewController: viewController, with: .push)
    }
}

extension RouterFirstAccess: FavoriteFoodsViewControllerDelegate {
    func wantsToContinue() {
        let restractionFoodsViewController = restractionFoodsController()
        show(viewController: restractionFoodsViewController, with: .push)
    }
}

extension RouterFirstAccess: RestractionFoodsViewControllerDelegate {
    func wantsToAveragePrice() {
        let averagePriceViewController = averagePriceController()
        show(viewController: averagePriceViewController, with: .push)
    }
}

extension RouterFirstAccess: AveragePriceViewControllerDelegate {
    func wantsToFinishFirstAccess() {
        let finalFirstAccessViewController = finalFirstAccessController()
        show(viewController: finalFirstAccessViewController, with: .push)
    }
}
