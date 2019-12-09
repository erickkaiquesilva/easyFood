//
//  RestaurantOptionCell.swift
//  EasyFood
//
//  Created by Erick Kaique Da Silva on 09/12/19.
//  Copyright © 2019 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

class RestaurantOptionCell: UITableViewCell {
    
    @IBOutlet weak var imageRestaurant: UIImageView!
    @IBOutlet weak var labelNameRestaurant: UILabel!
    @IBOutlet weak var labelSuggestion: UILabel!
    @IBOutlet weak var labelAverageValue: UILabel!
    @IBOutlet weak var labelEvaluation: UILabel!
    
    
    @IBOutlet weak var uiDetailOption: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
        // Initialization code
    }
    
    func setup() {
        uiDetailOption.layer.cornerRadius = 10.0
    }
    
    func prepare(restaurant: Restaurant) {
        labelNameRestaurant.text = restaurant.name
        labelSuggestion.text = restaurant.bossOption
        labelAverageValue.text = restaurant.averagePrice
        labelEvaluation.text = restaurant.evaluetion
    }
}
