//
//  AppCoordinator.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 30/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

final class AppCoordinator: Coordinator {
    
    private let window: UIWindow?
    var navigationController: UINavigationController
    var currentCoordinator: Coordinator?
    
    init(windowScene: UIWindowScene?, navigation: UINavigationController = UINavigationController()) {
        self.navigationController = navigation
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        self.window?.windowScene = windowScene
        
        print(navigationController)
    }
    
    func start() {
        let coordinator = InitialCoordinator(navigationController: navigationController)
        currentCoordinator = coordinator
        coordinator.start()
    }
    
}
