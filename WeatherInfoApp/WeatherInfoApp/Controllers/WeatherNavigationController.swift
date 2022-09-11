//
//  WeatherNavigationController.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/11.
//

import UIKit

class WeatherNavigationController: UINavigationController {
    override func viewDidLoad() {
        viewControllers = [WeatherController()]
    }
}
