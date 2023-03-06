//
//  HomeViewModel.swift
//  Assessment4
//
//  Created by KiwiTech on 28/02/23.
//

import Foundation

protocol ViewModelProtocol: NSObject {
    func createDataSource()
}
protocol ReloadDataProtocol: NSObject {
    func tableViewReloadData()
}
