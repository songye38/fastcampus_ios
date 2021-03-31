import UIKit


//how to make dictionary in Swift
var scoreDic : [String : Int] = ["Jason":80 , "Jay" : 95, "Jake" : 90]
var scoreDic2 : Dictionary<String,Int> = ["Jason" : 80 , "Jay" : 95, "Jake" : 90]


if let score = scoreDic["Jason"] {
    print(score)
}else{
    //score 없음
}
scoreDic["Jason"]
scoreDic["Joon"]

//isEmpty, count
//scoreDic = [:] //빈 딕셔너리로 만들기
scoreDic.isEmpty
scoreDic.count

//기존 사용자 업데이트
scoreDic["Jason"] = 99
scoreDic

//사용자 추가
scoreDic["Jeck"] = 100

//사용자 제거
scoreDic["Jeck"] = nil
scoreDic

//아이템 빼내기
for (name, score) in scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys {
    print(key)
}

print("hello")

//1. 이름, 직업 , 도시에 대해서 본인의 딕셔너리 만들기
// 2. 도시를 부산으로 업데이트 하기
//3. 딕셔너리 받아서 이름과 도시 프린트 하는 함수 만들기

var infoDic : [String:String] = ["name" : "songye", "job":"programmer", "city":"namyangju"]
infoDic["city"] = "Busan"

func printInfo(){
    if let _ = infoDic["name"]{
        print("name : \(infoDic["name"])")
    }else{
        print("no name")
    }
    //print("name : \(infoDic["name"]), city : \(infoDic["city"])")
    
}

printInfo()

var myDic : [String:String] = ["name":"songye", "job": "ios Engineer", "city":"seoul"]
myDic["city"] = "Busan"
myDic

func printNameAndCity(dic : [String:String]){
    if let name = dic["name"], let city = dic["city"]{
        print(name, city)
    }else{
        print("-----> can not find")
    }
}

printNameAndCity(dic : myDic)
