//
//  WeatherBottomInfoView.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/12.
//

import UIKit

class WeatherBottomInfoView: UIView {
    
    // MARK: - 체감 온도
    let feelsLikeLabel: UILabel = {
       let feelsLikeLabel = UILabel()
        feelsLikeLabel.font = WeatherFont.Medium.of(size: 20)
        feelsLikeLabel.textAlignment = .center
        return feelsLikeLabel
    }()
    
    let feelsLikeTitleLabel: UILabel = {
        let feelsLikeTitleLabel = UILabel()
        feelsLikeTitleLabel.font = WeatherFont.Regular.of(size: 15)
        feelsLikeTitleLabel.text = "FeelsLike"
        return feelsLikeTitleLabel
    }()
    
    let weatherVertiLine: UIView = {
        let line = UIView()
        line.backgroundColor = WeatherColor.lightGray.color
        return line
    }()
    
    // MARK: - 습도
    let humidityLabel: UILabel = {
       let humidityLabel = UILabel()
        humidityLabel.font = WeatherFont.Medium.of(size: 20)
        humidityLabel.textAlignment = .center
        return humidityLabel
    }()
    
    let humidityTitleLabel: UILabel = {
        let humidityTitleLabel = UILabel()
        humidityTitleLabel.font = WeatherFont.Regular.of(size: 15)
        humidityTitleLabel.text = "humidity"
        return humidityTitleLabel
    }()
    
    let weatherVertiLine2: UIView = {
        let line = UIView()
        line.backgroundColor = WeatherColor.lightGray.color
        return line
    }()
    
    // MARK: - 기압
    let pressureLabel: UILabel = {
        let pressureLabel = UILabel()
        pressureLabel.font = WeatherFont.Medium.of(size: 20)
        pressureLabel.textAlignment = .center
        return pressureLabel
    }()
    
    let pressureTitleLabel: UILabel = {
        let pressureTitleLabel = UILabel()
        pressureTitleLabel.font = WeatherFont.Regular.of(size: 15)
        pressureTitleLabel.text = "pressure"
        return pressureTitleLabel
    }()
    
    let weatherVertiLine3: UIView = {
        let line = UIView()
        line.backgroundColor = WeatherColor.lightGray.color
        return line
    }()
    
    
    // MARK: - 풍속
    let speedLabel: UILabel = {
       let speedLabel = UILabel()
        speedLabel.font = WeatherFont.Medium.of(size: 20)
        speedLabel.textAlignment = .center
        return speedLabel
    }()
    
    let speedTitleLabel: UILabel = {
        let speedTitleLabel = UILabel()
        speedTitleLabel.font = WeatherFont.Regular.of(size: 15)
        speedTitleLabel.text = "speed"
        return speedTitleLabel
    }()

