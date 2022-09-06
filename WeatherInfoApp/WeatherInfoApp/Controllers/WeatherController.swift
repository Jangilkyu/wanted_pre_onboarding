//
//  WeatherController.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/05.
//

import UIKit

private let WeatherDetailCellId = "WeatherDetailCellId"
class WeatherController: UIViewController {
    
    let weatherTitleLabel: UILabel = {
        let lb = UILabel()
        lb.text = "도시별 현재 날씨"
        lb.font = WeatherFont.Bold.of(size: 30)
        lb.textColor = WeatherColor.darkGray.color
        return lb
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        view.backgroundColor = .white
        addViews()
        setConstraints()
        setConfigureCollectionView()
    }
    
    private func addViews() {
        view.addSubview(weatherTitleLabel)
        view.addSubview(collectionView)
    }
    
    private func setConstraints() {
        weatherTitleLabelConstraints()
        collectionViewConstraints()
    }
    
    private func setConfigureCollectionView() {
        collectionView.register(WeatherDetailCell.self, forCellWithReuseIdentifier: WeatherDetailCellId)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    // MARK: - Constraints
    private func weatherTitleLabelConstraints() {
        weatherTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherTitleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        weatherTitleLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        weatherTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        weatherTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    private func collectionViewConstraints() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: weatherTitleLabel.bottomAnchor, constant: 10).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
    }
}

extension WeatherController: UICollectionViewDelegate {
    
}

extension WeatherController: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        return 5
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: WeatherDetailCellId,
            for: indexPath) as? WeatherDetailCell else { return UICollectionViewCell() }
        return cell
    }
}
