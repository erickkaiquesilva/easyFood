//
//  QuestaoUmViewController.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class FavoriteFoodsViewController: UIViewController, FavoriteFoodsViewDelegate, FavoriteFoodsViewControllerType {
    
    weak var delegate: FavoriteFoodsViewControllerDelegate?

    @IBOutlet var uiFavoriteFoods: FavoriteFoodsView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiFavoriteFoods.controller = self
    }
    
    func recevitData(options: [Bool]) {
        delegate?.wantsToContinue()
    }
}
