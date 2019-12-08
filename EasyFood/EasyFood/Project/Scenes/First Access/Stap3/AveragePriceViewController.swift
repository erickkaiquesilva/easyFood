//
//  QuestaoTresViewController.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class AveragePriceViewController: UIViewController, AveragePriceViewDelegate, AveragePriceViewControllerType {
    
    @IBOutlet var uiAveragePrice: AveragePriceView!
    weak var delegate: AveragePriceViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiAveragePrice.controller = self
    }
    
    func wanstToConinue() {
        delegate?.wantsToFinishFirstAccess()
    }
}
