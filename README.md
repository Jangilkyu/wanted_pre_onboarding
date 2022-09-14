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


