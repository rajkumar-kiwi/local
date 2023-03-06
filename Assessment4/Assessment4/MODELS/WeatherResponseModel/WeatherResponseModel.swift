//
//  WeatherResponseModel.swift
//  Assessment4
//
//  Created by KiwiTech on 27/02/23.
//

import Foundation

// MARK: - WeatherResponseModel
struct WeatherResponseModel: Decodable {
    var coord: Coord?
    var weather: [Weather]?
    var main: Main?
    var wind: Wind?
    var sys: Sys?
    var name: String?
}

// MARK: - Coord
struct Coord: Decodable {
    var lon, lat: Double?
}

// MARK: - Main
struct Main: Decodable {
    var humidity: Int?
}

// MARK: - Sys
struct Sys: Decodable {
    var country: String?
}

// MARK: - Weather
struct Weather: Decodable {
    var description: String?
    var icon: String?
}

// MARK: - Wind
struct Wind: Decodable {
    var speed: Double?
}

