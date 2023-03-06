//
//  LocationManagers.swift
//  Assessment4
//
//  Created by KiwiTech on 27/02/23.
//

import Foundation
import CoreLocation

class LocationManager: CLLocationManager, CLLocationManagerDelegate {
    
    static let shared = LocationManager()
    
    let locationManager = CLLocationManager()
    var lat: Double? = 0.0
    var long: Double? = 0.0
    var locationDidUpdated: (() -> ())?
    
    func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager,didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        if location.horizontalAccuracy > 0 {
            locationManager.stopUpdatingLocation()
            locationManager.delegate = nil
            lat = location.coordinate.latitude
            long = location.coordinate.longitude
            locationDidUpdated?()
        }
    }
}


