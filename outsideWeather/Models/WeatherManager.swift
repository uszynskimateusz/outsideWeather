//
//  WeatherManager.swift
//  outsideWeather
//
//  Created by Mateusz Uszyński on 02/09/2020.
//  Copyright © 2020 Mateusz Uszyński. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=6c592962ba8ef814a41ba10d778da195&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) { //create URl with optional string
            let session = URLSession(configuration: .default) //create URL Session
            

            //give the session task
            let task = session.dataTask(with: url, completionHandler: handle(data: response: error: ))
            
            task.resume() //start the task
        }
    }
    
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString!)
        }
    }
}
