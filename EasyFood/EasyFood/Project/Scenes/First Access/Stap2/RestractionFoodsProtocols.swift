//
//  RestractionFoodsProtocols.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

protocol RestractionFoodsProtcolType {
    var controller: RestractionFoodsViewDelegate? { get set }
}

protocol RestractionFoodsViewDelegate: class {
    func wantsToContinue()
}

protocol RestractionFoodsViewControllerType {
    var delegate: RestractionFoodsViewControllerDelegate? { get set }
}

protocol RestractionFoodsViewControllerDelegate: class {
    func wantsToAveragePrice()
}
