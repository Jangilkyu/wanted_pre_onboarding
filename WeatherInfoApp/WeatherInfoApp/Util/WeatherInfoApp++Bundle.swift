//
//  WeatherInfoApp++Bundle.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/08.
//

import Foundation

extension Bundle {
    var apiKey: String {
        guard let file = self.path(forResource: "WeatherInfo", ofType: "plist") else { return "aaa"}
        
        guard let resource = NSDictionary(contentsOfFile: file) else { return "" }
        guard let key = resource["API_KEY"] as? String else { fatalError("WeatherInfo.plist에 API_KEY를 설정해주세요.")}
        return key
    }
}
