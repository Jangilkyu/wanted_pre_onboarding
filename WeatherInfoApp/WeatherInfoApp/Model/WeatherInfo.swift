//
//  WeatherInfo.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/07.
//

import Foundation

struct WeatherInfo1: Codable {
    let cnt: Int
    let list: [WeatherInfo]
}

struct WeatherInfo: Codable {
    let weather: [Weather]
    let name: String
    let main: Main
    let wind: Wind
}

struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

//MARK: - 온도
struct Main: Codable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Int
    let humidity: Int
}

//MARK: - 풍속
struct Wind: Codable {
    let speed: Double
}
