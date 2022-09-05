//
//  WeatherColor.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/06.
//

import UIKit

enum WeatherColor {
    case darkGray
    
    var color: UIColor {
        switch self {
            case .darkGray:
                return UIColor(r: 44, g: 44, b: 44)
        }
    }
}


extension UIColor {
    public convenience init(
        r: Int,
        g: Int,
        b: Int,
        alpha: CGFloat = 1.0
    ) {
        self.init(
            red: CGFloat(r) / 255.0,
            green: CGFloat(g) / 255.0,
            blue: CGFloat(b) / 255.0,
            alpha: alpha
        )
    }
}
