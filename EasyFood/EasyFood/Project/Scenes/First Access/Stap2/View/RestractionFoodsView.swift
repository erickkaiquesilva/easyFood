//
//  QuestaoDoisView.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class RestractionFoodsView: UIView, RestractionFoodsProtcolType {
    
    weak var controller: RestractionFoodsViewDelegate?
    
    @IBOutlet weak var btnContinue: CustomButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btnContinue.customSetup()
    }
    
    @IBAction func btnContinue(_ sender: Any) {
        controller?.wantsToContinue()
    }
}
