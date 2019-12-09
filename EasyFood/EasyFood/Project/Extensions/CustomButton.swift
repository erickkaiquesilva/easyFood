//
//  CustomButton.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 09/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    func customSetup() {
        self.layer.cornerRadius = 25.00
        self.layer.masksToBounds = true
    }
}
