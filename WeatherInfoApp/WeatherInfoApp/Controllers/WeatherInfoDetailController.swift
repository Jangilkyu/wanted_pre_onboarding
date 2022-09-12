//
//  WeatherInfoDetailController.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/11.
//

import UIKit

class WeatherInfoDetailController: UIViewController {
    var weatherInfo: WeatherInfo!
    
    let weatherImgView: UIImageView = {
        let weatherImgView = UIImageView()
        return weatherImgView
    }()
    
    // MARK: - 온도 / 날씨 설명 / 최고기온 / 최저기온
    lazy var weatherTopInfoView = WeatherTopInfoView(
        self.weatherInfo.main.temp,
        self.weatherInfo.weather[0].description,
        self.weatherInfo.main.temp_max,
        self.weatherInfo.main.temp_min
    )
    
    // MARK: - 체감 기온, 현재 습도, 기압, 풍속
    lazy var weatherBottomInfoView = WeatherBottomInfoView(
        self.weatherInfo.main.feels_like,
        self.weatherInfo.main.humidity,
        self.weatherInfo.main.pressure,
        self.weatherInfo.wind.speed
    )

    convenience init(_ weatherInfo: WeatherInfo) {
        self.init()
        self.weatherInfo = weatherInfo
        
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "\(weatherInfo.name)"
    }
    
    private func setup() {
        addViews()
        setConstraints()
    }
    
    private func addViews() {
        view.addSubview(weatherImgView)
        view.addSubview(weatherTopInfoView)
        view.addSubview(weatherBottomInfoView)
    }
    
    private func setConstraints() {
        weatherImgViewConstraints()
        weatherTopInfoViewConstraints()
        weatherBottomInfoViewConstraints()
    }
    
    private func weatherImgViewConstraints() {
        weatherImgView.translatesAutoresizingMaskIntoConstraints = false
        weatherImgView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        weatherImgView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        weatherImgView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        weatherImgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func weatherTopInfoViewConstraints() {
//        weatherTopInfoView.backgroundColor = .red
        weatherTopInfoView.translatesAutoresizingMaskIntoConstraints = false
        weatherTopInfoView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true
        weatherTopInfoView.topAnchor.constraint(equalTo: weatherImgView.bottomAnchor, constant: 10).isActive = true
        weatherTopInfoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
//        weatherTopInfoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func weatherBottomInfoViewConstraints() {
//        weatherBottomInfoView.backgroundColor = .brown
        weatherBottomInfoView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        weatherBottomInfoView.translatesAutoresizingMaskIntoConstraints = false
        weatherBottomInfoView.topAnchor.constraint(equalTo: weatherTopInfoView.bottomAnchor, constant: 10).isActive = true
        weatherBottomInfoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        weatherBottomInfoView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
    }
}
