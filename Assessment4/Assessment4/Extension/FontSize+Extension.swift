//
//  FontSize+Extension.swift
//  Assessment4
//
//  Created by KiwiTech on 27/02/23.
//

import Foundation
import UIKit

enum TextType {
    case countryLbl
    case descriptionLbl
    case humidityLbl
    case speedLbl
}

extension UIFont {
    
    static func getFontFor(textType: TextType)-> UIFont {
        
        var fontSize:CGFloat = 12.0
        var weight:UIFont.Weight = .regular
        
        switch textType {
        case .countryLbl:
            fontSize = 20.0
            weight = .bold
        case .descriptionLbl:
            fontSize = 17.0
            weight = .regular
        case .humidityLbl:
            fontSize = 15.0
            weight = .thin
        case .speedLbl:
            fontSize = 20.0
            weight = .bold
        }
        
        return UIFont.systemFont(ofSize: fontSize,
                                 weight: weight)
    }
}
