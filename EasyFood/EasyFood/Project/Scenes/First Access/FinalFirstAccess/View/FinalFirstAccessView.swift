//
//  FinalPrimeiroAcessoView.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class FinalFirstAccessView: UIView, FinalFirstAccessViewProtocolType {
    
    var controller: FinalFirstAccessViewDelegate?
    
    @IBOutlet weak var btnFinish: CustomButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btnFinish.customSetup()
    }
    
    @IBAction func btnFinish(_ sender: UIButton) {
        controller?.wantsToFinish()
    }
}
