//
//  ViewModel+Extension.swift
//  Assessment4
//
//  Created by KiwiTech on 27/02/23.
//

import Foundation

extension WeatherViewModel : ViewModelProtocol {
    func createDataSource() {
        if dataSource.count > 0 {
            dataSource.removeAll()
        }
        let baseURL = Constants.imgBaseUrlTxt
        let value = dataResponseArr
        for item in value {
            dataSource.append(BusinessCellModel(humidity: "\(item.main?.humidity ?? 0)%", country: item.sys?.country, description: item.weather?.first?.description, speed: "\(item.wind?.speed ?? 0) km/h", icon: "\(baseURL.appending(item.weather?.first?.icon ?? "")).png", name: item.name))
        }
        delegate?.tableViewReloadData()
    }
}

