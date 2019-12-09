//
//  QuestaoUmView.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

class FavoriteFoodsView: UIView, FavoriteFoodProtocolType {
    
    weak var controller: FavoriteFoodsViewDelegate?
    @IBOutlet weak var btnContinue: CustomButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btnContinue.customSetup()
        // Initialization code
    }
    
    var optionsFood: [Bool] = []
    
    @IBAction func checkOptionItalian(_ sender: UIButton) {
        if sender.isSelected {
            optionsFood.remove(at: 0)
            optionsFood.append(false)
            sender.isSelected = false
        } else {
            optionsFood.append(true)
            sender.isSelected = true
        }
    }
    
    @IBAction func checkOptionIndian(_ sender: UIButton) {
        if sender.isSelected {
            optionsFood.append(true)
            sender.isSelected = false
        } else {
            optionsFood.append(false)
            sender.isSelected = true
        }
    }
    
    @IBAction func ckeckOptionJapan(_ sender: UIButton) {
        if sender.isSelected {
            optionsFood.append(true)
            sender.isSelected = false
        } else {
            optionsFood.append(false)
            sender.isSelected = true
        }
    }
    
    @IBAction func checkOptionBrazilian(_ sender: UIButton) {
        if sender.isSelected {
            optionsFood.append(true)
            sender.isSelected = false
        } else {
            optionsFood.append(false)
            sender.isSelected = true
        }
    }
    
    @IBAction func wantsToConinue(_ sender: UIButton) {
        controller?.recevitData(options: optionsFood)
    }
}
