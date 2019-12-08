//
//  QuestaoDoisViewController.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class RestractionFoodsViewController: UIViewController, RestractionFoodsViewDelegate, RestractionFoodsViewControllerType {
    
    weak var delegate: RestractionFoodsViewControllerDelegate?
    
    @IBOutlet var uiRestractionFoods: RestractionFoodsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiRestractionFoods.controller = self
    }
    
    func wantsToContinue() {
        delegate?.wantsToAveragePrice()
        
    }
}
