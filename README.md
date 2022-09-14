# wanted_pre_onboarding

## 🎤 프로젝트 소개

WeatherInfoApp은 [https://openweathermap.org/api](openweathermap)에서 제공하는 날씨 데이터 API를 사용하여 진행했습니다.


## 🚌 프로젝트 과정

### **🖥 메인화면**

**첫번째 화면 과제 내용**

- 아래 각 도시의 현재 날씨를 화면에 표시합니다.
    - 필수로 포함해야 하는 정보
        - 도시이름, 날씨 아이콘, 현재기온, 현재습도
            
            > 공주, 광주(전라남도), 구미, 군산, 대구, 대전, 목포, 부산, 서산, 서울, 속초, 수원, 순천, 울산, 익산, 전주, 제주시, 천안, 청주, 춘천
            > 
        - 날씨 아이콘의 경우 API에서 제공하는 아이콘을 활용합니다.
- 첫 번째 화면의 각 도시 정보를 선택하면 두 번째 화면으로 이동합니다.

**🙇🏻‍♂️첫번째 화면 구현에 있어서 고민해본 점 및 과정**

20개의 도시에 대한 정보를 사용자에게 제공하기에 있어서 TableView또는 CollectionView를 사용하여 제공해야겠다는 생각을 하였고, 이번 프로젝트에서는 CollectionView를 사용하기로 했습니다.

**CollectionView를 사용한 이유는?**

TableView와 CollectionView에 가장 큰 차이점은 CollectionView가 cell을 디자인하는 자유도라고 생각합니다.
현재 제 앱은 수직 스크롤로 단순하게 구현하였지만, 앱이 복잡해지고 UX적 측면에서 수평 스크롤이 필요하거나 디자인 수정을 수월하게 커스텀할 수 있기에 CollectionView를 사용하였습니다.

<img width="331" alt="image" src="https://user-images.githubusercontent.com/69107255/190030539-24fa661e-8244-4a73-9d19-6241b467e309.png">

**API 사용에 있어서 어려웠던 점?**

20개 도시에 대한 날씨 정보를 한번에 가져올 수 있는 방법에 대하여 많은 고민과 검색을 하였습니다.

[How to get the data of multiple cities using openweathermap api in angularjs?](https://stackoverflow.com/questions/39053305/how-to-get-the-data-of-multiple-cities-using-openweathermap-api-in-angularjs/72177084#72177084)

[#29번 city List 정리 이슈](https://github.com/Jangilkyu/wanted_pre_onboarding/issues/29)에서 id값을 얻을 수 있었고, 각 지역에 대한 id를 group으로 묶어서 API 콜을 하게 되면 원하는 지역에 날씨 정보를 얻을 수 있었다.

## **fetchData()**

```swift
  private func fetchData() {
     //1. 네트워크를 처리하기 위한 URLSession에 shared 객체를 사용해 session 선언
    let session = URLSession.shared
	  // 1. url 설정 후 URL에 데이터를 요청하는 session.dataTask 작업객체 구현
    let dataTask = session.dataTask(with: WeatherURL.cities.url) {
      // async
      data, response, error in
      // 에러가 없을경우
      guard error == nil,
            // 정상 응답 일 경우
            let httpResponse = (response as? HTTPURLResponse),
            httpResponse.statusCode == 200,
            // JsonDecode
            let data = data,
            let decoded = try? JSONDecoder().decode(
              WeatherInfo1.self,
              from: data) else { return }
      
      self.weatherInfoList = decoded.list
      
      DispatchQueue.main.async {
        self.collectionView.reloadData()
      }
    }
    // 기본적으로 함수 내부는 sync이기 때문에 dataTask.resume()를 호출한다.
    dataTask.resume()
```


**🙇🏻‍♂️두번째 화면 구현에 있어서 고민해본 점 및 과정**

<img width="321" alt="image" src="https://user-images.githubusercontent.com/69107255/190158250-ecbf8e14-b33f-4bd3-b519-bd1cef1c66d8.png">


스토리보드 없이 code base로 레이아웃을 잡기 때문에 두 개의 UIView를 만들어서 관리하였습니다.

**📂[WeatherTopInfoView.swift](https://github.com/Jangilkyu/wanted_pre_onboarding/blob/main/WeatherInfoApp/WeatherInfoApp/Controllers/SubViews/WeatherTopInfoView.swift)**

<img width="249" alt="image" src="https://user-images.githubusercontent.com/69107255/190159033-5d848cdc-5dbc-482b-a833-5358bd39cf05.png">

**📂[WeatherBottomInfoView.swift](https://github.com/Jangilkyu/wanted_pre_onboarding/blob/main/WeatherInfoApp/WeatherInfoApp/Controllers/SubViews/WeatherBottomInfoView.swift)**


<img width="231" alt="스크린샷 2022-09-14 오후 9 57 31" src="https://user-images.githubusercontent.com/69107255/190160095-52a48d0b-88a1-4d05-9c57-e72717637241.png">

# **완성 화면**

![날씨앱화면](https://user-images.githubusercontent.com/69107255/190163916-8241c2d9-0a91-4ed4-af3f-d6d892c172b6.gif)
