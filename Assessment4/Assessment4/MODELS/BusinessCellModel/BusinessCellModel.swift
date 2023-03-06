//
//  BusinessCellModel.swift
//  Assessment4
//
//  Created by KiwiTech on 27/02/23.
//

import Foundation

class BusinessCellModel{
    var humidity: String?
    var country: String?
    var description: String?
    var speed: String?
    var icon: String?
    var name: String?
    
    init(humidity: String?, country: String?, description: String?, speed: String?, icon: String?, name: String?) {
        self.humidity = humidity
        self.country = country
        self.description = description
        self.speed = speed
        self.icon = icon
        self.name = name
    }
}
