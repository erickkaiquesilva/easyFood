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
    
    var introViewController: IntroViewController?
        
    // MARK: RouterBase
    
    func introController() {
        introViewController = IntroViewController(nibName: "IntroViewController", bundle: nil)
        
        if let introViewController = introViewController {
            viewControllers = [introViewController]
        }
    }
    
}
