import UIKit

var str = "Hello, playground"
//값을 갖고 있지 않는 경우
//Nil로 없다는 걸 표현한다.

var carName : String?  //값이 있을수도 있고 없을수도 있다.
carName = "땡크"

//간단한 과제
//여러분이 최애하는 영화배우의 이름을 담는 변수를 만들어보세요.
var myFavoriteMovieActor : String? = nil
let num = Int("10")


//1. forced unwrapping -> 억지로 박스 까보기
//2. optional binding ( if let) -> 부드럽게 박스 까보자 1탄
//3. optional binding (guard) -> 부드럽게 박스 까보자 2탄
//4. Nil coalescing -> 박스를 까봤더니 값이 없으면 디폴트 값을 줘보자

//carName = nil
//print(carName!) //value만 가져오기

//박스 안에 값이 없는데 억지로 까서 값을 보려고 하는경우 에러가 난다.

if let unwrappedCarName = carName { //nil이 아닌 경우
    print(unwrappedCarName)
}else{ //nil인 경우
    print("carName 없다.")
}

func printParsedInt(from : String){
    if let parsedInt = Int(from){
        print(parsedInt)
    }else{
        print("Int로 컨버팅 안되네요")
    }
}

//func printParsedInt(from : String){
//    guard let parsedInt = Int(from) else{
//        print("int로 컨버팅 안된다....")
//        return
//    }
//    print(parsedInt)
//}

printParsedInt(from: "10하하하하")


let myCarName = carName ?? "모델s" //만약 nil이면 기본적으로 디폴트값으로 넣어주겠다.


//도전과제
/*
 1. 최애 음식 이름을 담는 변수 작성 String?
 2. 그것을 옵셔널 바인딩을 이용해서 값을 확인해보기
 3. 닉네임을 받아서 출력하는 함수 만들기 (입력 파라미터는 string? 이다.
 */

//1.
var myFavoriteFood : String? = "nil"
print(String(myFavoriteFood!))

func printNickName(_ name : String?){
    if let nickname  = name{
        print(nickname)
    }else{
        print("이름이 없네요.")
    }
}

printNickName("성이")
if let foodName = myFavoriteFood {
    print(foodName)
}else{
    print("없다.")
}

