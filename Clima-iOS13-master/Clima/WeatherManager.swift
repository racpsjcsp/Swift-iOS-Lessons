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
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    self.parseJSON(weatherData: safeData) //inside a closure, needs a self.
                }
            }
            
            //4 - start the task
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        //do try catch block
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name

            let weather = WeatherModel(conditionID: id, cityName: name, temperature: temp)
            
            print(weather.conditionName) //conditionName is a computed property (see in WeatherModel)
            print(weather.temperatureString)
        } catch {
            print(error)
        }
    }
    
    
    
}
