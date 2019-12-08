//
//  FavoriteFoodsProtocols.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

protocol FavoriteFoodProtocolType {
    var controller: FavoriteFoodsViewDelegate? { get set }
}

protocol FavoriteFoodsViewDelegate: class {
    func recevitData(options: [Bool])
}

protocol FavoriteFoodsViewControllerType {
    var delegate: FavoriteFoodsViewControllerDelegate? { get set }
}

protocol FavoriteFoodsViewControllerDelegate: class {
    func wantsToContinue()
}
