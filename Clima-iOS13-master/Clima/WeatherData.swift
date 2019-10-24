//
//  WeatherData.swift
//  Clima
//
//  Created by Rafael Plinio on 24/10/19.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

//structs accordingly to the json from openweathermap.org api

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let id: Int
    
}