    required init(_ feels_like: Double, _ humidity: Int, _ pressure: Int, _ speed: Double) {
        super.init(frame: .zero)
        self.feelsLikeLabel.text = "\(feels_like)"
        self.humidityLabel.text = "\(humidity)%"
        self.pressureLabel.text = "\(pressure)"
        self.speedLabel.text = "\(speed)"
        setup()
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    private func setup() {
        addViews()
        setConstratins()
    }
    
    private func addViews() {
        addSubview(feelsLikeLabel)
        addSubview(feelsLikeTitleLabel)
        addSubview(weatherVertiLine)
        addSubview(humidityLabel)
        addSubview(humidityTitleLabel)
        addSubview(weatherVertiLine2)
        addSubview(pressureLabel)
        addSubview(pressureTitleLabel)
        addSubview(weatherVertiLine3)
        addSubview(speedLabel)
        addSubview(speedTitleLabel)
    }
    private func setConstratins() {
        feelsLikeLabelConstraints()
        feelsLikeTitleLabelConstraints()
        weatherVertiLineConstraints()
        humidityLabelConstraints()
        humidityTitleLabelConstraints()
        weatherVertiLine2Constraints()
        pressureLabelConstraints()
        pressureTitleLabelConstraints()
        weatherVertiLine3Constraints()
        speedLabelConstraints()
        speedTitleLabelConstraints()
    }
    
    private func feelsLikeLabelConstraints() {
        feelsLikeLabel.translatesAutoresizingMaskIntoConstraints = false
        feelsLikeLabel.widthAnchor.constraint(equalTo: feelsLikeTitleLabel.widthAnchor).isActive = true
        feelsLikeLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        feelsLikeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    }
    
    private func feelsLikeTitleLabelConstraints() {
        feelsLikeTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        feelsLikeTitleLabel.topAnchor.constraint(equalTo: feelsLikeLabel.bottomAnchor, constant: 3).isActive = true
        feelsLikeTitleLabel.leadingAnchor.constraint(equalTo: feelsLikeLabel.leadingAnchor).isActive = true
    }
    
    private func weatherVertiLineConstraints() {
        weatherVertiLine.translatesAutoresizingMaskIntoConstraints = false
        weatherVertiLine.widthAnchor.constraint(equalToConstant: 1).isActive = true
        weatherVertiLine.topAnchor.constraint(equalTo: feelsLikeLabel.topAnchor).isActive = true
        weatherVertiLine.bottomAnchor.constraint(equalTo: feelsLikeTitleLabel.bottomAnchor).isActive = true
        weatherVertiLine.leadingAnchor.constraint(equalTo: feelsLikeTitleLabel.trailingAnchor, constant: 10).isActive = true
    }
    
    private func humidityLabelConstraints() {
        humidityLabel.translatesAutoresizingMaskIntoConstraints = false
        humidityLabel.widthAnchor.constraint(equalTo: humidityTitleLabel.widthAnchor).isActive = true
        humidityLabel.topAnchor.constraint(equalTo: feelsLikeLabel.topAnchor).isActive = true
        humidityLabel.leadingAnchor.constraint(equalTo: weatherVertiLine.trailingAnchor, constant: 10).isActive = true
    }
    
    private func humidityTitleLabelConstraints() {
        humidityTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        humidityTitleLabel.topAnchor.constraint(equalTo: feelsLikeTitleLabel.topAnchor).isActive = true
        humidityTitleLabel.leadingAnchor.constraint(equalTo: weatherVertiLine.trailingAnchor, constant: 10).isActive = true
    }
    
    private func weatherVertiLine2Constraints() {
        weatherVertiLine2.translatesAutoresizingMaskIntoConstraints = false
        weatherVertiLine2.widthAnchor.constraint(equalToConstant: 1).isActive = true
        weatherVertiLine2.topAnchor.constraint(equalTo: feelsLikeLabel.topAnchor).isActive = true
        weatherVertiLine2.bottomAnchor.constraint(equalTo: feelsLikeTitleLabel.bottomAnchor).isActive = true
        weatherVertiLine2.leadingAnchor.constraint(equalTo: humidityTitleLabel.trailingAnchor, constant: 10).isActive = true
    }
    
    private func pressureLabelConstraints() {
        pressureLabel.translatesAutoresizingMaskIntoConstraints = false
        pressureLabel.widthAnchor.constraint(equalTo: pressureTitleLabel.widthAnchor).isActive = true
        pressureLabel.topAnchor.constraint(equalTo: feelsLikeLabel.topAnchor).isActive = true
        pressureLabel.leadingAnchor.constraint(equalTo: weatherVertiLine2.trailingAnchor, constant: 10).isActive = true
    }
    
    private func pressureTitleLabelConstraints() {
        pressureTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        pressureTitleLabel.topAnchor.constraint(equalTo: feelsLikeTitleLabel.topAnchor).isActive = true
        pressureTitleLabel.leadingAnchor.constraint(equalTo: weatherVertiLine2.trailingAnchor, constant: 10).isActive = true
    }
    
    private func weatherVertiLine3Constraints() {
        weatherVertiLine3.translatesAutoresizingMaskIntoConstraints = false
        weatherVertiLine3.widthAnchor.constraint(equalToConstant: 1).isActive = true
        weatherVertiLine3.topAnchor.constraint(equalTo: feelsLikeLabel.topAnchor).isActive = true
        weatherVertiLine3.bottomAnchor.constraint(equalTo: feelsLikeTitleLabel.bottomAnchor).isActive = true
        weatherVertiLine3.leadingAnchor.constraint(equalTo: pressureTitleLabel.trailingAnchor, constant: 10).isActive = true
    }
    
    private func speedLabelConstraints() {
        speedLabel.translatesAutoresizingMaskIntoConstraints = false
        speedLabel.widthAnchor.constraint(equalTo: speedTitleLabel.widthAnchor).isActive = true
        speedLabel.topAnchor.constraint(equalTo: feelsLikeLabel.topAnchor).isActive = true
        speedLabel.leadingAnchor.constraint(equalTo: weatherVertiLine3.trailingAnchor, constant: 10).isActive = true
    }
    
    private func speedTitleLabelConstraints() {
        speedTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        speedTitleLabel.bottomAnchor.constraint(equalTo: feelsLikeTitleLabel.bottomAnchor).isActive = true
        speedTitleLabel.topAnchor.constraint(equalTo: feelsLikeLabel.bottomAnchor).isActive = true
        speedTitleLabel.leadingAnchor.constraint(equalTo: weatherVertiLine3.trailingAnchor, constant: 10).isActive = true
    }
}
