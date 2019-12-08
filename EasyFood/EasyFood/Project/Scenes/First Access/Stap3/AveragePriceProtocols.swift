//
//  AveragePriceProtocols.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

protocol AveragePriceViewProtocolType {
    var controller: AveragePriceViewDelegate? { get set }
}

protocol AveragePriceViewDelegate {
    func wanstToConinue()
}

protocol AveragePriceViewControllerType {
    var delegate: AveragePriceViewControllerDelegate? { get set }
}
protocol AveragePriceViewControllerDelegate: class {
    func wantsToFinishFirstAccess()
}
