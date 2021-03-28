import UIKit
import Foundation // 근간이 되는 녀석들

var str = "Hello, playground"


print("while")
var i = 10
while i<10{
    print(i)
    
    if i==5{
        break
    }
    i += 1
}

print("repeat")
var num = 10
repeat{
    print(num)
    num += 1
}while i<10

//for loop
let closedRange = 0...10       //0~10
let halfClosedRange = 0..<10   //0~9

var sum = 0
for i in halfClosedRange {
    print("------>\(i)")
    sum += i
}

print("total sum is \(sum)")

var sinValue : CGFloat = 0

for i in closedRange {
    sinValue = sin(CGFloat.pi / 4 * CGFloat(i))
}


let name = "songye park"

for _ in closedRange {  //쓰지 않는 변수 같은 경우는 _로 대체 가능하다.
    print(name)
}

for i in closedRange {
    if i % 2 == 0 {
        print(i)
    }
}

print("plus where")
for i in closedRange where i % 2 == 0{
    print(i)
}

//3만 빼고 출력하고 싶을 때

for i in closedRange {
    if i == 3 {
        continue //continue가 나오면 밑에는 무시하고 다시 한바퀴 돌아라
    }
    print(i)
}

//for loop를 중첩으로 사용하기

for i in closedRange {
    for j in closedRange {
        print("\(i) X \(j) = \(i * j)")
    }
}

//switch

let num1 = 10
switch num1 {
case 0:
    print("--> 0 입니다.")
case 0...10:
    print("0부터 10사이 입니다.")
case 10:
    print("--> 10 입니다.")
default :
    print("나머지입니다. ")
}
