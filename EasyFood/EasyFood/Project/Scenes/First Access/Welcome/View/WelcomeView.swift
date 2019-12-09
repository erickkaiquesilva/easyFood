//
//  BemvindoView.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 07/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class WelcomeView: UIView, WelcomeViewProtocolType {
    
    weak var controller: WelcomeViewDelegate?
    
    @IBOutlet weak var labelNameUser: UILabel!
    @IBOutlet weak var btnBegin: CustomButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btnBegin.customSetup()
    }
    
    func setupView(user: UserSignUp?) {
        
        guard let userName = user?.name else { return }
        
        labelNameUser.text = String("OLÁ \(userName.uppercased())")
    }
    
    
    @IBAction func btnBegin(_ sender: UIButton) {
        controller?.wantsToContinue()
    }
    
}
