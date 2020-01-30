//
//  InitialCoordinator.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 30/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class InitialCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var currentViewController: UIViewController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        print(navigationController)
    }
    
    func start() {
        let viewController = InitalViewController()
        currentViewController = viewController
        navigationController.pushViewController(viewController, animated: true)
    }

}
