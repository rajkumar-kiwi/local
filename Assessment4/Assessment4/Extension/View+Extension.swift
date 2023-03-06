//
//  View+Extension.swift
//  Assessment4
//
//  Created by KiwiTech on 27/02/23.
//

import Foundation
import UIKit
import ProgressHUD

extension ViewController: ReloadDataProtocol {
    func tableViewReloadData() {
        countryLbl.text = weatherViewModelObj?.dataSource.first?.country?.description
        descriptionLbl.text = weatherViewModelObj?.dataSource.first?.description?.description
        speedLbl.text = weatherViewModelObj?.dataSource.first?.speed?.description
        humidityLbl.text = weatherViewModelObj?.dataSource.first?.humidity?.description
        let imgName = weatherViewModelObj?.dataSource.first?.icon
        imgViewLbl.loadImage(from: imgName ?? "" )
        ProgressHUD.dismiss()
    }
}
