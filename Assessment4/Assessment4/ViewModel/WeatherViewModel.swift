//
//  WeatherViewModel.swift
//  Assessment4
//
//  Created by KiwiTech on 27/02/23.
//

import Foundation
import CoreLocation


class WeatherViewModel : NSObject, CLLocationManagerDelegate {
    var dataSource = [BusinessCellModel]()
    var dataResponseArr = [WeatherResponseModel]()
    weak var delegate : ReloadDataProtocol?
    
    private var lat: Double? = nil
    var long: Double? {
        didSet {
            loadWeatherData()
        }
    }
    private let locationManager = LocationManager.shared
    override init() {
        super.init()
        locationManager.setupLocationManager()
        locationManager.locationDidUpdated = { [weak self] in
            if let lat = self?.locationManager.lat, let long = self?.locationManager.long {
                self?.lat = lat
                self?.long = long
            } else {
                self?.lat = 28.5355
                self?.long = 77.3910
            }
        }
    }
    
    func loadWeatherData() {
        NetworkManager.shared.fetchWeatherData(lat: lat, lon: long) { weather in
            guard let weatherObj  = weather  else { return  }
            self.setloadWeatherData(data: weatherObj )
        }
    }
    
    func fetchWeatherData(forLocation location: CLLocation) {
        NetworkManager.shared.fetchWeatherData(lat: location.coordinate.latitude, lon: location.coordinate.longitude) { [weak self] Data in
            guard let DataObj = Data else { return }
            self?.setloadWeatherData(data: DataObj)
        }
    }
    private func setloadWeatherData(data: WeatherResponseModel?) {
        if let list = data {
            self.dataResponseArr = [list]
            createDataSource()
        }
    }
}
   
                   
                   
