# wanted_pre_onboarding

## ๐ค ํ๋ก์ ํธ ์๊ฐ

WeatherInfoApp์ [https://openweathermap.org/api](openweathermap)์์ ์ ๊ณตํ๋ ๋ ์จ ๋ฐ์ดํฐ API๋ฅผ ์ฌ์ฉํ์ฌ ์งํํ์ต๋๋ค.


- [์ด์ ๊ด๋ฆฌ](https://github.com/Jangilkyu/wanted_pre_onboarding/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc)

- ๋ธ๋์น
   - main
   - develop
   - feat/์ด์๋ฒํธ/๊ตฌํํ  ๋ด์ฉ
   
## Usage

AppKey๋ WeatherInfo.plist์ ๋ฑ๋กํ์ฌ์ผ ์ฌ์ฉ์ด ๊ฐ๋ฅํฉ๋๋ค.

<img width="830" alt="แแณแแณแแตแซแแฃแบ 2022-09-14 แแฉแแฎ 10 31 08" src="https://user-images.githubusercontent.com/69107255/190167578-8415cf89-e1ea-4af7-8232-6e4c0f80c33b.png">

## ๐ ํ๋ก์ ํธ ๊ณผ์ 

### **๐ฅ ๋ฉ์ธํ๋ฉด**

**์ฒซ๋ฒ์งธ ํ๋ฉด ๊ณผ์  ๋ด์ฉ**

- ์๋ ๊ฐ ๋์์ ํ์ฌ ๋ ์จ๋ฅผ ํ๋ฉด์ ํ์ํฉ๋๋ค.
    - ํ์๋ก ํฌํจํด์ผ ํ๋ ์ ๋ณด
        - ๋์์ด๋ฆ, ๋ ์จ ์์ด์ฝ, ํ์ฌ๊ธฐ์จ, ํ์ฌ์ต๋
            
            > ๊ณต์ฃผ, ๊ด์ฃผ(์ ๋ผ๋จ๋), ๊ตฌ๋ฏธ, ๊ตฐ์ฐ, ๋๊ตฌ, ๋์ , ๋ชฉํฌ, ๋ถ์ฐ, ์์ฐ, ์์ธ, ์์ด, ์์, ์์ฒ, ์ธ์ฐ, ์ต์ฐ, ์ ์ฃผ, ์ ์ฃผ์, ์ฒ์, ์ฒญ์ฃผ, ์ถ์ฒ
            > 
        - ๋ ์จ ์์ด์ฝ์ ๊ฒฝ์ฐ API์์ ์ ๊ณตํ๋ ์์ด์ฝ์ ํ์ฉํฉ๋๋ค.
- ์ฒซ ๋ฒ์งธ ํ๋ฉด์ ๊ฐ ๋์ ์ ๋ณด๋ฅผ ์ ํํ๋ฉด ๋ ๋ฒ์งธ ํ๋ฉด์ผ๋ก ์ด๋ํฉ๋๋ค.

**๐๐ปโโ๏ธ์ฒซ๋ฒ์งธ ํ๋ฉด ๊ตฌํ์ ์์ด์ ๊ณ ๋ฏผํด๋ณธ ์  ๋ฐ ๊ณผ์ **

20๊ฐ์ ๋์์ ๋ํ ์ ๋ณด๋ฅผ ์ฌ์ฉ์์๊ฒ ์ ๊ณตํ๊ธฐ์ ์์ด์ TableView๋๋ CollectionView๋ฅผ ์ฌ์ฉํ์ฌ ์ ๊ณตํด์ผ๊ฒ ๋ค๋ ์๊ฐ์ ํ์๊ณ , ์ด๋ฒ ํ๋ก์ ํธ์์๋ CollectionView๋ฅผ ์ฌ์ฉํ๊ธฐ๋ก ํ์ต๋๋ค.

**CollectionView๋ฅผ ์ฌ์ฉํ ์ด์ ๋?**

TableView์ CollectionView์ ๊ฐ์ฅ ํฐ ์ฐจ์ด์ ์ CollectionView๊ฐ cell์ ๋์์ธํ๋ ์์ ๋๋ผ๊ณ  ์๊ฐํฉ๋๋ค.
ํ์ฌ ์  ์ฑ์ ์์ง ์คํฌ๋กค๋ก ๋จ์ํ๊ฒ ๊ตฌํํ์์ง๋ง, ์ฑ์ด ๋ณต์กํด์ง๊ณ  UX์  ์ธก๋ฉด์์ ์ํ ์คํฌ๋กค์ด ํ์ํ๊ฑฐ๋ ๋์์ธ ์์ ์ ์์ํ๊ฒ ์ปค์คํํ  ์ ์๊ธฐ์ CollectionView๋ฅผ ์ฌ์ฉํ์์ต๋๋ค.

<img width="331" alt="image" src="https://user-images.githubusercontent.com/69107255/190030539-24fa661e-8244-4a73-9d19-6241b467e309.png">

**API ์ฌ์ฉ์ ์์ด์ ์ด๋ ค์ ๋ ์ ?**

20๊ฐ ๋์์ ๋ํ ๋ ์จ ์ ๋ณด๋ฅผ ํ๋ฒ์ ๊ฐ์ ธ์ฌ ์ ์๋ ๋ฐฉ๋ฒ์ ๋ํ์ฌ ๋ง์ ๊ณ ๋ฏผ๊ณผ ๊ฒ์์ ํ์์ต๋๋ค.

[How to get the data of multiple cities using openweathermap api in angularjs?](https://stackoverflow.com/questions/39053305/how-to-get-the-data-of-multiple-cities-using-openweathermap-api-in-angularjs/72177084#72177084)

[#29๋ฒ city List ์ ๋ฆฌ ์ด์](https://github.com/Jangilkyu/wanted_pre_onboarding/issues/29)์์ id๊ฐ์ ์ป์ ์ ์์๊ณ , ๊ฐ ์ง์ญ์ ๋ํ id๋ฅผ group์ผ๋ก ๋ฌถ์ด์ API ์ฝ์ ํ๊ฒ ๋๋ฉด ์ํ๋ ์ง์ญ์ ๋ ์จ ์ ๋ณด๋ฅผ ์ป์ ์ ์์๋ค.

## **fetchData()**

```swift
  private func fetchData() {
     //1. ๋คํธ์ํฌ๋ฅผ ์ฒ๋ฆฌํ๊ธฐ ์ํ URLSession์ shared ๊ฐ์ฒด๋ฅผ ์ฌ์ฉํด session ์ ์ธ
    let session = URLSession.shared
	  // 1. url ์ค์  ํ URL์ ๋ฐ์ดํฐ๋ฅผ ์์ฒญํ๋ session.dataTask ์์๊ฐ์ฒด ๊ตฌํ
    let dataTask = session.dataTask(with: WeatherURL.cities.url) {
      // async
      data, response, error in
      // ์๋ฌ๊ฐ ์์๊ฒฝ์ฐ
      guard error == nil,
            // ์ ์ ์๋ต ์ผ ๊ฒฝ์ฐ
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
    // ๊ธฐ๋ณธ์ ์ผ๋ก ํจ์ ๋ด๋ถ๋ sync์ด๊ธฐ ๋๋ฌธ์ dataTask.resume()๋ฅผ ํธ์ถํ๋ค.
    dataTask.resume()
```


**๐๐ปโโ๏ธ๋๋ฒ์งธ ํ๋ฉด ๊ตฌํ์ ์์ด์ ๊ณ ๋ฏผํด๋ณธ ์  ๋ฐ ๊ณผ์ **

<img width="321" alt="image" src="https://user-images.githubusercontent.com/69107255/190158250-ecbf8e14-b33f-4bd3-b519-bd1cef1c66d8.png">


์คํ ๋ฆฌ๋ณด๋ ์์ด code base๋ก ๋ ์ด์์์ ์ก๊ธฐ ๋๋ฌธ์ ๋ ๊ฐ์ UIView๋ฅผ ๋ง๋ค์ด์ ๊ด๋ฆฌํ์์ต๋๋ค.

**๐[WeatherTopInfoView.swift](https://github.com/Jangilkyu/wanted_pre_onboarding/blob/main/WeatherInfoApp/WeatherInfoApp/Controllers/SubViews/WeatherTopInfoView.swift)**

<img width="249" alt="image" src="https://user-images.githubusercontent.com/69107255/190159033-5d848cdc-5dbc-482b-a833-5358bd39cf05.png">

**๐[WeatherBottomInfoView.swift](https://github.com/Jangilkyu/wanted_pre_onboarding/blob/main/WeatherInfoApp/WeatherInfoApp/Controllers/SubViews/WeatherBottomInfoView.swift)**


<img width="231" alt="แแณแแณแแตแซแแฃแบ 2022-09-14 แแฉแแฎ 9 57 31" src="https://user-images.githubusercontent.com/69107255/190160095-52a48d0b-88a1-4d05-9c57-e72717637241.png">

# **์์ฑ ํ๋ฉด**

![แแกแฏแแตแแขแธแแชแแงแซ](https://user-images.githubusercontent.com/69107255/190163916-8241c2d9-0a91-4ed4-af3f-d6d892c172b6.gif)
