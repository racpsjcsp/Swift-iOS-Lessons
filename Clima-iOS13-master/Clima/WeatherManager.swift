//
//  WeatherManager.swift
//  Clima
//
//  Created by Rafael Plinio on 23/10/19.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=2f55e435cb439c9c7107c8bd54261c91&q=london&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
