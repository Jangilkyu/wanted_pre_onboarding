//
//  EndPoint.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/07.
//

import Foundation

let baseURL: String = "https://api.openweathermap.org/data/2.5/weather?"

enum WeatherURL {
    
    case weatherInfo(q: String, appid: String)
    
    var url: String {
        switch self {
            case .weatherInfo(let q,let appid):
                return baseURL + "q=\(q)&appid=\(appid)&units=metric"
        }
    }
}
