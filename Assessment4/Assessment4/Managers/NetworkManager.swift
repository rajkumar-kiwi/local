//
//  NetworkManager.swift
//  Assessment4
//
//  Created by KiwiTech on 27/02/23.
//

import Foundation
class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchWeatherData(lat: Double?, lon: Double?, completion: @escaping (WeatherResponseModel?) -> ()) {
        let stringURL = Constants.apiText
        guard let url = URL(string: stringURL) else { completion(nil); return }
        print(url)
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error { print(error); return }
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                let weatherResponse = try decoder.decode(WeatherResponseModel.self , from: data)
                DispatchQueue.main.async {
                    completion(weatherResponse)
                }
            } catch let error {
                DispatchQueue.main.async {
                    completion(nil)
                }
                print(error.localizedDescription)
            }
        }.resume()
    }
}
