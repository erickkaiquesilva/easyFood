//
//  Coordinator.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 30/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get }
    func start()
}
