//
//  FinalFirstAccessProtocols.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

protocol FinalFirstAccessViewProtocolType {
    var controller: FinalFirstAccessViewDelegate? { get set }
}

protocol FinalFirstAccessViewDelegate: class {
    func wantsToFinish()
}

protocol FinalFirstAccessViewControllerType {
    var delegate: FinalFirstAccessViewControllerDelegate? { get set }
}

protocol FinalFirstAccessViewControllerDelegate: class {
    func wantsToContinue()
}
