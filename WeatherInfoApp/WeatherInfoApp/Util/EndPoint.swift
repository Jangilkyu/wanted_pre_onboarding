//
//  EndPoint.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/07.
//

import Foundation

let baseURL: String = "https://api.openweathermap.org/data/2.5"
let appid = Bundle.main.apiKey

enum WeatherURL {
  
  case cities
  case image(icon: String)

  var url: URL {
    switch self {
    case .cities:
      return URL(string: (baseURL + "/group?id=1842616,1841808,1842225,1842025,1835327,1835224,1841066,1838519,1835895,1835847,1836553,1835553,1835648,1833742,1843491,1845457,1846266,1845759,1845604,1845136&appid=\(appid)&units=metric"))!
    case .image(let icon):
      return URL(string: "http://openweathermap.org/img/wn/\(icon)@2x.png")!

    }
  }
}
