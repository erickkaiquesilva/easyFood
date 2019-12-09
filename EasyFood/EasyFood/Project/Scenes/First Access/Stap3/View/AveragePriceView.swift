//
//  QuestaoTresView.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class AveragePriceView: UIView, AveragePriceViewProtocolType {
    
    var controller: AveragePriceViewDelegate?
    
    @IBOutlet weak var btnContinue: CustomButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btnContinue.customSetup()
    }
    
    @IBAction func btnContinue(_ sender: UIButton) {
        controller?.wanstToConinue()
    }
}
