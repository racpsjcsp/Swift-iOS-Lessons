//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Rafael Plinio on 30/10/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

class NetworkManager {
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            try decoder.decode(Results.self, from: safeData)    //data is an optional, so needs to be unwrapped (if let safeData)
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
