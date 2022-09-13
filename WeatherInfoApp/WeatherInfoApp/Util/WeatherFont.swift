//
//  WeatherFont.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/06.
//

import UIKit

enum WeatherFont: String {
    case Black = "NotoSansKR-Black"
    case Bold = "NotoSansKR-Bold"
    case Light = "NotoSansKR-Light"
    case Medium = "NotoSansKR-Medium"
    case Regular = "NotoSansKR-Regular"
    case Thin = "NotoSansKR-Thin"
    
    func of(size: CGFloat) -> UIFont {
        return UIFont(name: self.rawValue, size: size)!
    }
    
    static func black(size: CGFloat) -> UIFont {
        return WeatherFont.Black.of(size: size)
    }
    
    static func bold(size: CGFloat) -> UIFont {
        return WeatherFont.Bold.of(size: size)
    }
    
    static func light(size: CGFloat) -> UIFont {
        return WeatherFont.Light.of(size: size)
    }
    
    static func medium(size: CGFloat) -> UIFont {
        return WeatherFont.Medium.of(size: size)
    }
    
    static func regular(size: CGFloat) -> UIFont {
        return WeatherFont.Regular.of(size: size)
    }
    
    static func thin(size: CGFloat) -> UIFont {
        return WeatherFont.Thin.of(size: size)
    }

}
