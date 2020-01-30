//
//  ViewController.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 30/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class InitalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        let alert = UIAlertController(title: "teste", message: "teste", preferredStyle: .alert)
        present(alert, animated: true)
    }

}

