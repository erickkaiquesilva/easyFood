//
//  IntroViewController.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 31/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    let contentView: IntroView
    
    init(contentView: IntroView = IntroView()) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
    
    override func loadView() {
        view = contentView
    }
    
}
