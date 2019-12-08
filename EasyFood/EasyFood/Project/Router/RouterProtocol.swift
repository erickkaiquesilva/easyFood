//
//  RouterProtocol.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit
protocol RouterProtocol {
    var navigationController: UINavigationController? { get set }
    func start(with navigationType: NavigationType)
}

extension RouterProtocol {
    func show(viewController: UIViewController, with navigationType: NavigationType) {
        switch navigationType {
        case .push:
            navigationController?.pushViewController(viewController, animated: true)
        case .present:
            navigationController?.present(viewController, animated: true, completion: nil)
        }
    }
}
