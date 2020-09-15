//
//  WeatherData.swift
//  outsideWeather
//
//  Created by Mateusz Uszyński on 15/09/2020.
//  Copyright © 2020 Mateusz Uszyński. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
    let id: Int
}
