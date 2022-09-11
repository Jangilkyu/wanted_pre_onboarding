//
//  WeatherDetailCell.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/06.
//

import UIKit

class WeatherDetailCell: UICollectionViewCell {
    
    let weatherCityLabel: UILabel = {
        let weatherCityLabel = UILabel()
        weatherCityLabel.text = "Incheon"
        weatherCityLabel.textColor = WeatherColor.darkGray.color
        weatherCityLabel.font = WeatherFont.Medium.of(size: 25)
//        weatherCityLabel.backgroundColor = .purple
        return weatherCityLabel
    }()
    
    let weatherHumidityLabel: UILabel = {
        let weatherHumidityLabel = UILabel()
        weatherHumidityLabel.text = "Humidity:"
        weatherHumidityLabel.textColor = WeatherColor.darkGray.color
        weatherHumidityLabel.font = WeatherFont.Regular.of(size: 17)
//        weatherHumidityLabel.backgroundColor = .systemCyan
        return weatherHumidityLabel
    }()
    
    let weatherHumidityPercentLabel: UILabel = {
        let weatherHumidityPercentLabel = UILabel()
        weatherHumidityPercentLabel.text = "76%"
        weatherHumidityPercentLabel.textColor = WeatherColor.darkGray.color
        weatherHumidityPercentLabel.font = WeatherFont.Regular.of(size: 17)
//        weatherHumidityPercentLabel.backgroundColor = .green
        return weatherHumidityPercentLabel
    }()
    
    let weatherDescriptionLabel: UILabel = {
        let weatherDescriptionLabel = UILabel()
        weatherDescriptionLabel.text = "clear sky"
        weatherDescriptionLabel.textColor = WeatherColor.darkGray.color
        weatherDescriptionLabel.font = WeatherFont.Regular.of(size: 17)
        return weatherDescriptionLabel
    }()
    
    let weatherTempLabel: UILabel = {
       let weatherTempLabel = UILabel()
        weatherTempLabel.text = "4°"
//        weatherTempLabel.textColor = WeatherColor.darkGray.color
        weatherTempLabel.font = WeatherFont.Medium.of(size: 30)
        return weatherTempLabel
    }()
    
    let weatherImgView: UIImageView = {
        let weatherImgView = UIImageView()
        weatherImgView.backgroundColor = .red
        weatherImgView.image = UIImage(named: "w")
        return weatherImgView
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = WeatherColor.lightGray.color
        layer.cornerRadius = 20
        setup()
    }
    
    required init?(coder: NSCoder) {
      return nil
    }
    
    private func setup() {
        addViews()
        setConstraints()
    }

    private func addViews() {
        addSubview(weatherCityLabel)
        addSubview(weatherHumidityLabel)
        addSubview(weatherHumidityPercentLabel)
        addSubview(weatherDescriptionLabel)
        addSubview(weatherTempLabel)
        addSubview(weatherImgView)
    }
    private func setConstraints() {
        weatherCityLabelConstraints()
        weatherHumidityLabelConstraints()
        weatherHumidityPercentLabelConstraints()
        weatherDescriptionLabelConstraints()
        weatherTempLabelConstraints()
        weatherImgViewConstraints()
        
    }
    
    private func weatherCityLabelConstraints() {
        weatherCityLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherCityLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
        weatherCityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25).isActive = true
    }
    
    private func weatherHumidityLabelConstraints() {
        weatherHumidityLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherHumidityLabel.topAnchor.constraint(equalTo: weatherCityLabel.bottomAnchor, constant: 20).isActive = true
        weatherHumidityLabel.leadingAnchor.constraint(equalTo: weatherCityLabel.leadingAnchor).isActive = true
    }
    
    private func weatherHumidityPercentLabelConstraints() {
        weatherHumidityPercentLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherHumidityPercentLabel.topAnchor.constraint(equalTo: weatherCityLabel.bottomAnchor, constant: 20).isActive = true
        weatherHumidityPercentLabel.leadingAnchor.constraint(equalTo: weatherHumidityLabel.trailingAnchor, constant: 5).isActive = true
    }
    
    private func weatherDescriptionLabelConstraints() {
        weatherDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherDescriptionLabel.topAnchor.constraint(equalTo: weatherHumidityLabel.bottomAnchor).isActive = true
        weatherDescriptionLabel.leadingAnchor.constraint(equalTo: weatherCityLabel.leadingAnchor).isActive = true
    }
    
    private func weatherTempLabelConstraints() {
        weatherTempLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherTempLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.7).isActive = true
        weatherTempLabel.topAnchor.constraint(equalTo: weatherCityLabel.topAnchor).isActive = true
        weatherTempLabel.trailingAnchor.constraint(equalTo: weatherImgView.leadingAnchor, constant: -10).isActive = true
    }
    
    private func weatherImgViewConstraints() {
        weatherImgView.translatesAutoresizingMaskIntoConstraints = false
        weatherImgView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1.0).isActive = true
        weatherImgView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3).isActive = true
        weatherImgView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }

}
