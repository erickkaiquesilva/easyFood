//
//  RestaurantListDataSource.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 09/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

class RestaurantListDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantsOptions: [Restaurant] = [Restaurant(image: "",
                                                       name: "Zurik",
                                                       bossOption: "Frango Parmegiana",
                                                       averagePrice: "39.00",
                                                       evaluetion: "4 estrelas"),
                                            Restaurant(image: "",
                                                       name: "Garoa",
                                                       bossOption: "Picadinho de carne seca",
                                                       averagePrice: "29.40",
                                                       evaluetion: "3 estrelas")]
    let cellIdentifier = "RestaurantOptionCell"
    
    // MARK: TableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantsOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! RestaurantOptionCell
        let option = self.restaurantsOptions[row]
        cell.prepare(restaurant: option)
        return cell
    }

}
