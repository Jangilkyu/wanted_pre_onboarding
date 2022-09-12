//
//  WeatherController.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/05.
//

import UIKit

private let WeatherDetailCellId = "WeatherDetailCellId"
class WeatherController: UIViewController {
    
    // MARK: 전국 날씨 정보
    var weatherInfoList: [WeatherInfo] = []
    
    // MARK: 날씨 개수
    var weatherCnt: Int = 0
    
    let weatherTitleLabel: UILabel = {
        let lb = UILabel()
        lb.text = "도시별 현재 날씨"
        lb.font = WeatherFont.Bold.of(size: 30)
        lb.textColor = WeatherColor.darkGray.color
        return lb
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        fetchData()
    }
    
    private func fetchData() {
      let session = URLSession.shared
      let dataTask = session.dataTask(with: WeatherURL.cities.url) {
        data, response, error in
        
        guard error == nil,
              let httpResponse = (response as? HTTPURLResponse),
              httpResponse.statusCode == 200,
              let data = data,
              let decoded = try? JSONDecoder().decode(
                WeatherInfo1.self,
                from: data) else { return }
        
        self.weatherInfoList = decoded.list
        
        DispatchQueue.main.async {
          self.collectionView.reloadData()
        }
      }
      dataTask.resume()
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
    func collectionView(
        _ collectionView: UICollectionView,
        didSelectItemAt indexPath: IndexPath
    ) {
        let selectedWeatherInfoItem = self.weatherInfoList[indexPath.item]
        let weatherVC = WeatherInfoDetailController(selectedWeatherInfoItem)
        navigationController?.pushViewController(weatherVC, animated: true)
    }
}

extension WeatherController: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        return weatherInfoList.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: WeatherDetailCellId,
            for: indexPath) as? WeatherDetailCell else { return UICollectionViewCell() }
            cell.weatherInfo = weatherInfoList[indexPath.item]
        return cell
    }
}

extension WeatherController:
    UICollectionViewDelegateFlowLayout {
    func collectionView(
      _ collectionView: UICollectionView,
      layout collectionViewLayout: UICollectionViewLayout,
      sizeForItemAt indexPath: IndexPath) -> CGSize {
      return CGSize(width: collectionView.frame.width, height: 150)
    }
}
