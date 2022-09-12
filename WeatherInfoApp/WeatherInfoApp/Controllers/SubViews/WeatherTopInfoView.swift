//
//  WeatherTopInfoView.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/11.
//

import UIKit

class WeatherTopInfoView: UIView {
    
    let weatherTempLabel: UILabel = {
        let weatherTempLabel = UILabel()
        weatherTempLabel.font = WeatherFont.Thin.of(size: 90)
//        weatherTempLabel.backgroundColor = .red
        return weatherTempLabel
    }()
    
    let weatherDescLabel: UILabel = {
        let weatherDesc = UILabel()
        weatherDesc.font = WeatherFont.Bold.of(size: 23)
        weatherDesc.numberOfLines = 2
//        weatherDesc.backgroundColor = .systemCyan
        return weatherDesc
    }()
    
    let weatherTempMaxLabel: UILabel = {
        let weatherTempMaxLabel = UILabel()
        weatherTempMaxLabel.font = WeatherFont.Medium.of(size: 16)
//        weatherTempMaxLabel.backgroundColor = .brown
        return weatherTempMaxLabel
    }()
    
    let weatherTempMinLabel: UILabel = {
        let weatherTempMinLabel = UILabel()
        weatherTempMinLabel.font = WeatherFont.Medium.of(size: 16)
//        weatherTempMinLabel.backgroundColor = .systemMint
        return weatherTempMinLabel
    }()

    required init(_ weatherTemp: Double, _ weatherDesc: String, _ weatherTempMax: Double, _ weatherTempMin: Double) {
        super.init(frame: .zero)
        self.weatherTempLabel.text = "\(String(format: "%.0f", weatherTemp))°"
        self.weatherDescLabel.text = "\(weatherDesc)"
        self.weatherTempMaxLabel.text = "↑\(weatherTempMax)°C"
        self.weatherTempMinLabel.text = "↓\(weatherTempMin)°C"

        addViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    private func addViews() {
        addSubview(self.weatherTempLabel)
        addSubview(self.weatherDescLabel)
        addSubview(self.weatherTempMaxLabel)
        addSubview(self.weatherTempMinLabel)
    }
    
    private func setConstraints() {
        weatherTempLabelConstraints()
        weatherDescLabelConstraints()
        weatherTempMaxLabelConstraints()
        weatherTempMinLabelConstraints()
    }
    
    private func weatherTempLabelConstraints() {
        weatherTempLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherTempLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        weatherTempLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
    }
    
    private func weatherDescLabelConstraints() {
        weatherDescLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherDescLabel.heightAnchor.constraint(equalTo: weatherTempLabel.heightAnchor, multiplier: 0.5).isActive = true
        weatherDescLabel.topAnchor.constraint(equalTo: weatherTempLabel.topAnchor).isActive = true
        weatherDescLabel.leadingAnchor.constraint(equalTo: weatherTempLabel.trailingAnchor, constant: 5).isActive = true
        weatherDescLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -1).isActive = true
    }
    
    private func weatherTempMaxLabelConstraints() {
        weatherTempMaxLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherTempMaxLabel.topAnchor.constraint(equalTo: weatherDescLabel.bottomAnchor).isActive = true
        weatherTempMaxLabel.leadingAnchor.constraint(equalTo: weatherTempLabel.trailingAnchor, constant: 5).isActive = true
    }
    
    private func weatherTempMinLabelConstraints() {
        weatherTempMinLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherTempMinLabel.topAnchor.constraint(equalTo: weatherTempMaxLabel.bottomAnchor).isActive = true
        weatherTempMinLabel.leadingAnchor.constraint(equalTo: weatherTempLabel.trailingAnchor, constant: 5).isActive = true
    }
}
