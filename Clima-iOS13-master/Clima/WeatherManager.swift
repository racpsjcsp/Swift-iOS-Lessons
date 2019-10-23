//
//  WeatherManager.swift
//  Clima
//
//  Created by Rafael Plinio on 23/10/19.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=2f55e435cb439c9c7107c8bd54261c91&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        //1 - create a URL
        
        if let url = URL(string: urlString) {
            
            //2  - create a URLSession
            let session = URLSession(configuration: .default)
            
            //3 - give the session a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            //4 - start the task
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
}
