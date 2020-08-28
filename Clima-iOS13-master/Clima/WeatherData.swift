//
//  WeatherData.swift
//  Clima
//
//  Created by Rafael Plinio on 24/10/19.


import Foundation

//structs de acordo com o json da api openweathermap.org

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
    
}
