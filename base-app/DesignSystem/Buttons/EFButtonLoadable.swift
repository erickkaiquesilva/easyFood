//
//  EFButtonLoadable.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 05/02/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

public class EFButtonLoadable: UIButton {
    
    private var storedText: String?
    private var storedEnableState: Bool
    
    override public init(frame: CGRect) {
        storedText = ""
        storedEnableState = true
        super.init(frame: frame)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func updateLoadingState() {
        setTitle(storedText, for: .normal)
        isEnabled = storedEnableState
    }
    
}
