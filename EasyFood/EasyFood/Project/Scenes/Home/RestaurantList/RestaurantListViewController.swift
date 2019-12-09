//
//  RestaurantListViewController.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 09/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class RestaurantListViewController: UIViewController {
    
    @IBOutlet weak var restaurantTableView: UITableView!
    var restaurantListDataSourcer = RestaurantListDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurationDataSource()
        restaurantTableView.reloadData()
    }
    
    
    func configurationDataSource() {
        restaurantTableView.separatorStyle = .none
        restaurantTableView.register(UINib(nibName: "RestaurantOptionCell", bundle: nil), forCellReuseIdentifier: "RestaurantOptionCell")
        restaurantTableView.delegate = restaurantListDataSourcer
        restaurantTableView.dataSource = restaurantListDataSourcer
    }
}
