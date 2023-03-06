//
//  UILabel+Extension.swift
//  Assessment4
//
//  Created by KiwiTech on 27/02/23.
//
import Foundation
import UIKit

extension UILabel {
    
    func setCountryFont() {
        self.font = UIFont.getFontFor(textType: .countryLbl)
    }
    
    func setDescriptionFont() {
        self.font = UIFont.getFontFor(textType: .descriptionLbl)
    }
    
    func setSpeedFont() {
        self.font = UIFont.getFontFor(textType: .speedLbl)
    }
    
    func setHumidityColor() {
        self.textColor = UIColor.blue
    }
    
    func setDescriptionColor() {
        self.textColor = UIColor.orange
    }
}
