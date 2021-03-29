import UIKit

var str = "Hello, playground"

//function and option

//1. function
/*
 기능을 수행하는 코드 블럭
 method : Object에 속해서 기능을 수행함 object.methodName()
 function : 독자적으로 수행됨 functionName()
 */

func printName(){
    print("songye")
}

printName()


//example 2
//param 1
//숫자를 받아서 10을 곱해서 출력하는 함수
func printMultipleOfTen(value : Int){
    print("value is \(value * 10)")
}

printMultipleOfTen(value: 10)

//param2개
//물건값과 개수를 받아서 전체 금액을 출력하는 함수
//func printTotalPrice(price : Int, count : Int){
//    print("total value is \(price * count)")
//}

//func printTotalPrice(_ price : Int, _ count : Int){
//    print("total value is \(price * count)")
//}

func printTotalPrice(가격 price : Int, 갯수 count : Int){
    print("total value is \(price * count)")
}

printTotalPrice(가격: 1000, 갯수: 30)
//printTotalPrice(1500,5)
