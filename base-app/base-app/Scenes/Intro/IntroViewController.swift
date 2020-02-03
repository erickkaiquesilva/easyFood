//
//  IntroViewController.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 31/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    let orangeView = UIView()
    let blueView = UIView()
    let greenView = UIView()
    
    let blackView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orangeView.backgroundColor = .orange
        blueView.backgroundColor = .blue
        greenView.backgroundColor = .green
        view.backgroundColor = .white
        blackView.backgroundColor = .black
        
        bindLayouts()
    }
    
    func bindLayouts() {
        [greenView].forEach { view.addSubview($0) }
        greenView.addSubview(orangeView)
        orangeView.addSubview(blueView)
        addConstrains()
    }
    
    func addConstrains() {
        
        greenView.topSuperView(to: self.view, margin: 16)
        greenView.leadingSuperView(to: self.view, margin: 16)
        greenView.trailingSuperView(to: self.view, margin: 16)
        greenView.bottomSuperView(to: self.view, margin: 16)
        
        orangeView.topView(to: greenView, margin: 10)
        orangeView.bottomView(to: greenView, margin: 10)
        orangeView.leadingView(to: greenView, margin: 12)
        orangeView.trailingView(to: greenView, margin: 12)
        
        blueView.sizeWidth(width: 200)
        blueView.sizeHeight(height: 200)
        blueView.topView(to: orangeView, margin: 16)
        blueView.trailingView(to: orangeView, margin: 16)
    }
}
