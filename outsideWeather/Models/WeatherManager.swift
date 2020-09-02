//
//  WeatherManager.swift
//  outsideWeather
//
//  Created by Mateusz Uszyński on 02/09/2020.
//  Copyright © 2020 Mateusz Uszyński. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "api.openweathermap.org/data/2.5/weather?appid=6c592962ba8ef814a41ba10d778da195&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
    }
}
